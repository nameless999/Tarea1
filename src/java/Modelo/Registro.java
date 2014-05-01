package Modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;
import javax.swing.JOptionPane;

/**
 *
 * @author nameless999
 */



public class Registro
{

    private String nombre;
    private String password;
    private String rut;
    private String comision;
    private int id_producto;
    private int stock;
    private String descripcion;
    private String categoria;
    private int precio;
    private String nombreProducto;



    private String classfor="oracle.jdbc.driver.OracleDriver";
    private String url="jdbc:oracle:thin:@localhost:1521:XE";
    private String usuario="nameless999";
    private String clave="motorola13";

    private Connection con=null;
    private PreparedStatement pr=null;
    private ResultSet rs=null;




public void IngresarVendedor(String rut, String nombre, String password, String comision, String tipo){

    String sql = "Insert into usuario values(?,?,?,?,?)";

    try
        {
            Class.forName(classfor);
            con=DriverManager.getConnection(url, usuario, clave);
            pr=con.prepareStatement(sql);
            pr.setString(1, rut);
            pr.setString(2, nombre);
            pr.setString(3, password);
            pr.setString(4, comision);
            pr.setString(5, tipo);
            pr.executeUpdate();

            JOptionPane.showMessageDialog(null, "Vendedor añadido exitosamente");
        }
   catch(Exception ev)
   {}

}//fin ingresar

public void IngresarCliente(String rut, String nombre){

    String sql = "Insert into CLIENTE values(?,?)";

    try
        {
            Class.forName(classfor);
            con=DriverManager.getConnection(url, usuario, clave);
            pr=con.prepareStatement(sql);
            pr.setString(1, rut);
            pr.setString(2, nombre);
            pr.executeUpdate();

            JOptionPane.showMessageDialog(null, "Cliente añadido exitosamente");
        }
   catch(Exception ev)
   {}
 }

 public void IngresarProducto(int id_producto, int stock, String descripcion, String categoria, int precio, String nombre){
    String sql = "Insert into Producto values(?,?,?,?,?,?)";

    try
        {
            Class.forName(classfor);
            con=DriverManager.getConnection(url, usuario, clave);
            pr=con.prepareStatement(sql);
            pr.setInt(1, id_producto);
            pr.setInt(2, stock);
            pr.setString(3, descripcion);
            pr.setString(4, categoria);
            pr.setInt(5, precio);
            pr.setString(6, nombre);
            pr.executeUpdate();

            JOptionPane.showMessageDialog(null, "Producto añadido exitosamente");
        }

   catch(Exception ev)
   {}
 }

//fin ingresar


 public Vector<Registro> MostrarProductos(){
        Vector<Registro> vecPro=new Vector<Registro>();
        String sql = "SELECT * FROM PRODUCTO ";
   try
        {
       
            Class.forName(classfor);
            con=DriverManager.getConnection(url, usuario,clave);
            pr=con.prepareStatement(sql);
            rs=pr.executeQuery();
            
            
            while (rs.next()) 
                {
                    Registro pro=new Registro();
                    pro.setId_producto(rs.getInt("id_producto"));
                  
                    pro.setStock(rs.getInt("stock"));
                  
                    pro.setDescripcion(rs.getString("descripcion"));
                 
                    pro.setCategoria(rs.getString("categoria"));
                   
                    pro.setPrecio(rs.getInt("precio"));
                
                    pro.setNombreProducto(rs.getString("nombre"));
              
                    vecPro.add(pro);
                }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
            try{
                rs.close();
                pr.close();
                con.close();
            }catch(Exception ex){

            }
        }
        return vecPro;
    }

    public void ObtenerProductoNombre(String nombreProducto){
    String sql = "SELECT id_producto,STOCK, DESCRIPCION,CATEGORIA,PRECIO FROM PRODUCTO WHERE NOMBRE = ?";

     try
        {
            Class.forName(classfor);
            con=DriverManager.getConnection(url, usuario,clave);
            pr=con.prepareStatement(sql);
            pr.setString(1, nombreProducto);
            rs=pr.executeQuery();
            rs.next();

            setId_producto(rs.getInt("id_producto"));
            setStock(Integer.parseInt(rs.getString("stock")));
            setDescripcion(rs.getString("descripcion"));
            setCategoria(rs.getString("categoria"));
            setPrecio(Integer.parseInt(rs.getString("precio")));
            setNombre(rs.getString("nombre"));

        }

     catch(Exception ex){

        }finally{
            try{
                rs.close();
                pr.close();
                con.close();
            }catch(Exception ex){

            }
        }

    }


    public void ObtenerProductoid(int idProducto){
        String sql = "SELECT STOCK, DESCRIPCION,CATEGORIA,PRECIO, NOMBRE FROM PRODUCTO WHERE ID_PRODUCTO = ?";

     try
        {
            Class.forName(classfor);
            con=DriverManager.getConnection(url, usuario,clave);
            pr=con.prepareStatement(sql);
            pr.setInt(1, idProducto);
            rs=pr.executeQuery();
            rs.next();

            setStock(Integer.parseInt(rs.getString("stock")));
            setDescripcion(rs.getString("descripcion"));
            setCategoria(rs.getString("categoria"));
            setPrecio(Integer.parseInt(rs.getString("precio")));
            setNombre(rs.getString("nombre"));

        }

     catch(Exception ex){

        }finally{
            try{
                rs.close();
                pr.close();
                con.close();
            }catch(Exception ex){

            }
        }

    }

    public void updateProductos(String Descripcion, String Categoria, int Precio, int id_producto){

        String sql="update producto set descripcion=?, categoria=?, precio=? where id_producto=?";
        try
        {
            JOptionPane.showMessageDialog(null, "Producto actualizado");

            Class.forName(classfor);
            JOptionPane.showMessageDialog(null, "Producto actualizado");

            con=DriverManager.getConnection(url, usuario, clave);
            JOptionPane.showMessageDialog(null, "Producto actualizado");

            pr=con.prepareStatement(sql);
                                  
            pr.setString(1, Descripcion);
            pr.setString(2, Categoria);
            pr.setInt(3, Precio);
            pr.setInt(4, id_producto);
 
            pr.executeUpdate();
        }
    catch(Exception ex){
            ex.printStackTrace();
        }
    }
    public void IngresarCompra(int id_compra, int montoTotal, String Fecha, String Hora){
    String sql = "Insert into Compra values(?,?,?,?)";

    try
        {
            Class.forName(classfor);
            con=DriverManager.getConnection(url, usuario, clave);
            pr=con.prepareStatement(sql);

            pr.setInt(1, id_compra);
            pr.setInt(2, montoTotal);
            pr.setString(3, Fecha);
            pr.setString(4, Hora);
            pr.executeUpdate();

            JOptionPane.showMessageDialog(null, "Compra añadida exitosamente");
        }

   catch(Exception ev)
   {}
 }
    
      public void IngresarDetalleCompra(int id_detalle, int id_compra, int id_producto, int cantidad, int precio){
    String sql = "Insert into Detalle_Compra values(?,?,?,?,?)";

    try
        {
            Class.forName(classfor);
            con=DriverManager.getConnection(url, usuario, clave);
            pr=con.prepareStatement(sql);
 
            pr.setInt(1, id_detalle);
            pr.setInt(2, id_compra);
            pr.setInt(3, id_producto);
            pr.setInt(4, cantidad);
            pr.setInt(5, precio);

            pr.executeUpdate();

            JOptionPane.showMessageDialog(null, "Compra añadida exitosamente");
        }

   catch(Exception ev)
   {}
 }




    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getComision() {
        return comision;
    }

    public void setComision(String comision) {
        this.comision = comision;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public String getNombreProducto() {
        return nombreProducto;
    }

    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }



    


}//fin login

