package org.apache.jsp.Views.Administrador;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.swing.JOptionPane;

public final class Administrador_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <title>Menú Administrador</title>\n");
      out.write("        <meta charset=\"UTF-8\" />\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta name=\"description\" content=\"Creative CSS3 Animation Menus\" />\n");
      out.write("        <meta name=\"keywords\" content=\"menu, navigation, animation, transition, transform, rotate, css3, web design, component, icon, slide\" />\n");
      out.write("        <meta name=\"author\" content=\"Codrops\" />\n");
      out.write("        <link rel=\"shortcut icon\" href=\"../favicon.ico\">\n");
      out.write("        <link href=\"../../Resources/css/index.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"../../Resources/css/Menu/Menu.css\" />\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"../../Resources/css/Menu/reset.css\" />\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=Terminal+Dosis' rel='stylesheet' type='text/css' />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("                ");

                    if(session.getAttribute("tipoUsuario") != null)
                    { 
      out.write("\n");
      out.write("\n");
      out.write("                        <div id=\"status\">\n");
      out.write("                            <table border=\"1px\">\n");
      out.write("                                <tbody>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <p id=\"bienvenido\"><b>Bienvenido: </b> ");
 out.print(session.getAttribute("Usuario"));  
      out.write(" </p>\n");
      out.write("                                        <center>\n");
      out.write("                                                <td>\n");
      out.write("                                            <a id=\"logout\"  href=\"../../Controller/Session/closeSession.jsp\"> Logout </a>\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                ");
 if(session.getAttribute("tipoUsuario").equals("administrador")){ 
      out.write("\n");
      out.write("                                                    <a id=\"linkadmin\" href=\"../../Views/Administrador/Administrador.jsp\"> Administrador</a>\n");
      out.write("                                               ");
 } 
      out.write("\n");
      out.write("\n");
      out.write("                                               ");
   if(session.getAttribute("tipoUsuario").equals("vendedor")) { 
      out.write("\n");
      out.write("                                                     <a id=\"linkadmin\" href=\"../../Views/Vendedor/Vendedor.jsp\"> Vendedor </a>\n");
      out.write("                                               ");
} 
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                            </td>\n");
      out.write("                                        </center>\n");
      out.write("\n");
      out.write("                                    </tr>\n");
      out.write("                                </tbody>\n");
      out.write("                            </table>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                ");
  }

                else{
                    JOptionPane.showMessageDialog(null, "Usuario invalido ");
                    response.sendRedirect("../../index.jsp");
                }

    
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <h1>Bienvenido ");
      out.print( session.getAttribute("Usuario") );
      out.write("</h1>\n");
      out.write("\n");
      out.write("            <div class=\"content\">\n");
      out.write("                <ul class=\"ca-menu\">\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"IngrVendedor.jsp\">\n");
      out.write("                            <span class=\"ca-icon\">U</span>\n");
      out.write("                            <div class=\"ca-content\">\n");
      out.write("                                <h2 class=\"ca-main\">Ingresar Vendedor</h2>\n");
      out.write("                                <h3 class=\"ca-sub\">Pulse aquí para registrar un vendedor</h3>\n");
      out.write("                            </div>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"IngrCliente.jsp\">\n");
      out.write("                            <span class=\"ca-icon\">R</span>\n");
      out.write("                            <div class=\"ca-content\">\n");
      out.write("                                <h2 class=\"ca-main\">Ingresar Cliente</h2>\n");
      out.write("                                <h3 class=\"ca-sub\">Pulse aquí para registrar un cliente</h3>\n");
      out.write("                            </div>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"IngrVenta.jsp\">\n");
      out.write("                            <span class=\"ca-icon\">i</span>\n");
      out.write("                            <div class=\"ca-content\">\n");
      out.write("                                <h2 class=\"ca-main\">Ingresar Venta</h2>\n");
      out.write("                                <h3 class=\"ca-sub\">Pulse aquí para realizar una venta</h3>\n");
      out.write("                            </div>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"IngrCompra.jsp\">\n");
      out.write("                            <span class=\"ca-icon\">h</span>\n");
      out.write("                            <div class=\"ca-content\">\n");
      out.write("                                <h2 class=\"ca-main\">Ingresar Compra</h2>\n");
      out.write("                                <h3 class=\"ca-sub\">Pulse aquí para realizar una compra</h3>\n");
      out.write("                            </div>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"AdminProductos.jsp\">\n");
      out.write("                            <span class=\"ca-icon\">n</span>\n");
      out.write("                            <div class=\"ca-content\">\n");
      out.write("                                <h2 class=\"ca-main\">Administrar Productos</h2>\n");
      out.write("                                <h3 class=\"ca-sub\">Pulse aquí para ver otras opciones de productos</h3>\n");
      out.write("                            </div>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"VerVenClientes.jsp\">\n");
      out.write("                            <span class=\"ca-icon\">P</span>\n");
      out.write("                            <div class=\"ca-content\">\n");
      out.write("                                <h2 class=\"ca-main\">Ver Venta a Clientes</h2>\n");
      out.write("                                <h3 class=\"ca-sub\">Pulse aquí para ver historial de ventas a clientes</h3>\n");
      out.write("                            </div>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </div><!-- content -->\n");
      out.write("        </div>\n");
      out.write("        <script type=\"text/javascript\" src=\"http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
