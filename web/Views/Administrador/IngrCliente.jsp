<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingresar Cliente</title>
    </head>
    <body>
        <center>
            <h1>Ingresar Cliente</h1>
        </center>
            <form id="IngrClien" action="FunIngrCliente.jsp" method="post">
                <center> 
                    <label>Rut</label>
                        <input id="IVRut" name= "rut" type="text" />
                        <% String IVRut = request.getParameter("rut"); %> <br/>
                    <label>Nombre</label>
                        <input id="IVNombre" name= "nombre" type="text" />
                        <% String IVNombre = request.getParameter("nombre"); %> <br/>
                    <input id="boton" name="accion" type="submit" value="Ingresar" /> <br/>
                </center>
            </form>
        </center>

    </body>
</html>