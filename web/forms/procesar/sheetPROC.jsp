<%-- 
    Document   : sheetFORM
    Created on : Apr 29, 2017, 11:34:11 AM
    Author     : Mauricio
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.File"%>
<%@page import="Objeto.Persona"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="prueba.correo.PruebaCorreo"%>
<%@page import="prueba.excel.PruebaExcel"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%
    Persona persona = (Persona) session.getAttribute("persona");
    String editorText = null;
    String asunto = null;
    String user = persona.getEmail();
    String pw = persona.getPassword();
    System.out.println("El usuario es.." + user);
    File fichero = null;
    FileItemFactory factory = new DiskFileItemFactory();
    ServletFileUpload upload = new ServletFileUpload(factory);
    String rutaServer = getServletContext().getRealPath("/");
    rutaServer += "/files/";
    String url = null;
    List items = upload.parseRequest(request);
    for (Object item : items) {
        FileItem uploaded = (FileItem) item;
        if (!uploaded.isFormField()) {
            url = "/files/" + uploaded.getName();
            fichero = new File(rutaServer, uploaded.getName());
            uploaded.write(fichero);
        } else {
            String key = uploaded.getFieldName();
            String valor = uploaded.getString();
            if (key.equalsIgnoreCase("editor")) {
                editorText = valor;
            } else if (key.equalsIgnoreCase("asunto")) {
                asunto = valor;
            }
        }
    }
    char[] chars = editorText.toCharArray();
    ArrayList<Integer> posiciones = new ArrayList();
    for (int i = 0; i < chars.length; i++) {
        if (chars[i] == '%') {
            posiciones.add(i);
        }
    }
    ArrayList<String> subcadenas = new ArrayList();
    for (int i = 0; i < posiciones.size(); i++) {
        subcadenas.add(editorText.substring(posiciones.get(i) + 1, posiciones.get(i + 1)));
        i++;
    }
    String[] cadenas = new String[subcadenas.size()];
    for (int x = 0; x < subcadenas.size(); x++) {
        cadenas[x] = subcadenas.get(x);
        System.out.println(x);
    }

    PruebaExcel excel = new PruebaExcel();
    PruebaCorreo correo = new PruebaCorreo();
    correo.login(user, pw);
    excel.subirArchivo(fichero);
    int colum = excel.obtenerColumnas();
    int fila = excel.obtenertFilas();

    excel.obtenerOrden(cadenas, colum);
    int count = 0;
    for (String cc : cadenas) {
        editorText = editorText.replaceFirst("%" + cc + "%", count + "");
        System.out.println("hola = " + editorText);
        count++;
    }
    try {
        for (int x = 1; x <= fila; x++) {
            String[] pal = excel.leerFila(x);
            String texto = editorText;
            int y = 0;
            for (; y < pal.length; y++) {
                texto = texto.replace("$" + y, pal[y]);

            }

            correo.enviar(excel.obtenerCelda(x, colum), asunto, texto);
        }
    } catch (Exception ex) {

    }
%>

<%response.sendRedirect("../mailFORM.jsp");%>