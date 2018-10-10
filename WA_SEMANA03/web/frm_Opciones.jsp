<%-- 
    Document   : frm_Opciones
    Created on : 06/09/2018, 09:42:57 PM
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>       
        <jsp:include page="link.jsp"></jsp:include>
            <script>
                $(document).ready(function () {
                    $("#div-alert").click(function () {
                        window.alert("This systems is controler");
                    });
                });
            </script>

        </head>
        <body>
        <%
            String[] nameOption = {"Caculo IMC", "Calculadora Cientifica",
                "Tipo Cambio"};
            String[] urlOptions = {"frm_CalculoImc.jsp", "frm_Calculadora.jsp",
                "frm_TipoCambio.jsp"};
        %>
        <div class="card">
            <div id="div-alert" class="card-header bg-success text-white">
                OPCIONES DEL SISTEMA
            </div>
            <div class="card-body">
                <ul class="list-group">
                    <%
                        for (int i = 0; i < nameOption.length; i++) {
                    %>
                    <li class="list-group-item">
                        <a href="<%=urlOptions[i]%>"><%=nameOption[i]%></a></li>
                        <%
                            }
                        %>
                </ul>
            </div>
        </div>
    </body>
</html>
