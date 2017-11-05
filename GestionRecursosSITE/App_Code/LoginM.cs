using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class LoginM
{

    private static SqlCommand cmd;
    private static string consulta = string.Empty;
    private static SqlDataReader lector;
    public static bool autenticar(string user,string password)
    {
        bool res = false;
        cmd = new SqlCommand();
        consulta = "select count(*) from Empleados where idEmpleado=@user and clave=@password; ";
        cmd.CommandText = consulta;
        cmd.Parameters.AddWithValue("@user",user);
        cmd.Parameters.AddWithValue("@password",password);
        try
        {
            conexion.conectar();
            cmd.Connection = conexion.sqlConexion;
            int resultado = Convert.ToInt32(cmd.ExecuteScalar());
            conexion.cerrar();
            if (resultado == 1)
            {
                res = true;
            }
            else
            {
                res = false;
            }
        }
        catch
        {
           
        }
   
        return res;
    }

    public static int tipoUser(string user)
    {
        int tipo = 0;
        cmd = new SqlCommand();
        consulta = "select idCargo from EmpleadosCargo where idEmpleado=@user;";
        cmd.Parameters.AddWithValue("@user",user);
        cmd.CommandText = consulta;
        try
        {
            conexion.conectar();
            cmd.Connection = conexion.sqlConexion;
            lector = cmd.ExecuteReader();
            if (lector.HasRows)
            {
                while (lector.Read())
                {
                    tipo = lector.GetInt32(0);
                }
                conexion.cerrar();
                lector.Close();
            }
        }
        catch
        {

        }
        return tipo;
    }

    public static string nombreUser(string user)
    {
        string nombre = string.Empty;
        cmd = new SqlCommand();
        consulta = "Select (nombre+' '+apellidos) from Empleados where idEmpleado=@user;";
        try
        {
            conexion.conectar();
            cmd.CommandText = consulta;
            cmd.Parameters.AddWithValue("@user",user);
            cmd.Connection = conexion.sqlConexion;
            lector = cmd.ExecuteReader();
            while (lector.Read())
            {
                nombre = lector.GetString(0);
            }
            conexion.cerrar();
            lector.Close();
        }
        catch
        {

        }
        return nombre;
    }
}