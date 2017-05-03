package org.apache.jsp.forms;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class mailFORM_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../plantilla/header.jsp", out, false);
      out.write("\n");
      out.write("<head>\n");
      out.write("    <title>ufpsYET - Email Service</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <form action=\"procesar/sheetPROC.jsp\" id=\"borrador\" enctype=\"multipart/form-data\" method=\"post\">\n");
      out.write("            <div class=\"file-field input-field\">\n");
      out.write("                <div class=\"btn\">\n");
      out.write("                    <span>Excel Sheet</span>\n");
      out.write("                    <input type=\"file\" id=\"file\" name=\"file\" accept=\".xls\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"file-path-wrapper\">\n");
      out.write("                    <input class=\"file-path validate\" type=\"text\">\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"asunto\">\n");
      out.write("                <input type=\"text\" id=\"asunto\" name=\"asunto\" placeholder=\"ASUNTO\" required>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"area\">\n");
      out.write("                <textarea class=\"materialize-textarea\" name=\"editor\" id=\"editor\"></textarea>\n");
      out.write("            </div>\n");
      out.write("            <br>\n");
      out.write("            <div>\n");
      out.write("                <button type=\"submit\" class=\"waves-effect waves-light btn modal-action modal-close\">Continuar</button> \n");
      out.write("                <a href=\"procesar/outPROC.jsp\" class=\"waves-effect waves-light btn modal-action modal-close\">Salir</a>\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
