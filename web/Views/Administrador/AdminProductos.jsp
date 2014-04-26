<%-- 
    Document   : AdminProductos
    Created on : 21-abr-2014, 17:45:43
    Author     : user
--%>

<%@page import="java.util.List"%>
<%@page import="Modelo.Registro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../../Resources/css/Formulario/Formulario.css" />
        <link href="../../Resources/css/index.css" rel="stylesheet" type="text/css">
        <link href="../../Resources/css/Tablas/TablaProductos.css" rel="stylesheet" type="text/css">
        <title>Administrar Productos</title>


    </head>
    <body>
        <center>
            <h1>Administrar Productos</h1>
            
<form id="searchbox" action="BuscarProducto.jsp">
    <input id="search" type="text" name="nombreProducto" placeholder="Busque producto por nombre">
    <input id="submit" type="submit" value="Search">
</form>

                <%
                    int idProducto[];
                    String NombreProducto[];
                    int Stock[];
                    idProducto = new int[20];
                    NombreProducto = new String[20];
                    Stock = new int[20];

                    int Contador = 0;
                    int Contador2 = 0;
                    Registro Productos = new Registro();

                    for( Registro temp: Productos.MostrarProductos())
                    {
 
                        idProducto[Contador] = temp.getId_producto();
                        NombreProducto[Contador] = temp.getNombreProducto();
                        Stock[Contador]= temp.getStock();
                        Contador++;
                    }

                    session.setAttribute("idProducto", idProducto);
                    session.setAttribute("NombreProducto", NombreProducto);
                    session.setAttribute("Stock", Stock);
                %>

                 <div class="TablaProductos" >
  
                        <table  >
    
                            <tr   >
                                <td>
                                    Id_producto
                                </td>
                                <td >
                                    Nombre
                                </td>
                                <td>
                                    Stock
                                </td>
                                <td style=" background-image:url('../../Resources/images/Background.png');  border-top: none;  border-right: none; ">
                                  
                                </td>
                            </tr>
                 <%
                    for(Contador2= 0; Contador2 < Contador; Contador2++){
        %>
                            <tr>
        
                                <td>
                                    <%= idProducto[Contador2] %>
                                </td>
                                <td>
                                    <%= NombreProducto[Contador2] %>
                                </td>
                                <td>
                                    <%= Stock[Contador2]%>
                                </td>
                                <td style="border-right: solid 1px">
                                    <form action="../../EditarProductos" method="post">
                                    <button type='submit' name="editar" value='<%= Contador2 %>'> Editar </button>
                                    </form>
                               </td>

                            </tr>
                             
                                <% } %>
                             </table>
                          </div>
                         
                         
                         
                        
  
                    <a href="AgreProducto.jsp"><button>  Agregar Producto</button> </a>
                    
        </center>
    </body>
</html>
