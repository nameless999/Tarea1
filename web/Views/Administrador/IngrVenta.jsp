<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../../Resources/css/Formulario/Formulario.css" />        		
	<link href='http://fonts.googleapis.com/css?family=Questrial|Droid+Sans|Alice' rel='stylesheet' type='text/css'>   
	<link href="../../Resources/css/index.css" rel="stylesheet" type="text/css">

	<title>Ingresar Venta</title>
	<style>

		</style>
	    </head>
	    <body>
		<center>
		    <h1>Ingresar Venta</h1>
		</center>
		<div id="content">
		<center>
		      <form action="FunIngrCliente.jsp" method="post"  autocomplete="on">
				<p> <label for="producto" class="iconic producto" > Producto </label> <input type="text" name="Producto" id="producto"  required="required" placeholder="Ingrese el nombre"  /> </p>
		                <p> <label for="cantidad" class="iconic cantidad"> Cantidad </label> <input type="text" name="Cantidad" id="cantidad" required="required" placeholder="Ingrese la cantidad" /> </p>
			
				<input type="submit" value="Agregar Venta" />

		    </form>
		</center>
		</div>
	    </body>
	</html>
