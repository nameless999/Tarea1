<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../../Resources/css/Formulario/Formulario.css" />
        <link href='http://fonts.googleapis.com/css?family=Questrial|Droid+Sans|Alice' rel='stylesheet' type='text/css'>
        <link href="../../Resources/css/index.css" rel="stylesheet" type="text/css">

        <title>Ingresar Vendedor</title>
        <style>

        </style>
    </head>
    <body>
        <center>
            <h1>Ingresar Vendedor</h1>
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
                                            <a id="logout"  href="../../Controller/Session/closeSession.jsp"> Logout </a>
                                            </td>
                                            <td>
                                                <% if(session.getAttribute("tipoUsuario").equals("administrador")){ %>
                                                    <a id="linkadmin" href="../../Views/Administrador/Administrador.jsp"> Administrador</a>
                                               <% } %>

                                               <%   if(session.getAttribute("tipoUsuario").equals("vendedor")) { %>
                                                     <a id="linkadmin" href="../../Views/Vendedor/Vendedor.jsp"> Vendedor </a>
                                               <%} %>


                                            </td>
                                        </center>

                                    </tr>
                                </tbody>
                            </table>
                        </div>

                <%  }

                else{
                    JOptionPane.showMessageDialog(null, "Usuario invalido ");
                    response.sendRedirect("../../index.jsp");
                }

    %>

        <div id="content">
        <center>
           
              <form action="../../IngresarVendedor" method="post"  autocomplete="on">
			<p> <label for="username" class="iconic user" > Nombre </label> <input type="text" name="nombre" id="username"  required="required" placeholder="Ingrese su nombre"  /> </p>
                        <p> <label for="subject" class="iconic quote-alt"> Rut </label> <input type="text" name="rut" id="subject" required="required" placeholder="Ingrese su rut" /> </p>
                        <p> <label for="username" class="iconic user" > Contraseña  </label> <input type="text" name="pass" id="username"  required="required" placeholder="Ingrese su nombre"  /> </p>
                        <p> <label for="subject" class="iconic quote-alt"> Repetir contraseña  </label> <input type="text" name="pass2" id="subject" required="required" placeholder="Ingrese su rut" /> </p>
                        <p> <label for="subject" class="iconic quote-alt"> Comision  </label> <input type="text" name="comision" id="subject" required="required" placeholder="Ingrese su rut" /> </p>
			<input type="submit" value="Registrar vendedor" />

            </form>
        </center>
        </div>
    </body>
</html>
