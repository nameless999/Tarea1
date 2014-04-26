package org.apache.jsp.Views.Administrador;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Modelo.Registro;

public final class IngrCompra_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"../../Resources/css/Formulario/Formulario.css\" />\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=Questrial|Droid+Sans|Alice' rel='stylesheet' type='text/css'>\n");
      out.write("        <link href=\"../../Resources/css/index.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\n");
      out.write("        <title>Ingresar Compra</title>\n");
      out.write("\n");
      out.write("    <script type=\"text/javascript\" src=\"http://code.jquery.com/jquery-1.4.2.js\"></script>\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("\n");
      out.write("    function ObtenerSeleccion(elemento){\n");
      out.write("    var id_seleccion = elemento.selectedIndex;\n");
      out.write("    }\n");
      out.write("    </script>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <center>\n");
      out.write("            <h1>Ingresar Compra</h1>\n");
      out.write("        </center>\n");
      out.write("\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("    function addRowToTable()\n");
      out.write("    {\n");
      out.write("      var tbl = document.getElementById('tblSample');\n");
      out.write("      var rows = tbl.getElementsByTagName('tr');\n");
      out.write("      var l = rows.length;\n");
      out.write("      var lastRow = rows[l-1];\n");
      out.write("      var clone = lastRow.cloneNode(true);\n");
      out.write("\n");
      out.write("      clone.getElementsByTagName('select')[0].selectedIndex = lastRow.getElementsByTagName('select')[0].selectedIndex;\n");
      out.write("      clone.getElementsByTagName('select')[0].name = 'action'+l;\n");
      out.write("      tbl.appendChild(clone);\n");
      out.write("    }\n");
      out.write("    </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <form action=\"../../IngresarCompra\" method=\"post\" autocomplete=\"on\" >\n");
      out.write("    <table id=\"tblSample\" style='border: 4px groove #666666; margin-left: auto; margin-right: auto; '>\n");
      out.write("      <tr>\n");
      out.write("            <td>\n");
      out.write("            <select name=\"action1\" onChange=\"ObtenerSeleccion(this);\">\n");
      out.write("                <option value=\"0\">Seleccione uno de los productos</option>\n");
      out.write("\n");
      out.write("            ");
 Registro poto = new Registro();
               for ( Registro temp: poto.MostrarProductos()){
            
      out.write("\n");
      out.write("               <option value=\"");
      out.print( temp.getId_producto() );
      out.write("\" >");
      out.print( temp.getNombreProducto() );
      out.write(" </option>\n");
      out.write("            ");
}
      out.write("\n");
      out.write("        </select>\n");
      out.write("        </td>\n");
      out.write("     <TD> <INPUT name=\"Cantidad\" placeholder=\"Ingrese cantidad\" type=\"text\" /> </TD>\n");
      out.write("\n");
      out.write("     <TD> <INPUT placeholder=\"Precio\" type=\"text\" /> </TD>\n");
      out.write("      </tr>\n");
      out.write("    </table>\n");
      out.write("\n");
      out.write("    <br/>\n");
      out.write("    <p style=\"text-align: center; \">\n");
      out.write("    <input type=\"button\" value=\"Add Another\" onclick=\"addRowToTable(); \" />\n");
      out.write("\n");
      out.write("    </p>\n");
      out.write("    <p style='text-align: center; '><input type='submit' value='Submit Request' /></p>\n");
      out.write("    </form>\n");
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
