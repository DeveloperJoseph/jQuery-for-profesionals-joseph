package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class frm_005fOpciones_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>JSP Page</title>       \n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "link.jsp", out, false);
      out.write("\n");
      out.write("            <script>\n");
      out.write("                $(document).ready(function () {\n");
      out.write("                    $(\"#div-alert\").click(function () {\n");
      out.write("                        window.alert(\"This systems is controler\");\n");
      out.write("                    });\n");
      out.write("                });\n");
      out.write("            </script>\n");
      out.write("\n");
      out.write("        </head>\n");
      out.write("        <body>\n");
      out.write("        ");

            String[] nameOption = {"Caculo IMC", "Calculadora Cientifica",
                "Tipo Cambio"};
            String[] urlOptions = {"frm_CalculoImc.jsp", "frm_Calculadora.jsp",
                "frm_TipoCambio.jsp"};
        
      out.write("\n");
      out.write("        <div class=\"card\">\n");
      out.write("            <div id=\"div-alert\" class=\"card-header bg-success text-white\">\n");
      out.write("                OPCIONES DEL SISTEMA\n");
      out.write("            </div>\n");
      out.write("            <div class=\"card-body\">\n");
      out.write("                <ul class=\"list-group\">\n");
      out.write("                    ");

                        for (int i = 0; i < nameOption.length; i++) {
                    
      out.write("\n");
      out.write("                    <li class=\"list-group-item\">\n");
      out.write("                        <a href=\"");
      out.print(urlOptions[i]);
      out.write('"');
      out.write('>');
      out.print(nameOption[i]);
      out.write("</a></li>\n");
      out.write("                        ");

                            }
                        
      out.write("\n");
      out.write("                </ul>\n");
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
