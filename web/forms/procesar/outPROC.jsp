<%-- 
    Document   : outPROC
    Created on : May 2, 2017, 11:59:53 AM
    Author     : Mauricio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.invalidate();
    response.sendRedirect("../../index.jsp");
%>
