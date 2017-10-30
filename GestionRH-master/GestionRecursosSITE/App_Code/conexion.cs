using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
/// <summary>
/// Descripción breve de conexion
/// </summary>
public class conexion
{
    private static SqlConnection cn;
    public static SqlConnection obtenerConexion()
    {
        cn = new SqlConnection();
        try
        {
            string cadena = "Data Source=localhost;Initial Catalog=bdPYMES;Integrated security=True;";
            cn.ConnectionString = cadena;
            cn.Open();
           
        }
        catch
        { }
        return cn;
    }

    public static void cerrarConexion()
    {
        try
        {
            cn.Close();
        }
        catch { }

    }
   
}