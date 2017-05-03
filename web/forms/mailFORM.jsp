<%-- 
    Document   : mailFORM
    Created on : May 2, 2017, 10:34:16 AM
    Author     : Mauricio
--%>

<jsp:include page="../plantilla/header.jsp"/>
<head>
    <title>ufpsYET - Email Service</title>
</head>
<body>
    <div class="container">
        <form action="procesar/sheetPROC.jsp" id="borrador" enctype="multipart/form-data" method="post">
            <div class="file-field input-field">
                <div class="btn">
                    <span>Excel Sheet</span>
                    <input type="file" id="file" name="file" accept=".xls">
                </div>
                <div class="file-path-wrapper">
                    <input class="file-path validate" type="text">
                </div>
            </div>
            <div id="asunto">
                <input type="text" id="asunto" name="asunto" placeholder="ASUNTO" required>
            </div>
            <div id="area">
                <textarea class="materialize-textarea" name="editor" id="editor"></textarea>
            </div>
            <br>
            <div>
                <button type="submit" onclick="myAlert()" class="waves-effect waves-light btn modal-action modal-close">Enviar</button> 
                <a href="procesar/outPROC.jsp" class="waves-effect waves-light btn modal-action modal-close">Salir</a>
            </div>
        </form>
    </div>
</body>

<script>
    function myAlert() {
        alert("Enviando correo... Gracias por utilizar nuestro servicio");
    }
</script>
