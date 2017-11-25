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

    public static DataSet Todos(string fecha)
    {
        DataSet ds = new DataSet();
        cmd = new SqlCommand();
        ad = new SqlDataAdapter();
        consulta = "select p.idPermiso,p.idEmpleado,p.FechaHora,concat(p.duracion, ' ', d.descripcion) as Duracion,p.diaInicio,p.diFinal,es.estado from Permisos as p inner join descripcionDuracion as d on p.DescripcionDuracion = d.idDescripcion inner join MotivosPermiso as m on p.idMotivo = m.idMotivo inner join EstadoPermiso as es on p.idEstado = es.idEstado where p.diaInicio < @fechaActual;";
        cmd.CommandText = consulta;
        cmd.Parameters.AddWithValue("@fechaActual", fecha);
       
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
    public static DataSet BuscarPorEmpleado(string buscar,string fecha)
    {
        DataSet ds = new DataSet();
        cmd = new SqlCommand();
        ad = new SqlDataAdapter();
        consulta = "select p.idPermiso,p.idEmpleado,p.FechaHora,concat(p.duracion, ' ', d.descripcion) as Duracion,p.diaInicio,p.diFinal,es.estado from Permisos as p inner join descripcionDuracion as d on p.DescripcionDuracion = d.idDescripcion inner join MotivosPermiso as m on p.idMotivo = m.idMotivo inner join EstadoPermiso as es on p.idEstado = es.idEstado where  p.idEmpleado like @buscar and p.diaInicio < @fechaActual;";
        cmd.CommandText = consulta;
        cmd.Parameters.AddWithValue("@buscar","%"+buscar+"%");
        cmd.Parameters.AddWithValue("@fechaActual",fecha);
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

    public static DataSet BuscarFecha(string fechaI,string fechaF,string fechaA)
    {
        DataSet ds = new DataSet();
        cmd = new SqlCommand();
        ad = new SqlDataAdapter();
        consulta = "select p.idPermiso,p.idEmpleado,p.FechaHora,concat(p.duracion, ' ', d.descripcion) as Duracion,p.diaInicio,p.diFinal,es.estado from Permisos as p inner join descripcionDuracion as d on p.DescripcionDuracion = d.idDescripcion inner join MotivosPermiso as m on p.idMotivo = m.idMotivo inner join EstadoPermiso as es on p.idEstado = es.idEstado where p.diaInicio between @fechaI and @fechaF and  p.diaInicio < @fechaA;";
        cmd.CommandText = consulta;
        cmd.Parameters.AddWithValue("@fechaI",fechaI);
        cmd.Parameters.AddWithValue("@fechaF", fechaF);
        cmd.Parameters.AddWithValue("@fechaA", fechaA);
       

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

    public static DataSet BuscarEstado(string fecha,int estado)
    {
        DataSet ds = new DataSet();
        cmd = new SqlCommand();
        ad = new SqlDataAdapter();
        consulta = "select p.idPermiso,p.idEmpleado,p.FechaHora,concat(p.duracion, ' ', d.descripcion) as Duracion,p.diaInicio,p.diFinal,es.estado from Permisos as p inner join descripcionDuracion as d on p.DescripcionDuracion = d.idDescripcion inner join MotivosPermiso as m on p.idMotivo = m.idMotivo inner join EstadoPermiso as es on p.idEstado = es.idEstado where p.idEstado=@estado and p.diaInicio < @fechaActual;";
        cmd.CommandText = consulta;
        cmd.Parameters.AddWithValue("@estado",estado);
        cmd.Parameters.AddWithValue("@fechaActual", fecha);

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