using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;


public class conexion
{
    private static string cadena = @"Data Source=.;Initial Catalog=bdPYMES;Integrated Security=True";
    public  static SqlConnection sqlConexion;

    public static bool conectar()
    {
        bool res = false;

        
        try
        {
            sqlConexion = new SqlConnection();
            sqlConexion.ConnectionString = cadena;
            sqlConexion.Open();
            res = true;
        }
        catch
        {
            res = false;
        }
        return res;
    }

    public static void cerrar()
    {
       try
        {
            sqlConexion.Close();
        }
        catch
        {

        }
    }

}