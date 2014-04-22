<%-- 
    Document   : Administrador
    Created on : Apr 18, 2014, 7:19:48 PM
    Author     : nameless999
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
        <h1> Menú Administrador </h1>
        <h2>Bienvenido <%= session.getAttribute("Usuario") %> </h2>
        </center>

        <center>

    <table border="1px">
        <tbody>

            <tr>
                <td><h3>Ingresar Vendedor</h3></td>
                <td><button type="submit"><a style='text-decoration:none';  href="IngrVendedor.jsp" >Continuar</a> </button></td>
            </tr>
            <tr>
                <td><h3>Ingresar Cliente</h3></td>
                <td><button type="submit"><a style='text-decoration:none';  href="IngrCliente.jsp" >Continuar</a> </button></td>
            </tr>
             <tr>
                <td><h3>Administrar Productos</h3></td>
                <td><button type="submit"><a style='text-decoration:none';  href="AdminProductos.jsp" >Continuar</a> </button></td>
            </tr>
             <tr>
                <td><h3>Ingresar Compra</h3></td>
                <td><button type="submit"><a style='text-decoration:none';  href="IngrCompra.jsp" >Continuar</a> </button></td>
            </tr>
             <tr>
                <td><h3>Ingresar Venta</h3></td>
                <td><button type="submit"><a style='text-decoration:none'; href="IngrVenta.jsp" >Continuar</a> </button></td>
            </tr>
            <tr>
                <td><h3>Ver Venta a Clientes</h3></td>
                <td><button type="submit"><a style='text-decoration:none'; href="VerVenClientes.jsp" >Continuar</a> </button></td>
            </tr>

        </tbody>
    </table>
    </center>
    </body>
</html>
