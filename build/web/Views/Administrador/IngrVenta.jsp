<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingresar Venta</title>
    </head>
    <body>
        <center>
            <h1>Ingresar Venta</h1>
        </center>
            <form id="IngrVenta" action="FunIngrCliente.jsp" method="post">
                <center> 
                    <label>Producto</label>
                        <input id="IVProducto" name= "producto" type="text" />
                        <% String IVProducto = request.getParameter("producto"); %> <br/>
                    <label>Cantidad</label>
                        <input id="IVCantidad" name= "cantidad" type="text" />
                        <% String IVCantidad = request.getParameter("cantidad"); %> <br/>
                    <input id="boton" name="accion" type="submit" value="Ingresar" /> <br/>
                </center>
            </form>
        </center>

    </body>
</html>