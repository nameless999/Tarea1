﻿<html lang="en">
    <head>
        <title>Menú Vendedor</title>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Creative CSS3 Animation Menus" />
        <meta name="keywords" content="menu, navigation, animation, transition, transform, rotate, css3, web design, component, icon, slide" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico">
        <link href="../../Resources/css/index.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="../../Resources/css/Menu/Menu.css" />
        <link rel="stylesheet" type="text/css" href="../../Resources/css/Menu/reset.css" />
        <link href='http://fonts.googleapis.com/css?family=Terminal+Dosis' rel='stylesheet' type='text/css' />
    </head>
    <body>
        <div id="status">
            <table border="1px">
                <tbody>
                    <tr>
                        <p id="bienvenido"><b></b> <% out.print(session.getAttribute("Usuario"));  %> </p>
                        <center>
                            <td>
                            <a id="logout"  href="../../Controller/Session/closeSession.jsp"> Logout </a>
                            </td>
                            <td>
                                <a id="linkadmin" href="../../index.jsp"> Home </a>
                            </td>
                        </center>

                    </tr>
                </tbody>
            </table>
        </div>

        <div class="container">
            <h1>Bienvenido <%= session.getAttribute("Usuario") %></h1>

            <div class="content">
                <ul class="ca-menu">
                    <li>
                        <a href="../Administrador/IngrCliente.jsp">
                            <span class="ca-icon">R</span>
                            <div class="ca-content">
                                <h2 class="ca-main">Ingresar Cliente</h2>
                                <h3 class="ca-sub">Pulse aquí para registrar un cliente</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="../Administrador/IngrVenta.jsp">
                            <span class="ca-icon">i</span>
                            <div class="ca-content">
                                <h2 class="ca-main">Ingresar Venta</h2>
                                <h3 class="ca-sub">Pulse aquí para realizar una venta</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="../Administrador/VerVenClientes.jsp">
                            <span class="ca-icon">P</span>
                            <div class="ca-content">
                                <h2 class="ca-main">Ver Venta a Clientes</h2>
                                <h3 class="ca-sub">Pulse aquí para ver historial de ventas a clientes</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="MisVentas.jsp">
                            <span class="ca-icon">u</span>
                            <div class="ca-content">
                                <h2 class="ca-main">Mis Ventas</h2>
                                <h3 class="ca-sub">Pulse aquí para ver historial de sus ventas</h3>
                            </div>
                        </a>
                    </li>

                </ul>
            </div><!-- content -->
        </div>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
    </body>
</html>
