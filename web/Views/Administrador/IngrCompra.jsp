<%@page import="Modelo.Registro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" type="text/css" href="../../Resources/css/Formulario/Formulario.css" />
        <link href='http://fonts.googleapis.com/css?family=Questrial|Droid+Sans|Alice' rel='stylesheet' type='text/css'>
        <link href="../../Resources/css/index.css" rel="stylesheet" type="text/css">

        <title>Ingresar Compra</title>

    <script type="text/javascript" src="http://code.jquery.com/jquery-1.4.2.js"></script>
    <script type="text/javascript">

    function ObtenerSeleccion(elemento){
    var id_seleccion = elemento.selectedIndex;
    }
    </script>

    </head>
    <body>
        <center>
            <h1>Ingresar Compra</h1>
        </center>

    <script type="text/javascript">
    function addRowToTable()
    {
      var tbl = document.getElementById('tblSample');
      var rows = tbl.getElementsByTagName('tr');
      var l = rows.length;
      var lastRow = rows[l-1];
      var clone = lastRow.cloneNode(true);

      clone.getElementsByTagName('select')[0].selectedIndex = lastRow.getElementsByTagName('select')[0].selectedIndex;
      clone.getElementsByTagName('select')[0].name = 'action'+l;
      tbl.appendChild(clone);
    }
    </script>
    </head>
    <body>
    <form action="../../IngresarCompra" method="post" autocomplete="on" >
    <table id="tblSample" style='border: 4px groove #666666; margin-left: auto; margin-right: auto; '>
      <tr>
            <td>
            <select name="action1" onChange="ObtenerSeleccion(this);">
                <option value="0">Seleccione uno de los productos</option>

            <% Registro poto = new Registro();
               for ( Registro temp: poto.MostrarProductos()){
            %>
               <option value="<%= temp.getId_producto() %>" ><%= temp.getNombreProducto() %> </option>
            <%}%>
        </select>
        </td>
     <TD> <INPUT name="Cantidad" placeholder="Ingrese cantidad" type="text" /> </TD>

     <TD> <INPUT placeholder="Precio" type="text" /> </TD>
      </tr>
    </table>

    <br/>
    <p style="text-align: center; ">
    <input type="button" value="Add Another" onclick="addRowToTable(); " />

    </p>
    <p style='text-align: center; '><input type='submit' value='Submit Request' /></p>
    </form>
    </body>
</html>