<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<title>Add Row Testing</title>

<script type="text/javascript">
function addRowToTable()
{
// just get some info and elements
  var tbl = document.getElementById('tblSample');
  var rows = tbl.getElementsByTagName('tr');
 
  var l = rows.length;

  var lastRow = rows[l-1];
  
  var clone = lastRow.cloneNode(true);
  
// now to fill in row data.
  clone.getElementsByTagName('select')[0].selectedIndex = lastRow.getElementsByTagName('select')[0].selectedIndex;
// and finaly fix up names
  clone.getElementsByTagName('select')[0].name = 'action'+l;
// add the row

  tbl.appendChild(clone);

}

</script>

</head>
<body>
<form action="process.php" method="post" name="toolsubmit" >
<table id="tblSample" style='border: 4px groove #666666; margin-left: auto; margin-right: auto; '>
  <tr>
	<td>
	<select name="action1" onChange="setOptions(document.toolsubmit.action1.options[document.toolsubmit.action1.selectedIndex].value);">
	<option value="none">Please Select</option>
	<option value="add">Add</option>
	<option value="remove">Remove</option>
	<option value="change">Change</option>
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