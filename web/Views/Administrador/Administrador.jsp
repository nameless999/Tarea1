<%-- 
    Document   : Administrador
    Created on : Apr 18, 2014, 7:19:48 PM
    Author     : nameless999
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<!DOCTYPE html>
<html lang="en">
        <head>
        <title>Menú Administrador</title>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
 


        <link rel="shortcut icon" href="../favicon.ico">
        <link href="../../Resources/css/index.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="../../Resources/css/Menu/Menu.css" />
        <link rel="stylesheet" type="text/css" href="../../Resources/css/Menu/reset.css" />
        <link rel="stylesheet" type="text/css" href="../../Resources/css/Formulario/Formulario.css" />
        <link href="../../Resources/css/index.css" rel="stylesheet" type="text/css">
        <link href="../../Resources/css/Tablas/TablaProductos.css" rel="stylesheet" type="text/css">
        <link href='http://fonts.googleapis.com/css?family=Terminal+Dosis' rel='stylesheet' type='text/css' />
    </head>
    <body>



        <div class="container">
            <h1>Menú Administrador</h1>

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
                                                    <a id="linkadmin" href="Administrador.jsp"> Administrador</a>
                                               <% } %>

                                               <%   if(session.getAttribute("tipoUsuario").equals("vendedor")) { %>
                                                     <a id="linkadmin" href="Views/Vendedor/Vendedor.jsp"> Vendedor </a>
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

            <div class="content">
                <ul class="ca-menu">
                    <li>
                        <a href="IngrVendedor.jsp">
                            <span class="ca-icon">U</span>
                            <div class="ca-content">
                                <h2 class="ca-main">Ingresar Vendedor</h2>
                                <h3 class="ca-sub">Pulse aquí para registrar un vendedor</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="IngrCliente.jsp">
                            <span class="ca-icon">R</span>
                            <div class="ca-content">
                                <h2 class="ca-main">Ingresar Cliente</h2>
                                <h3 class="ca-sub">Pulse aquí para registrar un cliente</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="IngrVenta.jsp">
                            <span class="ca-icon">i</span>
                            <div class="ca-content">
                                <h2 class="ca-main">Ingresar Venta</h2>
                                <h3 class="ca-sub">Pulse aquí para realizar una venta</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="IngrCompra.jsp">
                            <span class="ca-icon">h</span>
                            <div class="ca-content">
                                <h2 class="ca-main">Ingresar Compra</h2>
                                <h3 class="ca-sub">Pulse aquí para realizar una compra</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="AdminProductos.jsp">
                            <span class="ca-icon">n</span>
                            <div class="ca-content">
                                <h2 class="ca-main">Administrar Productos</h2>
                                <h3 class="ca-sub">Pulse aquí para ver otras opciones de productos</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="VerVenClientes.jsp">
                            <span class="ca-icon">P</span>
                            <div class="ca-content">
                                <h2 class="ca-main">Ver Venta a Clientes</h2>
                                <h3 class="ca-sub">Pulse aquí para ver historial de ventas a clientes</h3>
                            </div>
                        </a>
                    </li>
                </ul>
            </div><!-- content -->
        </div>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
    </body>
</html>