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

       <%
       String administrador = "administrador";
       String vendedor = "vendedor";
       String yes = "yes";
       %>
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

                    <%
                        if(session.getAttribute("Usuario") != null)
                        {
                            if(session.getAttribute("Inombre").equals("yes"))
                            {
                                out.print("Nombre incorrecto");
                            }

                            if(session.getAttribute("Ipassword").equals("yes"))
                            {
                                out.print("Password incorrecto");
                            }
                       }
                    %>
                </div> <!-- Formulario -->
            </div> <!-- Contenido -->
     
            
        </div> <!-- Wrap -->

    </body>
</html>