using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Descripción breve de SolicitarPermisos
/// </summary>
public class solicitudPermisos
{
    private static SqlCommand cmd;
    private static string consulta = string.Empty;
    private static SqlDataAdapter ad;

    public static DataTable ObtenerEstados()
    {
        DataTable dt = new DataTable();
        ad = new SqlDataAdapter();
        cmd = new SqlCommand();
        consulta = "select * from EstadoPermiso;";
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
    public static DataTable ObtenerTiempo()// dia, mes u hora
    {
        DataTable dt = new DataTable();
        ad = new SqlDataAdapter();
        consulta = "Select * from descripcionDuracion;";
        cmd = new SqlCommand();
        try
        {
            conexion.conectar();
            cmd.Connection = conexion.sqlConexion;
            cmd.CommandText = consulta;
            ad.SelectCommand=cmd;
            ad.Fill(dt);
            conexion.cerrar();
        }
        catch
        {
            dt = null;
        }
        return dt;
    }

    public static DataTable ObtenerMotivos()//metodo para llenar dropdowlist con los motivos preestblecidos
    {
        DataTable dt = new DataTable();
        ad = new SqlDataAdapter();
        consulta = "Select * from MotivosPermiso;";
        cmd = new SqlCommand();
        try
        {
            conexion.conectar();
            cmd.Connection = conexion.sqlConexion;
            cmd.CommandText = consulta;
            ad.SelectCommand = cmd;
            ad.Fill(dt);
            conexion.cerrar();
        }
        catch
        {
            dt = null;
        }
        return dt;
    }
   
    public static bool NuevoPermiso(string id,  int duracion, int descripcion,string diaInicio, int Motivo)
    {
        bool resp = false;
        cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "stpNuevoPermiso ";
        cmd.Parameters.AddWithValue("@id",id);
        cmd.Parameters.AddWithValue("@duracion",duracion);
        cmd.Parameters.AddWithValue("@descripcion",descripcion);
        cmd.Parameters.AddWithValue("@diaInicial",diaInicio);
        cmd.Parameters.AddWithValue("@motivo", Motivo);
        cmd.Parameters.AddWithValue("@estado",1);// preestablecido como en espera

        conexion.cerrar();
        try
        {
            conexion.conectar();
            cmd.Connection = conexion.sqlConexion;
            cmd.ExecuteNonQuery();
            resp = true;
            conexion.cerrar();

        }
        catch
        {
            resp = false;
        }
        return resp;
    }

    public static int validar(string usuario)// se valida que el usuario no tenga permisos en espera para solictar nuevos
    {
        int numero = 0;
        cmd = new SqlCommand();
        consulta = "Select count(idPermiso) from Permisos where idEmpleado=@id and idEstado=1;";
        cmd.CommandText = consulta;
        cmd.Parameters.AddWithValue("@id",usuario);
        try
        {
            conexion.conectar();
            cmd.Connection = conexion.sqlConexion;
            numero = Convert.ToInt32(cmd.ExecuteScalar());
            conexion.cerrar();
        }
        catch
        {
            numero = -1;
        }
        return numero;
    }

    public static DataSet PermisosEnEspera()
    {
        DataSet ds = new DataSet();
        ad = new SqlDataAdapter();
        consulta = "select p.idPermiso,p.idEmpleado,p.FechaHora,concat(p.duracion, ' ', d.descripcion) as Duracion,diaInicio,diFinal,es.estado from Permisos as p inner join descripcionDuracion as d on p.DescripcionDuracion = d.idDescripcion inner join MotivosPermiso as m on p.idMotivo = m.idMotivo inner join EstadoPermiso as es on p.idEstado = es.idEstado where p.idEstado = 1 order by p.diaInicio asc;";
        cmd = new SqlCommand();
        try
        {
            conexion.conectar();
            cmd.CommandText = consulta;
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
    public static DataSet DetallePermiso(int id)
    {
         DataSet ds = new DataSet();
         ad = new SqlDataAdapter();
        consulta = "select p.idPermiso,p.idEmpleado,concat(em.nombres,' ',em.apellidos) as Nombre,p.FechaHora,concat(p.duracion,' ',d.descripcion)as Duracion,diaInicio,diFinal,es.estado from Permisos as p inner join descripcionDuracion as d on p.DescripcionDuracion = d.idDescripcion inner join MotivosPermiso as m on p.idMotivo = m.idMotivo inner join EstadoPermiso as es on p.idEstado = es.idEstado inner join Empleados as em on em.idEmpleado = p.idEmpleado where  p.idPermiso=@id;";
        cmd = new SqlCommand();
        conexion.conectar();
        cmd.Parameters.AddWithValue("@id", id);
        cmd.CommandText = consulta;
        cmd.Connection = conexion.sqlConexion;
        ad.SelectCommand = cmd;
        ad.Fill(ds);
        conexion.cerrar();
        try
        {
           
        }
        catch
        {
            ds = null;
        }
        return ds;

    }
    public static string Notificar(int id,string responsable,int estado)
    {

        string resultado = string.Empty;
        cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "stpNotificar ";
        
        cmd.Parameters.AddWithValue("@id", id);
        cmd.Parameters.AddWithValue("@responsable",responsable);
        cmd.Parameters.AddWithValue("@estado",estado);
        try
        {
            conexion.conectar();
            cmd.Connection = conexion.sqlConexion;
            cmd.ExecuteNonQuery();
            conexion.cerrar();
            resultado = "Notificacion Exitosa!";
        }
        catch
        {
            resultado = "No se pudo procesar!";
        }
        return resultado;

    }

}