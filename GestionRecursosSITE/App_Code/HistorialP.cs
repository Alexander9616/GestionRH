using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Descripción breve de HistorialPermisos
/// </summary>
public class HistorialP
{
    private static SqlCommand cmd;
    private static SqlDataAdapter ad;
    private static string consulta = string.Empty;

    public static DataTable ObtenerEstados()
    {
        DataTable dt = new DataTable();
        ad = new SqlDataAdapter();
        cmd = new SqlCommand();
        consulta = "select * from EstadoPermiso where idEstado <> 1 and idEstado <> 4;";
        cmd.CommandText = consulta;
        conexion.conectar();
        cmd.Connection = conexion.sqlConexion;
        ad.SelectCommand = cmd;
        ad.Fill(dt);
        conexion.cerrar();
        try
        {

        }
        catch
        {
            dt = null;
        }
        return dt;
    }

    public static DataSet Todos()
    {
        DataSet ds = new DataSet();
        cmd = new SqlCommand();
        ad = new SqlDataAdapter();
        consulta = "select p.idPermiso,p.idEmpleado,ap.responsable,p.diaInicio,p.diFinal,ep.estado,ap.FechaHora ";
        consulta += "from Permisos as p inner join AuditoriaPermisos as ap ";
        consulta += "on p.idPermiso = ap.idPermiso inner join EstadoPermiso as ep ";
        consulta += "on p.idEstado = ep.idEstado";
        cmd.CommandText = consulta;
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
    public static DataSet BuscarPorEmpleado(string buscar)
    {
        DataSet ds = new DataSet();
        cmd = new SqlCommand();
        ad = new SqlDataAdapter();
        consulta = "select p.idPermiso,p.idEmpleado,ap.responsable,p.diaInicio,p.diFinal,ep.estado,ap.FechaHora ";
        consulta += "from Permisos as p inner join AuditoriaPermisos as ap ";
        consulta += "on p.idPermiso = ap.idPermiso inner join EstadoPermiso as ep ";
        consulta += "on p.idEstado = ep.idEstado where ap.idEmpleado like @buscar;";
        cmd.CommandText = consulta;
        cmd.Parameters.AddWithValue("@buscar","%"+buscar+"%");
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

    public static DataSet BuscarFecha(string fechaI,string fechaF)
    {
        DataSet ds = new DataSet();
        cmd = new SqlCommand();
        ad = new SqlDataAdapter();
        consulta = "select p.idPermiso,p.idEmpleado,ap.responsable,p.diaInicio,p.diFinal,ep.estado,ap.FechaHora ";
        consulta += "from Permisos as p inner join AuditoriaPermisos as ap ";
        consulta += "on p.idPermiso = ap.idPermiso inner join EstadoPermiso as ep ";
        consulta += "on p.idEstado = ep.idEstado where p.diaInicio between @fechaI and @fechaF;";
        cmd.CommandText = consulta;
        cmd.Parameters.AddWithValue("@fechaI",fechaI);
        cmd.Parameters.AddWithValue("@fechaF", fechaF);
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

    public static DataSet BuscarEstado(int estado)
    {
        DataSet ds = new DataSet();
        cmd = new SqlCommand();
        ad = new SqlDataAdapter();
        consulta = "select p.idPermiso,p.idEmpleado,ap.responsable,p.diaInicio,p.diFinal,ep.estado,ap.FechaHora ";
        consulta += "from Permisos as p inner join AuditoriaPermisos as ap ";
        consulta += "on p.idPermiso = ap.idPermiso inner join EstadoPermiso as ep ";
        consulta += "on p.idEstado = ep.idEstado where ap.estado=@estado;";
        cmd.CommandText = consulta;
        cmd.Parameters.AddWithValue("@estado",estado);
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

}