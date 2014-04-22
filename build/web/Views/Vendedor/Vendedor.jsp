<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../../Resources/css/index.css" rel="stylesheet" type="text/css">
        <title>Menú Vendedor</title>
    </head>
    <center>
        <h1> Menú Vendedor</h1>
        <h2>Bienvenido <%= session.getAttribute("Usuario") %> </h2>
        </center>

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
                                            <a id="linkadmin" href="../../index.jsp"> Home </a>
                                            </td>
                                        </center>

                                    </tr>
                                </tbody>
                            </table>
                        </div>

    <center>
    <table border="1px">
        <tbody>
            
            <tr>
                <td><h3>Ingresar Cliente</h3></td>
                <td><button type="submit"><a style='text-decoration:none';  href="IngrCliente.jsp" >Continuar</a> </button></td>
            </tr>
            <tr>
                <td><h3>Ingresar Venta</h3></td>
                <td><button type="submit"><a style='text-decoration:none';  href="IngrVenta.jsp" >Continuar</a> </button></td>
            </tr>
            <tr>
                <td><h3>Ver Venta a Clientes</h3></td>
                <td><button type="submit"><a style='text-decoration:none';  href="VerVenClientes.jsp" >Continuar</a> </button></td>
            </tr>
            <tr>
                <td><h3>Mis Ventas</h3></td>
                <td><button type="submit"><a style='text-decoration:none';  href="MisVentas.jsp" >Continuar</a> </button></td>
            </tr>
            
        </tbody>
    </table>
    </center>
</html>