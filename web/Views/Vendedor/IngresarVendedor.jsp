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

       <form action="Vendedor" method="post" >
            <div class="IngresoUsuario">
                <p>Ingrese rut:</p>
                <p><input type="text" value="" name="rut" placeholder="Ej: 18664654-1"></p>
                <p>Ingrese contraseña</p>
                <p><input type="password" value="" name="password"></p>
                <p>Repetir contraseña</p>
                <p><input type="password" value="" name="repassword"></p>
                <p> <input type="submit" value="Vendedor" name="Finalizar"></p>
            </div>
        </form>
        <% 
        String Rut = request.getParameter("rut");
        
        if(Rut.length() == 10 || Rut.indexOf('-') == '-'){

        }

    </body>
</html>
