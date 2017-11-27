using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Clase para el formulario EditarRegistros.aspx
/// </summary>
public class EditarRegistros1
{
    static SqlCommand cmd;
    static SqlDataAdapter da;
    static DataSet ds;
    static string consulta;

    public static int Cargo(string id)
    {
        cmd = new SqlCommand();
        if (conexion.conectar())
        {
            consulta = "select idCargo from EmpleadosCargo where idEmpleado = @idEmpleado";
            cmd.Connection = conexion.sqlConexion;
            cmd.CommandText = consulta;
            cmd.Parameters.AddWithValue("@idEmpleado", id);
            int cargo = Convert.ToInt16(cmd.ExecuteScalar());
            conexion.cerrar();
            return cargo;
        }
        else
        {
            return 0;
        }
    }

    public static string Nombre(string id)
    {
        if (conexion.conectar())
        {
            cmd = new SqlCommand();
            cmd.Connection = conexion.sqlConexion;
            cmd.CommandText = "Select nombres from Empleados where idEmpleado = @idEmpleado";
            cmd.Parameters.AddWithValue("@idEmpleado", id);
            string nombre = cmd.ExecuteScalar().ToString();
            conexion.cerrar();
            return nombre;
        }
        else
        {
            return "Error conectando";
        }
    }

    public static string Apellidos(string id)
    {
        if (conexion.conectar())
        {
            cmd = new SqlCommand();
            cmd.Connection = conexion.sqlConexion;
            cmd.CommandText = "Select apellidos from Empleados where idEmpleado = @idEmpleado";
            cmd.Parameters.AddWithValue("@idEmpleado", id);
            string nombre = cmd.ExecuteScalar().ToString();
            conexion.cerrar();
            return nombre;
        }
        else
        {
            return "Error conectando";
        }
    }

    public static string Dui(string id)
    {
        if (conexion.conectar())
        {
            cmd = new SqlCommand();
            cmd.Connection = conexion.sqlConexion;
            cmd.CommandText = "Select dui from Empleados where idEmpleado = @idEmpleado";
            cmd.Parameters.AddWithValue("@idEmpleado", id);
            string nombre = cmd.ExecuteScalar().ToString();
            conexion.cerrar();
            return nombre;
        }
        else
        {
            return "Error conectando";
        }
    }

    public static string Nit(string id)
    {
        if (conexion.conectar())
        {
            cmd = new SqlCommand();
            cmd.Connection = conexion.sqlConexion;
            cmd.CommandText = "Select nit from Empleados where idEmpleado = @idEmpleado";
            cmd.Parameters.AddWithValue("@idEmpleado", id);
            string nombre = cmd.ExecuteScalar().ToString();
            conexion.cerrar();
            return nombre;
        }
        else
        {
            return "Error conectando";
        }
    }

    public static string FechaIngreso(string id)
    {
        if (conexion.conectar())
        {
            cmd = new SqlCommand();
            cmd.Connection = conexion.sqlConexion;
            cmd.CommandText = "select convert(varchar(10), [Fecha Ingreso], 103) from Empleados where idEmpleado = @idEmpleado";
            cmd.Parameters.AddWithValue("@idEmpleado", id);
            string nombre = cmd.ExecuteScalar().ToString();
            conexion.cerrar();
            return nombre;
        }
        else
        {
            return "Error conectando";
        }
    }

    public static string FechaNacimiento(string id)
    {
        if (conexion.conectar())
        {
            cmd = new SqlCommand();
            cmd.Connection = conexion.sqlConexion;
            cmd.CommandText = "select convert(varchar(10), FechaNacimiento, 103) from Empleados where idEmpleado = @idEmpleado";
            cmd.Parameters.AddWithValue("@idEmpleado", id);
            string nombre = cmd.ExecuteScalar().ToString();
            conexion.cerrar();
            return nombre;
        }
        else
        {
            return "Error conectando";
        }
    }

    public static string Salario(string id)
    {
        if (conexion.conectar())
        {
            cmd = new SqlCommand();
            cmd.Connection = conexion.sqlConexion;
            cmd.CommandText = "Select salario from Empleados where idEmpleado = @idEmpleado";
            cmd.Parameters.AddWithValue("@idEmpleado", id);
            string nombre = cmd.ExecuteScalar().ToString();
            conexion.cerrar();
            return nombre;
        }
        else
        {
            return "Error conectando";
        }
    }

    public static bool ValidarUsuario(string id)
    {
        cmd = new SqlCommand();
        consulta = "select count(idEmpleado) from Empleados where idEmpleado = @idEmpleado";
        int res;
        if (conexion.conectar())
        {
            cmd.Connection = conexion.sqlConexion;
            cmd.CommandText = consulta;
            cmd.Parameters.AddWithValue("@idEmpleado", id);
            res = Convert.ToInt16(cmd.ExecuteScalar());
            conexion.cerrar();
        }
        else
        {
            res = 0; ;
        }

        if (res == 1)
        {
            return true;
        }
        else
        {
            return false;
        }
    }


    public static bool ActualizarUsuario(string id, string nombre, string apellido, string dui, string nit, double salario, int cargo)
    {

        try
        {
            cmd = new SqlCommand();
            if (conexion.conectar())
            {
                cmd.Connection = conexion.sqlConexion;
                cmd.CommandText = "spActualizarRegistros";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idEmpleado", id);
                cmd.Parameters.AddWithValue("@nombres", nombre);
                cmd.Parameters.AddWithValue("@apellidos", apellido);
                cmd.Parameters.AddWithValue("@cargo", cargo);
                cmd.Parameters.AddWithValue("@dui", dui);
                cmd.Parameters.AddWithValue("@nit", nit);
                cmd.Parameters.AddWithValue("@salario", salario);
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