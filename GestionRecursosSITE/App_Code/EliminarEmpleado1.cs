using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Clase para el formulario EliminarEmpleado.aspx
/// </summary>
public class EliminarEmpleado1
{
    public static bool Eliminar(string id)
    {
        if (conexion.conectar())
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conexion.sqlConexion;
            cmd.CommandText = "spEliminarEmpleado";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("idEmpleado", id);
            cmd.ExecuteNonQuery();       
            return true;
        }
        else
        {
            return false;
        }
    }
}