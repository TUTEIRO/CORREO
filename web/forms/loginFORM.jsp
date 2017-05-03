<%-- 
    Document   : index
    Created on : Apr 29, 2017, 11:10:19 AM
    Author     : Mauricio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../plantilla/header.jsp"/>
<head>
    <title>ufpsYET - Email Service</title>
</head>
<body>
    <div class="container">
        <form action="procesar/emailPROC.jsp">
            <div id="user">
                <input type="text" id="email" name="email" placeholder="EMAIL" required>
            </div>
            <div id="pw">
                <input type="password" id="password" name="password" placeholder="PASSWORD" required>
            </div>
            <div>
                <button type="submit" class="waves-effect waves-light btn modal-action modal-close">Continuar</button>
            </div>
        </form>
    </div>
</body>