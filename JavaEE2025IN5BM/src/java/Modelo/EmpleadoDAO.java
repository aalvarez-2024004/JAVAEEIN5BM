package Modelo;

import Config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class EmpleadoDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;
    
    
    //Metodo que valida que el correo y contrasena (telefono) sean correctos
    //Si son deja entrar, sino, no deja entrar
    public Empleado validar(String emailEmpleado, String telefonoEmpleado){
        //Instanciar el objetdo de la entidad Empleado
        Empleado empleado = new Empleado();
        //Agregar una variable de tipo String para mostrar consulta de sql
        String sql = "{Call sp_validarEmpleado(?,?)}";
        try {
            con = cn.Conexion();
            ps = con.prepareCall(sql);
            ps.setString(1, emailEmpleado);
            ps.setString(2, telefonoEmpleado);
            rs = ps.executeQuery();
            while (rs.next()) {
                empleado.setCodigoEmpleado(rs.getInt("codigoEmpleado"));
                empleado.setNombreEmpleado(rs.getString("nombreEmpleado"));
                empleado.setApellidoEmpleado(rs.getString("apellidoEmpleado"));
                empleado.setEmailEmpleado(rs.getString("emailEmpleado"));
                empleado.setTelefonoEmpleado(rs.getString("telefonoEmpleado"));    
            }
        } catch (Exception e) {
            System.out.println("El usuario o contrasena son incorrectos");
            e.printStackTrace();
        }
        return empleado; //Empleado encontrado
    }
    
    //Metodo que permite hacer que se pueda registrar un nuevo empleado
    public boolean agregar(Empleado empleado) {
        //Llamar al procedimiento almacenado
        String sql = "{Call sp_agregarEmpleado(?,?,?,?,?,?)}";
        try {
            //Conectar a la vase de datos para preprarar la consulta
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            
            //Los parametros del procedimiento
            ps.setString(1, empleado.getNombreEmpleado());
            ps.setString(2, empleado.getApellidoEmpleado());
            ps.setString(3, empleado.getDireccionEmpleado());
            ps.setString(4, empleado.getTelefonoEmpleado());
            ps.setString(5, empleado.getEmailEmpleado());
            ps.setString(6, empleado.getPuestoEmpleado());
            
            //Se ejecuta la consulta, en caso de que se inserten correctamente, se retorna true
            int rows = ps.executeUpdate();
            return rows > 0;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        } 
    }

    
}
