<%-- 
    Document   : IngresarVendedor
    Created on : Apr 18, 2014, 7:32:29 PM
    Author     : nameless999
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingresar Vendedor</title>
    </head>
    <body>
        <h1>Ingresar Vendedor</h1>

                <form action="ingresousuario" method="post" >

            <div class="IngresoUsuario">
                <p>Ingrese rut:</p>
                <p><input type="text" value="" name="rut"></p>
                <p>Ingrese contraseña</p>
                <p><input type="password" value="" name="contrasenna"></p>
                <p>Ingrese contraseña</p>
                <p><input type="password" value="" name="nombre"></p>
                <p> <input type="submit" value="ingresousuario" name="ingresousuario"></p>

            </div>

        </form>
    </body>
</html>
