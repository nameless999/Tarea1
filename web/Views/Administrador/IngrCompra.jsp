<%@page import="javax.swing.JOptionPane"%>
<%@page import="Modelo.Registro"%>
<%
    Registro prod = new Registro();
    String htmlProductos = "";
    int Contador = 0;
    for(Registro temp: prod.MostrarProductos())
    {
        Contador++;
        htmlProductos+="<option value= \""+temp.getId_producto()+"\">"+temp.getNombreProducto()+"</option>\n";
    }

    if (htmlProductos.equals("")){
        JOptionPane.showMessageDialog(null,"No existen Productos");
        response.sendRedirect("agregarProductos.jsp");
    }
 %>
<html>
	<head>
		   <link rel="stylesheet" type="text/css" href="../../Resources/css/Formulario/Formulario.css" />
        <link href='http://fonts.googleapis.com/css?family=Questrial|Droid+Sans|Alice' rel='stylesheet' type='text/css'>
        <link href="../../Resources/css/index.css" rel="stylesheet" type="text/css">
                  <script type=""  src="http://code.jquery.com/jquery-latest.js"></script>
                <SCRIPT type="text/javascript"  language="javascript">
                    var i=2;

                    $(document).ready(function(){
                        if (<%=Contador%> == 1 ){
                            $( "#botonAdd" ).hide();
                        }
                    });

                    $(document).delegate(".producto", "change", function(){
                        var selected = new Array();
                        $(".producto").each(function(){
                            selected.push($(this).find(':selected').val());
                            $(this).find('option').show();
                        });
                        $(".producto").each(function(){
                            var option = $(this);
                            selected.forEach(function(select)
                            {
                                option.find('option[value=' + select +']').hide();
                            });
                        });

                    });

                    function addMore() {
                        $('#form').append("Producto "+i+":");
                        $('#form').append($("#producto1").clone().attr("name","producto"+i).attr("id","producto"+i));
                        $('#form').append('<br />');
                        $('#form').append('Cantidad: <input type="text" class = "cantidad" name="cantidad'+i+'" id="cantidad"/>');
                        $('#form').append('<br />');
                        $('#form').append('Precio: <input type="text" class = "precio" name="precio'+i+'" placeholder="Precio"/>');
                        $('#form').append('<br />');
                        $('#form').append($('.submits'));
                        $('#Contador').attr("value", i);

                        i++;
                        if (i > <%=Contador%> ){
                            $( "#botonAdd" ).hide();
                        }
                    };
                </SCRIPT>
	</head>
	<body>

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
			<form style="text-align:center;" id="form" action="../../IngresarCompra" method="post">

				Producto: <select  class = "producto" name ="producto1" id="producto1">
                                            <option selected></option>
                                            <%=htmlProductos%>
                                          </select>
				<br />
				Cantidad: <input type="text" class = "cantidad" name="cantidad1" placeholder="Cantidad" />
				<br />
				Precio: <input type="text" class = "precio" name="precio1" placeholder="Precio"/>
                                <br />
                                <input type="hidden" name ="Contador" value="1" id="Contador"/>
				<input type="submit" class = "submits" value="Finalizar" />
			</form>
                        <button id="botonAdd"class="boton" onclick="addMore()">Agregar otro producto</button>

		</div>
	</body>
</html>