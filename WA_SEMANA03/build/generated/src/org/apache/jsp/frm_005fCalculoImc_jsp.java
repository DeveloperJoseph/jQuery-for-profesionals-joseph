package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class frm_005fCalculoImc_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>CALCULO IMC</title>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "link.jsp", out, false);
      out.write("\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function () {\n");
      out.write("                window.alert(\"Fecha de ingreso: \" + Date());\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function () {\n");
      out.write("                $(\"#btnCalcular\").click(function () {\n");
      out.write("                    var peso = $(\"#txtpeso\").val();\n");
      out.write("                    var talla = $(\"#txttalla\").val();\n");
      out.write("                    talla /= 100;\n");
      out.write("                    var resultado = peso / (talla * talla);\n");
      out.write("\n");
      out.write("                    var clasificacion = \"\";\n");
      out.write("                    switch (resultado) {\n");
      out.write("                        case resultado < 18.5:\n");
      out.write("                            clasificacion = \"Bajo de peso\";\n");
      out.write("                            break;\n");
      out.write("                        case resultado < 24.9:\n");
      out.write("                            clasificacion = \"Peso normal\";\n");
      out.write("                            break;\n");
      out.write("                        case resultado < 29.9:\n");
      out.write("                            clasificacion = \"Sobre peso\";\n");
      out.write("                            break;\n");
      out.write("                        case resultado < 34.5:\n");
      out.write("                            clasificacion = \"Obesidad grado 1\";\n");
      out.write("                            break;\n");
      out.write("                        case resultado < 39.9:\n");
      out.write("                            clasificacion = \"Obesidad grado 2\";\n");
      out.write("                            break;\n");
      out.write("                        case resultado > 40:\n");
      out.write("                            clasificacion = \"Obesidad grado 3\";\n");
      out.write("                            break;\n");
      out.write("                    }\n");
      out.write("\n");
      out.write("                    if ($(\"#divRespuesta\").hasClass(\"d-none\")) {\n");
      out.write("                        $(\"#divRespuesta\").removeClass(\"d-none\");\n");
      out.write("                    }\n");
      out.write("\n");
      out.write("                    $(\"#lblRespuesta\").html(\"Su índice de masa corporal es: \"+resultado);\n");
      out.write("                    $(\"#lblClasificacion\").html(\"Su clasificación es: \"+clasificacion);\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"card \">\n");
      out.write("            <div class=\"card-header bg-primary text-white\">\n");
      out.write("                CALCULO DE IMC\n");
      out.write("            </div>\n");
      out.write("            <div class=\"card-body\">\n");
      out.write("                <form>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label for=\"exampleInputEmail1\">PESO (KG)</label>\n");
      out.write("                        <input type=\"text\" class=\"form-control\"\n");
      out.write("                               id=\"txtpeso\" \n");
      out.write("                               placeholder=\"Ingresa tu peso (kg)\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label for=\"exampleInputPassword1\">TALLA (CM)</label>\n");
      out.write("                        <input type=\"text\" class=\"form-control\" \n");
      out.write("                               id=\"txttalla\" placeholder=\"Ingresa tu talla(cm)\">\n");
      out.write("                    </div>\n");
      out.write("                    <button type=\"button\" class=\"btn btn-primary\"\n");
      out.write("                            id=\"btnCalcular\">Diagnosticar</button>\n");
      out.write("                    <a href=\"frm_Opciones.jsp\"\n");
      out.write("                       class=\"btn badge-danger\">Regresar</a>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"card d-none\" id=\"divRespuesta\">\n");
      out.write("            <div class=\"card-header bg-success text-white\">\n");
      out.write("                Resultado médico de su masa corporal:\n");
      out.write("            </div>\n");
      out.write("            <div class=\"card-body\">\n");
      out.write("                <p class=\"card-text\" id=\"lblRespuesta\"></p>\n");
      out.write("                <p class=\"card-text\" id=\"lblClasificacion\"></p>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
