package org.apache.jsp.Views.Administrador;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.swing.JOptionPane;
import java.util.List;
import Modelo.Registro;

public final class AdminProductos_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"../../Resources/css/Formulario/Formulario.css\" />\n");
      out.write("        <link href=\"../../Resources/css/index.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"../../Resources/css/Tablas/TablaProductos.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <title>Administrar Productos</title>\n");
      out.write("\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <center>\n");
      out.write("            <h1>Administrar Productos</h1>\n");
      out.write("\n");
      out.write("    ");

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
      out.write("                                            <a id=\"logout\"  href=\"Controller/Session/closeSession.jsp\"> Logout </a>\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                ");
 if(session.getAttribute("tipoUsuario").equals("administrador")){ 
      out.write("\n");
      out.write("                                                    <a id=\"linkadmin\" href=\"Views/Administrador/Administrador.jsp\"> Administrador</a>\n");
      out.write("                                               ");
 } 
      out.write("\n");
      out.write("\n");
      out.write("                                               ");
   if(session.getAttribute("tipoUsuario").equals("vendedor")) { 
      out.write("\n");
      out.write("                                                     <a id=\"linkadmin\" href=\"Views/Vendedor/Vendedor.jsp\"> Vendedor </a>\n");
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
      out.write("\n");
      out.write("         \n");
      out.write("\n");
      out.write("            \n");
      out.write("<form id=\"searchbox\" action=\"BuscarProducto.jsp\">\n");
      out.write("    <input id=\"search\" type=\"text\" name=\"nombreProducto\" placeholder=\"Busque producto por nombre\">\n");
      out.write("    <input id=\"submit\" type=\"submit\" value=\"Search\">\n");
      out.write("</form>\n");
      out.write("\n");
      out.write("                ");

                    int idProducto[];
                    String NombreProducto[];
                    int Stock[];
                    idProducto = new int[20];
                    NombreProducto = new String[20];
                    Stock = new int[20];

                    int Contador = 0;
                    int Contador2 = 0;
                    Registro Productos = new Registro();

                    for( Registro temp: Productos.MostrarProductos())
                    {
 
                        idProducto[Contador] = temp.getId_producto();
                        NombreProducto[Contador] = temp.getNombreProducto();
                        Stock[Contador]= temp.getStock();
                        Contador++;
                    }

                    session.setAttribute("idProducto", idProducto);
                    session.setAttribute("NombreProducto", NombreProducto);
                    session.setAttribute("Stock", Stock);
                
      out.write("\n");
      out.write("\n");
      out.write("                 <div class=\"TablaProductos\" >\n");
      out.write("  \n");
      out.write("                        <table  >\n");
      out.write("    \n");
      out.write("                            <tr   >\n");
      out.write("                                <td>\n");
      out.write("                                    Id_producto\n");
      out.write("                                </td>\n");
      out.write("                                <td >\n");
      out.write("                                    Nombre\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    Stock\n");
      out.write("                                </td>\n");
      out.write("                                <td style=\" background-image:url('../../Resources/images/Background.png');  border-top: none;  border-right: none; \">\n");
      out.write("                                  \n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                 ");

                    for(Contador2= 0; Contador2 < Contador; Contador2++){
        
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("        \n");
      out.write("                                <td>\n");
      out.write("                                    ");
      out.print( idProducto[Contador2] );
      out.write("\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    ");
      out.print( NombreProducto[Contador2] );
      out.write("\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    ");
      out.print( Stock[Contador2]);
      out.write("\n");
      out.write("                                </td>\n");
      out.write("                                <td style=\"border-right: solid 1px\">\n");
      out.write("                                    <form action=\"../../EditarProductos\" method=\"post\">\n");
      out.write("                                    <button type='submit' name=\"editar\" value='");
      out.print( Contador2 );
      out.write("'> Editar </button>\n");
      out.write("                                    </form>\n");
      out.write("                               </td>\n");
      out.write("\n");
      out.write("                            </tr>\n");
      out.write("                             \n");
      out.write("                                ");
 } 
      out.write("\n");
      out.write("                             </table>\n");
      out.write("                          </div>\n");
      out.write("                         \n");
      out.write("                         \n");
      out.write("                         \n");
      out.write("                        \n");
      out.write("  \n");
      out.write("                    <a href=\"AgreProducto.jsp\"><button>  Agregar Producto</button> </a>\n");
      out.write("                    \n");
      out.write("        </center>\n");
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
