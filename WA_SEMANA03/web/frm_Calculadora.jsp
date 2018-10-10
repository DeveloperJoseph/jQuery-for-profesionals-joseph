<%-- 
    Document   : frm_Calculadora
    Created on : 10-oct-2018, 13:37:09
    Author     : JOSEPH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="link.jsp"></jsp:include>
        <title>CALCULADORA BÁSICA</title>
        <script>
            $(document).ready(function () {
                $("#btnCalcular").click(function () {
                    var n1 = $("#n1").val();
                    var n2 = $("#n2").val();
                    var option = $("#operacion").val();
                    var msg = "";
                    var resultado;

                    if (option === "suma") {
                        resultado = (parseInt(n1) + parseInt(n2));
                        msg = "Su operación suma, fue exitosa";
                    } else if (option === "resta") {
                        resultado = (parseInt(n1) - parseInt(n2));
                        msg = "Su operación resta, fue exitosa";
                    } else if (option === "multi") {
                        resultado = (parseInt(n1) * parseInt(n2));
                        msg = "Su operación multiplicacion, fue exitosa";
                    } else if (option === "divi") {
                        resultado = (parseInt(n1) / parseInt(n2));
                        msg = "Su operación división, fue exitosa";
                    } else if (option === "residuo") {
                        resultado = (parseInt(n1) % parseInt(n2));
                        msg = "Su operacion residuo, fue exitosa";
                    }



                    if ($("#salidaResultado").hasClass("d-none")) {
                        $("#salidaResultado").removeClass("d-none");
                    }

                    $("#resultado").html("Resultado de la operación seleccionada es: " + resultado + ".");
                    $("#msg").html("Mensaje de aplicativo: '" + msg + "'.");
                });
            });
        </script>
    </head>
    <body>
        <div class="container">
            <div class="card">
                <div class="card-header bg-primary text-white">
                    CALCULADORA BÁSICA
                </div>
                <div class="card-body">
                    <form>
                        <div class="form-group">
                            <label>Escoge una opción aritmética</label>
                            <select id="operacion" name="operacion">
                                <option value="suma">Suma</option>
                                <option value="resta">Resta</option>
                                <option value="multi">Multiplicación</option>
                                <option value="divi">División</option>
                                <option value="residuo">Residuo</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Número 1</label>
                            <input type="text" class="form-control"
                                   id="n1" placeholder="Ingresa el número 1" required>
                        </div>
                        <div class="form-group">
                            <label>Número 2</label>
                            <input type="text" class="form-control"
                                   id="n2" placeholder="Ingresa el número 2" required>
                        </div>
                        <button type="button" class="btn btn-danger" id="btnCalcular">Calcular</button>
                        <a href="frm_Opciones.jsp" class="btn btn-danger">Regresar</a>
                    </form>
                </div>
            </div>
            <br/>
            <div class="card d-none" id="salidaResultado">
                <div class="card-header bg-primary text-white">
                    Resultado
                </div>
                <div class="card-body">
                    <p class="card-text" id="resultado"></p>
                    <p  class="card-text" id="msg"></p>
                </div>
            </div>
        </div>
    </body>     
</html>
