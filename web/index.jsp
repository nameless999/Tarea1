<%--
    Document   : Login
    Created on : Apr 16, 2014, 4:22:06 PM
    Author     : nameless999
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pepe's Works</title>
    </head>
    <body>
        <center>
            <h1>Bievenido a Pepe's Works</h1>
            <h2>Ingrese sus datos</h2>
        </center>
            <form id="formulario" action="Login" method="post">
                <center>
                    <label>Nombre</label>
                        <input id="FormName" name= "Nombre" type="text" />

                    <label>Password</label>
                        <input id="FormPass" name="Password" type="password" />

                    <input id="campo3" name="accion" type="submit" value="Login" />
                </center>
            </form>

    </body>
</html>