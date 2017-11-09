using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Descripción breve de AgregarUsuario
/// </summary>
public class AgregarUsuario1
{
    private static SqlCommand cmd = new SqlCommand();
    private static string consulta;
    private static DataSet ds = new DataSet();
    private static SqlDataAdapter da = new SqlDataAdapter();

    //public static DataSet MostrarCargos()
    //{
    //    consulta = "Select Cargo from Cargos";
    //    cmd.CommandText = consulta;
    //    cmd.Connection = conexion.sqlConexion;
    //    DataSet ds = new DataSet();
    //    SqlDataAdapter da = new SqlDataAdapter();
    //    try
    //    {
    //        if (conexion.conectar())
    //        {
    //            da.SelectCommand = cmd;
    //            da.Fill(ds);
    //            conexion.cerrar();   
    //        }
    //        return ds;
    //    }
    //    catch
    //    {

    //        return ds;
    //    }
    //}



    public static string numEmpleado()
    {
        string num;
        consulta = "select count(idEmpleado) from Empleados";
        try
        {
            if (conexion.conectar())
            {
                cmd.CommandText = consulta;
                cmd.Connection = conexion.sqlConexion;
                num = (Convert.ToInt32(cmd.ExecuteScalar())+1).ToString();
                conexion.cerrar();
            }
            else
            {
                num = "Error conectando";
            }
        }
        catch 
        {

            num = "Error";
        }
        return num;
    }

    public static bool AgregarUsuario(string id,string nombre,string apellido,string dui,string nit,string FechaIngreso,string clave,string direccion,double salario,int estado,string telefono,string FechaNacimiento,int cargo)
    {
        
        try
        {
            if (conexion.conectar())
            {
                cmd.Connection = conexion.sqlConexion;
                cmd.CommandText = "spAgregarUsuario";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idEmpleado", id);
                cmd.Parameters.AddWithValue("@nombres", nombre);
                cmd.Parameters.AddWithValue("@apellidos", apellido);
                cmd.Parameters.AddWithValue("@dui", dui);
                cmd.Parameters.AddWithValue("@nit", nit);
                cmd.Parameters.AddWithValue("@FechaIngreso", FechaIngreso);
                cmd.Parameters.AddWithValue("@clave", clave);
                cmd.Parameters.AddWithValue("@direccion", direccion);
                cmd.Parameters.AddWithValue("@salario", salario);
                cmd.Parameters.AddWithValue("@idEstado", estado);
                cmd.Parameters.AddWithValue("@telefono", telefono);
                cmd.Parameters.AddWithValue("@FechaNacimiento", FechaNacimiento);
                cmd.Parameters.AddWithValue("@cargo", cargo);
                cmd.ExecuteNonQuery();
                conexion.cerrar();
                return true;
            }
            else
            {
                return false;
            }
        }
        catch 
        {

            return false;
        }
    }

    public static string UltimoUsuario()
    {
        consulta = "select top 1 idEmpleado from Empleados order by idEmpleado desc";
        string user = "";
        try
        {
            if (conexion.conectar())
            {
                cmd.Connection = conexion.sqlConexion;
                cmd.CommandText = consulta;
                user = cmd.ExecuteScalar().ToString();
                conexion.cerrar();
            }
        }
        catch 
        {

            user = "Error conectando";
        }
        return user;
    }

    public static string UltimaClave()
    {
        consulta = "select top 1 clave from Empleados order by idEmpleado desc";
        string user = "";
        try
        {
            if (conexion.conectar())
            {
                cmd.Connection = conexion.sqlConexion;
                cmd.CommandText = consulta;
                user = cmd.ExecuteScalar().ToString();
                conexion.cerrar();
            }
        }
        catch
        {

            user = "Error conectando";
        }
        return user;
    }
}