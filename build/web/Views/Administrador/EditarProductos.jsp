<%@page import="javax.swing.JOptionPane"%>
<%@page import="Modelo.Registro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../../Resources/css/Formulario/Formulario.css" />
        <link href="../../Resources/css/index.css" rel="stylesheet" type="text/css">
        <link href="../../Resources/css/Tablas/TablaProductos.css" rel="stylesheet" type="text/css">

        <title>Editar Productos</title>
    </head>
    <body>
        <%
            Registro ObtenerProductoid = new Registro();
            int aux;
            aux= (Integer)session.getAttribute("idProducto2");
            ObtenerProductoid.ObtenerProductoid(aux);
            //JOptionPane.showMessageDialog(null, session.getAttribute("idProducto2"));
            
        %>
        <div class="TablaProductos" >
            <form method="post" action="../../updateProducto">
            <table>

                <tr>
                    <td>
                        ID Producto
                    </td>
                    <td >
                        Stock
                    </td>
                    <td>
                        Descripción
                    </td>
                    <td>
                        Categoría
                    </td>
                    <td>
                        Precio
                    </td>
                    <td>
                        Nombre
                    </td>

                </tr>
                <tr>
                    <td>
                        <%= session.getAttribute("idProducto2") %>
                    </td>
                    <td>
                        <%= ObtenerProductoid.getStock() %>
                    </td>
                    <td>
                      <%= ObtenerProductoid.getDescripcion() %>
                      <center><input type="text" name="descripcion" placeholder=" Nueva Descripción"></center>
                    </td>
                    <td>
                      <%= ObtenerProductoid.getCategoria() %>
                       <center><input type="text" name="categoria" placeholder=" Nueva Categoría"></center>
                    </td>
                    <td>
                      <%= ObtenerProductoid.getPrecio() %>
                       <center><input type="text" name="precio" placeholder=" Nuevo Precio"></center>
                    </td>
                    <td>
                       <%= ObtenerProductoid.getNombre() %>
                    </td>
                </tr>
                 </table>

                    <input type='submit' value='Submit Request' />

                </form>
              </div>


    </body>
</html>