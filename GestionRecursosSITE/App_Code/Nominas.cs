using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Descripción breve de Nominas
/// </summary>
public class Nominas
{
    private static SqlCommand cmd;
    private static string consulta = string.Empty;

    public static DataTable estadoEmpleados()
    {
        DataTable dt = new DataTable();
        cmd = new SqlCommand();
        consulta = "select * from EstadoEmpleados;";
        try
        {
            conexion.conectar();
            cmd.CommandText = consulta;
            cmd.Connection = conexion.sqlConexion;
            SqlDataAdapter ad = new SqlDataAdapter();
            ad.SelectCommand = cmd;
            ad.Fill(dt);
            conexion.cerrar();
        }
        catch
        {

        }
        return dt;
    }
}