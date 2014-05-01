package org.apache.jsp.Views.Administrador;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.swing.JOptionPane;
import Modelo.Registro;

public final class test_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.apache.jasper.runtime.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write('\n');

    Registro prod = new Registro();
    String htmlProductos = "";
    int np = 0;
    for(Registro temp: prod.MostrarProductos())
    {
        np++;
        htmlProductos+="<option value= \""+temp.getId_producto()+"\">"+temp.getNombre()+"</option>\n";
    }
    if (htmlProductos.equals("")){
        JOptionPane.showMessageDialog(null,"No existen Productos");
        response.sendRedirect("agregarProductos.jsp");
    }
 
      out.write("\n");
      out.write("<html>\n");
      out.write("\t<head>\n");
      out.write("\t\t   <link rel=\"stylesheet\" type=\"text/css\" href=\"../../Resources/css/Formulario/Formulario.css\" />\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=Questrial|Droid+Sans|Alice' rel='stylesheet' type='text/css'>\n");
      out.write("        <link href=\"../../Resources/css/index.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("                  <script type=\"\"  src=\"http://code.jquery.com/jquery-latest.js\"></script>\n");
      out.write("                <SCRIPT type=\"text/javascript\"  language=\"javascript\">\n");
      out.write("                    var i=2;\n");
      out.write("\n");
      out.write("                    $(document).ready(function(){\n");
      out.write("                        if (");
      out.print(np);
      out.write(" == 1 ){\n");
      out.write("                            $( \"#botonAdd\" ).hide();\n");
      out.write("                        }\n");
      out.write("                    });\n");
      out.write("\n");
      out.write("                    $(document).delegate(\".producto\", \"change\", function(){\n");
      out.write("                        var selected = new Array();\n");
      out.write("                        $(\".producto\").each(function(){\n");
      out.write("                            selected.push($(this).find(':selected').val());\n");
      out.write("                            $(this).find('option').show();\n");
      out.write("                        });\n");
      out.write("                        $(\".producto\").each(function(){\n");
      out.write("                            var option = $(this);\n");
      out.write("                            selected.forEach(function(select)\n");
      out.write("                            {\n");
      out.write("                                option.find('option[value=' + select +']').hide();\n");
      out.write("                            });\n");
      out.write("                        });\n");
      out.write("\n");
      out.write("                    });\n");
      out.write("\n");
      out.write("                    function add() {\n");
      out.write("                        $('#form').append(\"Producto \"+i+\":\");\n");
      out.write("                        $('#form').append($(\"#producto1\").clone().attr(\"name\",\"producto\"+i).attr(\"id\",\"producto\"+i));\n");
      out.write("                        $('#form').append('<br />');\n");
      out.write("                        $('#form').append('Cantidad: <input type=\"text\" class = \"cantidad\" name=\"cantidad'+i+'\" id=\"cantidad\"/>');\n");
      out.write("                        $('#form').append('<br />');\n");
      out.write("                        $('#form').append('Precio: <input type=\"text\" class = \"precio\" name=\"precio'+i+'\" placeholder=\"Precio\"/>');\n");
      out.write("                        $('#form').append('<br />');\n");
      out.write("                        $('#form').append($('.submits'));\n");
      out.write("                        $('#np').attr(\"value\", i);\n");
      out.write("\n");
      out.write("                        i++;\n");
      out.write("                        if (i > ");
      out.print(np);
      out.write(" ){\n");
      out.write("                            $( \"#botonAdd\" ).hide();\n");
      out.write("                        }\n");
      out.write("                    };\n");
      out.write("                </SCRIPT>\n");
      out.write("\t</head>\n");
      out.write("\t<body>\n");
      out.write("\t\t<div id=\"content\">\n");
      out.write("\t\t\t<form style=\"text-align:center;\" id=\"form\" action=\"../../ingresarCompra\" method=\"post\">\n");
      out.write("\n");
      out.write("\t\t\t\tProducto: <select  class = \"producto\" name =\"producto1\" id=\"producto1\">\n");
      out.write("                                            <option selected></option>\n");
      out.write("                                            ");
      out.print(htmlProductos);
      out.write("\n");
      out.write("                                          </select>\n");
      out.write("\t\t\t\t<br />\n");
      out.write("\t\t\t\tCantidad: <input type=\"text\" class = \"cantidad\" name=\"cantidad1\" placeholder=\"Cantidad\" />\n");
      out.write("\t\t\t\t<br />\n");
      out.write("\t\t\t\tPrecio: <input type=\"text\" class = \"precio\" name=\"precio1\" placeholder=\"Precio\"/>\n");
      out.write("                                <br />\n");
      out.write("                                <input type=\"hidden\" name =\"np\" value=\"1\" id=\"np\"/>\n");
      out.write("\t\t\t\t<input type=\"submit\" class = \"submits\" value=\"Finalizar\" />\n");
      out.write("\t\t\t</form>\n");
      out.write("                        <button id=\"botonAdd\"class=\"boton\" onclick=\"add()\">+Productos</button>\n");
      out.write("\n");
      out.write("\t\t</div>\n");
      out.write("\t</body>\n");
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
