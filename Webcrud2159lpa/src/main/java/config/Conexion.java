/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package config;
import java.sql.*;

/**
 *
 * @author Leandro
 */
public class Conexion
{
    public String driver="com.mysql.jdbc.Driver";
    public Connection getConnection()
    {
        Connection conexion=null;
        try
        {
           Class.forName(driver);
           conexion=DriverManager.getConnection("jdbc:mysql://localhost:3306/webcrud2159","root","");
        }
        catch(ClassNotFoundException|SQLException e)
        {
            System.out.println(e);
        }
        return conexion;
    }
    public static void main(String [] args) throws SQLException
    {
        Connection conexion=null;
        Conexion con=new Conexion();
        conexion =con.getConnection();
    
        PreparedStatement ps;
        ResultSet rs;
    
        ps=conexion.prepareStatement("SELECT * FROM alumnos");
        rs=ps.executeQuery();
    
        while(rs.next())
        {
        int id=rs.getInt("id");
        String nombre=rs.getString("nombre");
        String apellido=rs.getString("apellido");
        String mail=rs.getString("mail");
        
        System.out.println("id:"+id+" Nombre:"+nombre+" Apellido:"+apellido+" Mail:"+mail);
        }
    }
}