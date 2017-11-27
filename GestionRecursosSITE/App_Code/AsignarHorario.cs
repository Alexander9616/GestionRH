using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Clase diseñada para el formulario Asignar_Horas.aspx
/// </summary>
public class AsignarHorario
{
    static SqlCommand cmd;
    static DataSet ds;
    static SqlDataAdapter da;
    static string consulta;

    public static int idvalido(string id)
    {
        consulta = "select count(idEmpleado) from Empleados where idEmpleado = @id";
        cmd = new SqlCommand();
            if (conexion.conectar())
            {
                cmd.Connection = conexion.sqlConexion;
                cmd.CommandText = consulta;
                cmd.Parameters.AddWithValue("@id", id);
                int num = Convert.ToInt16(cmd.ExecuteScalar());
                conexion.cerrar();
                if (num == 1)
                {
                    return 1;
                }
                else
                {
                return 2;
                }
            }
        else
        {
            return 3;
        }
    }

    public static string ValidarUsuario(string id)
    {
        string consulta = "select idEmpleado from Empleados where idEmpleado = @id";
        cmd = new SqlCommand();
        if (conexion.conectar())
        {
            cmd.Connection = conexion.sqlConexion;
            cmd.CommandText = consulta;
            cmd.Parameters.AddWithValue("@id", id);
            string user = cmd.ExecuteScalar().ToString();
            conexion.cerrar();
            return user;
        }
        else
        {
            return "Error";
        }
    }

    public static bool NuevoHorario(string id,int idHorario)
    {
        if (conexion.conectar())
        {
            cmd = new SqlCommand();
            cmd.Connection = conexion.sqlConexion;
            cmd.CommandText = "update EmpleadoHorarios set idHorario = @idHorario where idEmpleado = @id";
            cmd.Parameters.AddWithValue("@id",id);
            cmd.Parameters.AddWithValue("@idHorario", idHorario);
            cmd.ExecuteNonQuery();
            conexion.cerrar();
            return true;
        }
        else
        {
            return false;
        }
    }

    public static string Nombre(string id)
    {
        if (conexion.conectar())
        {
            cmd = new SqlCommand();
            cmd.Connection = conexion.sqlConexion;
            cmd.CommandText = "Select nombres+' '+apellidos from Empleados where idEmpleado = @idEmpleado";
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

    public static string Cargo(string id)
    {
        if (conexion.conectar())
        {
            cmd = new SqlCommand();
            cmd.Connection = conexion.sqlConexion;
            cmd.CommandText = "select Cargo from EmpleadosCargo e inner join Cargos c on e.idCargo = c.idCargo where e.idEmpleado = @idEmpleado";
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


}