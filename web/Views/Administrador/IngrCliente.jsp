<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" type="text/css" href="../../Resources/css/Formulario/Formulario.css" />
        <link href='http://fonts.googleapis.com/css?family=Questrial|Droid+Sans|Alice' rel='stylesheet' type='text/css'>
        <link href="../../Resources/css/index.css" rel="stylesheet" type="text/css">

        <title>Ingresar Cliente</title>

    </head>
    <body>
        <center>
            <h1>Ingresar Cliente</h1>
        </center>
        <div id="content">
        <center>
              <form action="../../IngresarCliente" method="post"  autocomplete="on">
			<p> <label for="username" class="iconic user" > Nombre </label> <input type="text" name="nombre" id="username"  required="required" placeholder="Ingrese su nombre"  /> </p>
                        <p> <label for="subject" class="iconic quote-alt"> Rut </label> <input type="text" name="rut" id="subject" required="required" placeholder="Ingrese su rut" /> </p>

			<input type="submit" value="Registrar usuario" />

            </form>
        </center>
        </div>
    </body>
</html>
