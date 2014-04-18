package Modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author nameless999
 */



public class Registro {

    private String nombre;
    private String password;

    private String classfor="oracle.jdbc.driver.OracleDriver";
    private String url="jdbc:oracle:thin:@localhost:1521:XE";
    private String usuario="nameless999";
    private String clave="motorola13";

    private Connection con=null;
    private PreparedStatement pr=null;
    private ResultSet rs=null;




public void Ingresar(String nombre, String password){

    String sql = "Insert into administrador values(?,?)";

    try
        {
            Class.forName(classfor);
            con=DriverManager.getConnection(url, usuario, clave);

            pr=con.prepareStatement(sql);
            pr.setString(1, nombre);
            pr.setString(2, password);

            pr.executeUpdate();
        }
   catch(Exception ev)
   {}

}//fin ingresar

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





}//fin login
