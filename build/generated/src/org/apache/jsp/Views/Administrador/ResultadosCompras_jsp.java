package org.apache.jsp.Views.Administrador;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ResultadosCompras_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.apache.jasper.runtime.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
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
      _jspx_resourceInjector = (org.apache.jasper.runtime.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"../../Resources/css/Formulario/Formulario.css\" />\n");
      out.write("        <link href=\"../../Resources/css/index.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"../../Resources/css/Tablas/TablaProductos.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <script type=\"\"  src=\"http://code.jquery.com/jquery-latest.js\"></script>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Resultados Compra</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <center>\n");
      out.write("            <h1>Resultado Compras   </h1>\n");
      out.write("              <div class=\"TablaProductos\" >\n");
      out.write("\n");
      out.write("                        <table style=\"border-right: 1px solid\">\n");
      out.write("                            <tr style=\"border-right: 1px solid\">\n");
      out.write("                                <td>\n");
      out.write("                                    Producto\n");
      out.write("                                </td>\n");
      out.write("                                <td >\n");
      out.write("                                    Precio\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    Monto Total\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    Fecha\n");
      out.write("                                </td>\n");
      out.write("                                <td >\n");
      out.write("                                    Hora\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                             ");

                                int i;
                                for(i=1; i <=  Integer.parseInt((String) session.getAttribute("Contador")); i++){

                                
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("                               \n");
      out.write("                                <td>\n");
      out.write("                                    ");
      out.print( session.getAttribute("producto"+i) );
      out.write("\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    ");
      out.print(  session.getAttribute("precio"+i) );
      out.write("\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    ");
      out.print(  session.getAttribute("montoTotal"+i));
      out.write("\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    ");
      out.print(  session.getAttribute("date") );
      out.write("\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    ");
      out.print(  session.getAttribute("hour") );
      out.write("\n");
      out.write("                                </td>\n");
      out.write("                                \n");
      out.write("                            </tr>\n");
}
      out.write("\n");
      out.write("                             </table>\n");
      out.write("                            \n");
      out.write("\n");
      out.write("\n");
      out.write("                          </div>\n");
      out.write("                              <form action=\"IngrCompra.jsp\" method=\"post\">\n");
      out.write("                                    <button type='submit' name=\"editar\"> Volver </button>\n");
      out.write("                             </form>\n");
      out.write("                             </center>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
