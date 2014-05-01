/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author nameless999
 */
public class Usuario {
    
    private String nombre;
    private String password;
    private String tipoUsuario;
    
    private String classfor="oracle.jdbc.driver.OracleDriver";
    private String url="jdbc:oracle:thin:@localhost:1521:XE";
    private String usuario="nameless999";
    private String clave="motorola13";

    private Connection con=null;
    private PreparedStatement pr=null;
    private ResultSet rs=null;

    public boolean ObtenerUsuario(String Nombre, String Password){
        String sql = "SELECT NOMBRE,PASSWORD,TIPO FROM USUARIO WHERE NOMBRE = ? AND PASSWORD = ? ";
        
     try
        {
            Class.forName(classfor);
            con=DriverManager.getConnection(url, usuario,clave);
            pr=con.prepareStatement(sql);
            pr.setString(2, Password);
            pr.setString(1, Nombre);
            rs=pr.executeQuery();
            rs.next();

            setNombre((String) rs.getString("nombre"));
            setPassword((String)rs.getString("password"));
            setTipoUsuario((String) rs.getString("tipo"));

            return true;


        }
           
     catch(Exception ex){
            return false;

        }finally{
            try{
                rs.close();
                pr.close();
                con.close();
            }catch(Exception ex){

            }
        }
      
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

    public String getTipoUsuario() {
        return tipoUsuario;
    }

    public void setTipoUsuario(String tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }


}


