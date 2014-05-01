<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../../Resources/css/Formulario/Formulario.css" />
	<link href='http://fonts.googleapis.com/css?family=Questrial|Droid+Sans|Alice' rel='stylesheet' type='text/css'>
	<link href="../../Resources/css/index.css" rel="stylesheet" type="text/css">

	<title>Agregar producto</title>
	<style>

		</style>
	    </head>
	    <body>
		<center>
		    <h1>Agregar producto</h1>
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
		      <form action="../../IngresarProducto" method="post"  autocomplete="on">
				<p> <label for="producto" class="iconic producto" > Id_producto </label> <input type="text" name="id_producto" id="producto"  required="required" placeholder="Ingrese el nombre"  /> </p>
                                <p> <label for="cantidad" class="iconic cantidad"> Nombre </label> <input type="text" name="nombre" id="cantidad" required="required" placeholder="Ingrese la cantidad" /> </p>
    		                <p> <label for="cantidad" class="iconic cantidad"> Stock </label> <input type="text" name="stock" id="cantidad" required="required" placeholder="Ingrese la cantidad" /> </p>
				<p> <label for="precio" class="iconic precio"> Descripción </label> <input type="text" name="descripcion" id="precio" required="required" placeholder="Ingrese el precio" /> </p>
                                <p> <label for="producto" class="iconic producto" > Categoría </label> <input type="text" name="categoria" id="producto"  required="required" placeholder="Ingrese el nombre"  /> </p>
		                <p> <label for="cantidad" class="iconic cantidad"> Precio </label> <input type="text" name="precio" id="cantidad" required="required" placeholder="Ingrese la cantidad" /> </p>

                                <input type="submit" value="Agregar Compra" />

		    </form>
		</center>
		</div>
	    </body>
	</html>
