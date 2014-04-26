<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../../Resources/css/Formulario/Formulario.css" />
	<link href='http://fonts.googleapis.com/css?family=Questrial|Droid+Sans|Alice' rel='stylesheet' type='text/css'>
	<link href="../../Resources/css/index.css" rel="stylesheet" type="text/css">

	<title>gregar producto</title>
	<style>

		</style>
	    </head>
	    <body>
		<center>
		    <h1>Agregar producto</h1>
		</center>
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
