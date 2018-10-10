<%-- 
    Document   : frm_TipoCambio
    Created on : 10-oct-2018, 14:57:07
    Author     : JOSEPH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="link.jsp"></jsp:include>
        <title>TIPO DE CAMBIO</title>
        <script>
            $(document).ready(function () {
                $("#btnTipoCambio").click(function () {
                    var moneda1 = $("#moneda1").val();
                    var tipoMoneda1 = $("#tipoMoneda1").val();
                    var tipoMoneda2 = $("#tipoMoneda2").val();


                    switch (tipoMoneda1) {
                        case "dolares":
                            var dolares = 2.95;
                            resultado1 = moneda1 * dolares;
                            break;
                        case "euros":
                            var euros = 3.50;
                            resultado1 = moneda1 * euros;
                            break;
                        case "yen":
                            var yen = 4.50;
                            resultado1 = moneda1 * yen;
                            break;
                        case "sol":
                            var sol = 1.0;
                            resultado1 = moneda1 * sol;
                    }

                    switch (tipoMoneda2) {
                        case "dolares":
                            var dolares = 2.95;
                            var resultado2 = dolares;
                            break;
                        case "euros":
                            var euros = 3.50;
                            var resultado2 = euros;
                            break;
                        case "yen":
                            var yen = 4.50;
                            var resultado2 = yen;
                            break;
                        case "sol":
                            var sol = 1.0;
                            var resultado2 = sol;
                            break;
                    }
                    
                    resultado_final = resultado1 * resultado2;

                    if ($("#salida").hasClass("d-none")) {
                        $("#salida").removeClass("d-none");
                    }

                    $("#r1").html("Cambio es: " + resultado_final);
                });
            });
        </script>
    </head>
    <body>
        <div class="container">
            <div class="card">
                <div class="card-header bg-danger text-white">
                    TIPO DE CAMBIO
                </div>
                <div class="card-body">
                    <form>
                        <div class="form-group">
                            <label>* DE :</label>
                            <br/>
                            <label>Selecciona tipo de moneda:</label>
                            <select id="tipoMoneda1">
                                <option value="dolares">Dólares</option>
                                <option value="euros">Euros</option>
                                <option value="yen">Yen</option>
                                <option value="sol">Sol peruano</option>
                            </select>
                            <input type="text" id="moneda1" placeholder="Ingresa un monto...">
                        </div>
                        <div class="form-group">
                            <label>* A :</label>
                            <br/>
                            <label>Selecciona tipo de moneda:</label>
                            <select id="tipoMoneda2">
                                <option value="dolares">Dólares</option>
                                <option value="euros">Euros</option>
                                <option value="yen">Yen</option>
                                <option value="sol">Sol peruano</option>
                            </select>
                        </div>
                        <button type="button" id="btnTipoCambio">Ver cambio</button>
                    </form>
                </div>
            </div>
            <br/>
            <div class="card d-none" id="salida">
                <div class="card-header bg-danger text-white">
                    RESULTADOS DE TIPO DE CAMBIO
                </div>
                <div class="card-body">
                    <p id="r1"></p>
                </div>
            </div>
        </div>
    </body>
</html>
