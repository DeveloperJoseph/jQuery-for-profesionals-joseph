<%-- 
    Document   : frm_CalculoImc
    Created on : 06/09/2018, 10:11:35 PM
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CALCULO IMC</title>
        <jsp:include page="link.jsp"></jsp:include>
        <script>
            $(document).ready(function () {
                window.alert("Fecha de ingreso: " + Date());
            });
        </script>
        <script>
            $(document).ready(function () {
                $("#btnCalcular").click(function () {
                    var peso = $("#txtpeso").val();
                    var talla = $("#txttalla").val();
                    talla = talla / 100;
                    var resultado = peso / (talla * talla);
                    
                    var clasificacion = "";
                   
                    switch (resultado) {
                        case resultado < 18.5:
                            clasificacion = "Bajo de peso";
                            break;
                        case resultado < 24.9:
                            clasificacion = "Peso normal";
                            break;
                        case resultado < 29.9:
                            clasificacion = "Sobre peso";
                            break;
                        case resultado < 34.5:
                            clasificacion = "Obesidad grado 1";
                            break;
                        case resultado < 39.9:
                            clasificacion = "Obesidad grado 2";
                            break;
                        case resultado > 40:
                            clasificacion = "Obesidad grado 3";
                            break;
                        default :
                            clasificacion = "Acuda a un médico";
                    }

                    if ($("#divRespuesta").hasClass("d-none")) {
                        $("#divRespuesta").removeClass("d-none");
                    }

                    $("#lblRespuesta").html("Su índice de masa corporal es: " + resultado);
                    $("#lblClasificacion").html("Su clasificación es: " + clasificacion);
                });
            });
        </script>
    </head>
    <body>
        <div class="card ">
            <div class="card-header bg-primary text-white">
                CALCULO DE IMC
            </div>
            <div class="card-body">
                <form>
                    <div class="form-group">
                        <label for="exampleInputEmail1">PESO (KG)</label>
                        <input type="text" class="form-control"
                               id="txtpeso" 
                               placeholder="Ingresa tu peso (kg)">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">TALLA (CM)</label>
                        <input type="text" class="form-control" 
                               id="txttalla" placeholder="Ingresa tu talla(cm)">
                    </div>
                    <button type="button" class="btn btn-primary"
                            id="btnCalcular">Diagnosticar</button>
                    <a href="frm_Opciones.jsp"
                       class="btn badge-danger">Regresar</a>
                </form>
            </div>
        </div>

        <div class="card d-none" id="divRespuesta">
            <div class="card-header bg-success text-white">
                Resultado médico de su masa corporal:
            </div>
            <div class="card-body">
                <p class="card-text" id="lblRespuesta"></p>
                <p class="card-text" id="lblClasificacion"></p>
            </div>
        </div>
    </body>
</html>
