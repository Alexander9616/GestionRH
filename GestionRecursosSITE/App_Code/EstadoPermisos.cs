using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Descripción breve de EstadoPermisos
/// </summary>
public class EstadoPermisos
{
    private static SqlCommand cmd;
    private static string consulta=string.Empty;
    private static SqlDataAdapter ad;

    public static DataSet consultarEstado(string usuario)
    {
        cmd = new SqlCommand();
        ad = new SqlDataAdapter();
        DataSet ds = new DataSet();
        consulta = "select p.idPermiso as [Nº Permiso], p.idEmpleado, mp.motivo, p.diaInicio, p.diFinal, ep.estado ";
        consulta += "from Permisos as p inner join EstadoPermiso as ep ";
        consulta += "on p.idEstado = ep.idEstado inner join MotivosPermiso as mp ";
        consulta += "on p.idMotivo = mp.idMotivo where p.idEmpleado=@user order by p.idPermiso desc;";
        //consulta += "group by p.idEmpleado, mp.motivo, p.diaInicio, p.diFinal, ep.estado;";
        cmd.CommandText = consulta;
        cmd.Parameters.AddWithValue("@user",usuario);
        try
        {
            conexion.conectar();
            cmd.Connection = conexion.sqlConexion;
            ad.SelectCommand = cmd;
            ad.Fill(ds);
            conexion.cerrar();
        }
        catch
        {
            ds = null;
        }
        return ds;
    }

    public static void PermisosCaducados(string fecha)
    {
        consulta = "stpPermisoCaducado ";
        cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = consulta;
        cmd.Parameters.AddWithValue("@fecha",fecha);
       
        try
        {
            conexion.conectar();
            cmd.Connection = conexion.sqlConexion;
            cmd.ExecuteNonQuery();
            conexion.cerrar();
        }
        catch
        {
            
        }
    }
    public static void ActivarPermiso(string fecha)
    {
        consulta = "stpActivarPermiso ";
        cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = consulta;
        cmd.Parameters.AddWithValue("@fecha", fecha);
        
        try
        {
            conexion.conectar();
            cmd.Connection = conexion.sqlConexion;
            cmd.ExecuteNonQuery();
            conexion.cerrar();
        }
        catch
        {
           
        }
    }
}