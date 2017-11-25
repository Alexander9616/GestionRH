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
    private static SqlDataAdapter ad;
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
            dt = null;
        }
        return dt;
    }

    public static DataSet ListaEmpleados(string user)
    {
        DataSet ds = new DataSet();
        consulta = "select e.idEmpleado as ID,e.nombres as Nombre,e.apellidos as Apellido,e.telefono,Cargos.Cargo,es.estado " ;
        consulta += "from Empleados as e inner join EstadoEmpleados as es ";
        consulta += "on e.idEstado = es.idEstado inner join EmpleadosCargo as ec ";
        consulta += "on ec.idEmpleado = e.idEmpleado inner join Cargos ";
        consulta += "on Cargos.idCargo = ec.idCargo where e.idEmpleado <> @user;";

        cmd = new SqlCommand();
        try
        {
            cmd.CommandText = consulta;
            cmd.Parameters.AddWithValue("@user",user);
            conexion.conectar();
            cmd.Connection = conexion.sqlConexion;
            ad = new SqlDataAdapter();
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

    public static DataSet buscarEstado(int id,string user)
    {
        DataSet ds = new DataSet();
        consulta = "select e.idEmpleado as ID,e.nombres as Nombre,e.apellidos as Apellido,e.telefono,Cargos.Cargo,es.estado ";
        consulta += "from Empleados as e inner join EstadoEmpleados as es ";
        consulta += "on e.idEstado = es.idEstado inner join EmpleadosCargo as ec ";
        consulta += "on ec.idEmpleado = e.idEmpleado inner join Cargos ";
        consulta += "on Cargos.idCargo = ec.idCargo where e.idEstado = @estado and e.idEmpleado <> @user ;";
        cmd = new SqlCommand();
        try
        {
            cmd.CommandText = consulta;
            cmd.Parameters.AddWithValue("@estado", id);
            cmd.Parameters.AddWithValue("@user", user);
            conexion.conectar();
            cmd.Connection = conexion.sqlConexion;
            ad = new SqlDataAdapter();
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

    public static DataSet buscarEmpleado(string buscar,string user)
    {
        DataSet ds = new DataSet();
        consulta = "select e.idEmpleado as ID,e.nombres as Nombre,e.apellidos as Apellido,e.telefono,Cargos.Cargo,es.estado ";
        consulta += "from Empleados as e inner join EstadoEmpleados as es ";
        consulta += "on e.idEstado = es.idEstado inner join EmpleadosCargo as ec ";
        consulta += "on ec.idEmpleado = e.idEmpleado inner join Cargos ";
        consulta += "on Cargos.idCargo = ec.idCargo where (e.idEmpleado like @buscar and e.idEmpleado<> @user) or (e.nombres like @buscar and e.idEmpleado<> @user) or (e.apellidos like @buscar and e.idEmpleado<> @user);";
        try
        {
            cmd = new SqlCommand();
            ad = new SqlDataAdapter();
            conexion.conectar();
            cmd.CommandText = consulta;
            cmd.Parameters.AddWithValue("@buscar","%"+buscar+"%");
            cmd.Parameters.AddWithValue("@user",user);
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

    public static DataSet ListaTodos()
    {
        DataSet ds = new DataSet();
        consulta = "select e.idEmpleado as ID,e.nombres as Nombre,e.apellidos as Apellido,e.telefono,Cargos.Cargo,es.estado ";
        consulta += "from Empleados as e inner join EstadoEmpleados as es ";
        consulta += "on e.idEstado = es.idEstado inner join EmpleadosCargo as ec ";
        consulta += "on ec.idEmpleado = e.idEmpleado inner join Cargos ";
        consulta += "on Cargos.idCargo = ec.idCargo;";

        cmd = new SqlCommand();
        try
        {
            cmd.CommandText = consulta;
            conexion.conectar();
            cmd.Connection = conexion.sqlConexion;
            ad = new SqlDataAdapter();
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