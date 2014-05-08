<%-- 
    Document   : ResultadosCompras
    Created on : 28-04-2014, 08:39:24 PM
    Author     : nameless999
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../../Resources/css/Formulario/Formulario.css" />
        <link href="../../Resources/css/index.css" rel="stylesheet" type="text/css">
        <link href="../../Resources/css/Tablas/TablaProductos.css" rel="stylesheet" type="text/css">
        <script type=""  src="http://code.jquery.com/jquery-latest.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultados Compra</title>
    </head>
    <body>
        <center>
            <h1>Resultado Compras   </h1>

                            <%
                    if(session.getAttribute("tipoUsuario") != null)
                    { %>

                        <div id="status">
                            <table border="1px">
                                <tbody>
                                    <tr>
                                        <p id="bienvenido"><b>Bienvenido: </b> <% out.print(session.getAttribute("Usuario"));  %> </p>
                                        <center>
                                                <td>
                                            <a id="logout"  href="../../Controller/Session/closeSession.jsp"> Logout </a>
                                            </td>
                                            <td>
                                                <% if(session.getAttribute("tipoUsuario").equals("administrador")){ %>
                                                    <a id="linkadmin" href="../../Views/Administrador/Administrador.jsp"> Administrador</a>
                                               <% } %>

                                               <%   if(session.getAttribute("tipoUsuario").equals("vendedor")) { %>
                                                     <a id="linkadmin" href="../../Views/Vendedor/Vendedor.jsp"> Vendedor </a>
                                               <%} %>


                                            </td>
                                        </center>

                                    </tr>
                                </tbody>
                            </table>
                        </div>

                <%  }

                else{
                    JOptionPane.showMessageDialog(null, "Usuario invalido ");
                    response.sendRedirect("../../index.jsp");
                }

    %>

              <div class="TablaProductos" >

                        <table style="border-right: 1px solid">
                            <tr style="border-right: 1px solid">
                                <td>
                                    Producto
                                </td>
                                <td >
                                    Precio
                                </td>
                                <td>
                                    Monto Total
                                </td>
                                <td>
                                    Fecha
                                </td>
                                <td >
                                    Hora
                                </td>
                            </tr>
                             <%
                                int i;
                                for(i=1; i <=  Integer.parseInt((String) session.getAttribute("Contador")); i++){

                                %>
                            <tr>
                               
                                <td>
                                    <%= session.getAttribute("producto"+i) %>
                                </td>
                                <td>
                                    <%=  session.getAttribute("precio"+i) %>
                                </td>
                                <td>
                                    <%=  session.getAttribute("montoTotal"+i)%>
                                </td>
                                <td>
                                    <%=  session.getAttribute("date") %>
                                </td>
                                <td>
                                    <%=  session.getAttribute("hour") %>
                                </td>
                                
                            </tr>
<%}%>
                             </table>
                            


                          </div>
                              <form action="IngrCompra.jsp" method="post">
                                    <button type='submit' name="volver"> Volver </button>
                             </form>
                             </center>
    </body>
</html>
