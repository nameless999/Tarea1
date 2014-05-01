<%--
    Document   : Login
    Created on : Apr 16, 2014, 4:22:06 PM
    Author     : nameless999
--%>

<%@page import="Modelo.Usuario"%>
<%@page import="Modelo.Registro"%>
<%@page contentType="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pepe's Works</title>
        <link rel="stylesheet" type="text/css" href="Resources/css/Formulario/Formulario_1.css" />
        <link href="Resources/css/index.css" rel="stylesheet" type="text/css">
        <link href="Resources/css/Tablas/TablaProductos.css" rel="stylesheet" type="text/css">
        <link href="Resources/css/index.css" rel="stylesheet" type="text/css">
        <link href="Resources/css/Login/Login.css" rel="stylesheet" type="text/css">
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
                            <table border="1px">
                                <tbody>
                                    <tr>
                                        <p id="bienvenido"><b>Bienvenido: </b> <% out.print(session.getAttribute("Usuario"));  %> </p>
                                        <center>
                                                <td>
                                            <a id="logout"  href="Controller/Session/closeSession.jsp"> Logout </a>
                                            </td>
                                            <td>
                                                <% if(session.getAttribute("tipoUsuario").equals("administrador")){ %>
                                                    <a id="linkadmin" href="Views/Administrador/Administrador.jsp"> Administrador</a>
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

                <%  } %>

            </div>

              			<div id="box">
			<div class="elements">
			<div class="avatar"></div>

              <div id="contenido">
                <div id="formulario">
                    <form id="formularios" action="Controller/Session/tipoUsuario.jsp" method="post">
                        <center>
                                <input id="FormName" name= "Nombre" type="text" class="username" placeholder="Nombre"/>


                                <input id="FormPass" name="Password" type="password" class="password" placeholder="Contraseña"/>

                            <input id="campo3" name="accion" type="submit" value="Entrar" class="submit"/>
                     <div id="error">
                     <%
                        if(session.getAttribute("Usuario") != null)
                        {
                        
                            if(session.getAttribute("Inombre").equals("yes") || session.getAttribute("Ipassword").equals("yes"))
                            {%>
                            <p id="error1">Nombre o password incorrecto. </p>
                            <% } %>
                       <% }%>
                    </div>
                        </center>
                    </form>


                </div> <!-- Formulario -->
            </div> <!-- Contenido -->


        </div> <!-- Wrap -->
		</div>
		</div>
    </body>
</html>