<%-- 
    Document   : emailPROC
    Created on : May 2, 2017, 10:43:47 AM
    Author     : Mauricio
--%>
<%@page import="Objeto.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String email = request.getParameter("email");
    String pw = request.getParameter("password");
    Persona persona = new Persona();
    persona.setEmail(email);
    persona.setPassword(pw);
    session.setAttribute("persona", persona);
    System.out.println(email);
    
    response.sendRedirect("../mailFORM.jsp");
%>