using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Esta clase puede ser usada para todo tipo de usuario
/// La tablas 'Empleados' es igual para todo los empleados (usuarios)
/// </summary>
public class EditarPerfil
{
    private static string cadena = "";
    private static string consulta;
    private static SqlCommand cmd;



    //Método para enviar nombre al label: "lblNombre" de editar perfil
    public static string Nombre(string id)
    {
        string nombre = "";
        consulta = "select nombres +' '+apellidos from Empleados where idEmpleado = @id";
        try
        {
            if (conexion.conectar())
            {
                cmd = new SqlCommand();
                cmd.CommandText = consulta;
                cmd.Connection = conexion.sqlConexion;
                cmd.Parameters.AddWithValue("@id", id);
                nombre = cmd.ExecuteScalar().ToString().Trim();
                conexion.cerrar();
            }
        }
        catch 
        {
            nombre = "Error conectando a la Base de Datos";
        }
        return nombre;

    }



    //Método para enviar nombre al label: "lblUser" de editar perfil
    public static string Usuario(string id)
    {
        string nombre = "";
        consulta = "select idEmpleado from Empleados where idEmpleado = @id";
        try
        {
            if (conexion.conectar())
            {
                cmd = new SqlCommand();
                cmd.CommandText = consulta;
                cmd.Connection = conexion.sqlConexion;
                cmd.Parameters.AddWithValue("@id", id);
                nombre = cmd.ExecuteScalar().ToString().Trim();
                conexion.cerrar();
            }
            
        }
        catch
        {
            nombre = "Error conectando a la Base de Datos";
        }
        return nombre;
    }


    //Método para enviar contraseña al label: "txtPass" y "txtConfirmarPass" de editar perfil
    public static string Pass(string id)
    {
        string nombre = "";
        consulta = "select clave from Empleados where idEmpleado = @id";
        try
        {
            if (conexion.conectar())
            {
                cmd = new SqlCommand();
                cmd.CommandText = consulta;
                cmd.Connection = conexion.sqlConexion;
                cmd.Parameters.AddWithValue("@id", id);
                nombre = cmd.ExecuteScalar().ToString().Trim();
                conexion.cerrar();
            }
        }
        catch
        {
            nombre = "Error conectando a la Base de Datos";
        }
        return nombre;
    }


    //Método para enviar contraseña al label: "txtDireccion" de editar perfil
    public static string Direccion(string id)
    {
        string nombre = "";
        consulta = "select direccion from Empleados where idEmpleado = @id";
        try
        {
            if (conexion.conectar())
            {
                cmd = new SqlCommand();
                cmd.CommandText = consulta;
                cmd.Connection = conexion.sqlConexion;
                cmd.Parameters.AddWithValue("@id", id);
                nombre = cmd.ExecuteScalar().ToString().Trim();
                conexion.cerrar();
            }
        }
        catch
        {
            nombre = "Error conectando a la Base de Datos";
        }
        return nombre;
    }

    //Método para enviar telefono al textbox: "txtTelefono" de editar perfil
    public static string Telefono(string id)
    {
        string nombre = "";
        consulta = "select telefono from Empleados where idEmpleado = @id";
        try
        {
            if (conexion.conectar())
            {
                cmd = new SqlCommand();
                cmd.CommandText = consulta;
                cmd.Connection = conexion.sqlConexion;
                cmd.Parameters.AddWithValue("@id", id);
                nombre = cmd.ExecuteScalar().ToString().Trim();
                conexion.cerrar();
            }
        }
        catch
        {
            nombre = "Error conectando a la Base de Datos";
        }
        return nombre;
    }



    //Método para actualizar los datos en la base de datos
    public static bool Actualizar(string dir, string tel, string id)
    {
        
        try
        {
            if (conexion.conectar())
            {
                cmd = new SqlCommand();
                cmd.CommandText = "spActualizarDatos ";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@direccion", dir);
                cmd.Parameters.AddWithValue("@telefono", tel);
                cmd.Parameters.AddWithValue("@id", id);
                cmd.Connection = conexion.sqlConexion;
                cmd.ExecuteNonQuery();
                conexion.cerrar();
                return true;
            }
            else
            {
                return false;
            }
            
        }
        catch 
        {

            return false;
        }
    }


    public static bool ActualizarClave(string pass, string id)
    {
        
        try
        {
            if (conexion.conectar())
            {
                cmd = new SqlCommand();
                cmd.CommandText = "spCambiarClave ";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@pass", pass);
                cmd.Parameters.AddWithValue("@id", id);
                cmd.Connection = conexion.sqlConexion;
                cmd.ExecuteNonQuery();
                conexion.cerrar();
                return true;
            }
            else
            {
                return false;
            }
            
        }
        catch
        {
            return false;
        }
    }
}