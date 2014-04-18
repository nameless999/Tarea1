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
        <h1> Menú Administrador </h1>
            <h2>Bienvenido <%= "Nombre" %> <</h2>

            <a href="IngresarVendedor">Ingresar Vendedor</a>

            <a href="IngresarCliente">Ingresar cliente</a>

            <a href="AdminProducto">Administrar Producto</a>

            <a href="IngresarVenta">Ingresar Venta</a>

            <a href="IngresarCompra">Ingresar Compra </a>

            <a href="VerVentasClientes">Ver Ventas a Clientes</a>
    </body>
</html>
