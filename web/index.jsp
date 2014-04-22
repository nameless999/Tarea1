<%--
    Document   : Login
    Created on : Apr 16, 2014, 4:22:06 PM
    Author     : nameless999
--%>
<%@page import="Modelo.Registro"%>
<%@page contentType="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pepe's Works</title>
        <link href="Resources/css/index.css" rel="stylesheet" type="text/css">
        <link href="Views/Session/SetAttribute.jsp" >
        <link href="Registro.java">

    </head>
    <body>

       
        <div id="wrap">

            <div id="head">
                <center>
                    <h1 id="Titulo">Bievenido a Pepe's Works</h1>
                </center>
                <%
                    if(session.getAttribute("tipoUsuario") != null)
                    { %>

                        <div id="status">

                            <p><b>Bienvenido: </b> <% out.print(session.getAttribute("Usuario"));  %> </p>
                            <center><a href="Controller/Session/closeSession.jsp"> Logout </a>
                                <a href="Views/Administrador/Administrador.jsp"> Administrador </a>
                            </center>

                        </div>

                <%  } %>

            </div>

                
              <div id="contenido">
                <div id="formulario">
                    <center>
                        <h2>Ingrese sus datos</h2>
                    </center>

                    <form id="formularios" action="Controller/Session/tipoUsuario.jsp" method="post">
                        <center>
                            <label>Nombre</label>
                                <input id="FormName" name= "Nombre" type="text" />

                            <label>Password</label>
                                <input id="FormPass" name="Password" type="password" />

                            <input id="campo3" name="accion" type="submit" value="Login" />
                        </center>
                    </form>

                </div> <!-- Formulario -->
            </div> <!-- Contenido -->
     
            
        </div> <!-- Wrap -->

    </body>
</html>