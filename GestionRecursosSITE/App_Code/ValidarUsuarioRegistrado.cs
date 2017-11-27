using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Clase para devolver si el usuario está en estado 5 = "Desertado" si es así que no lo muestre
/// </summary>
public class ValidarUsuarioRegistrado
{
    static SqlCommand cmd;
    static string consulta;
    public static bool ValidarUsuario(string id)
    {
        cmd = new SqlCommand();
        consulta = "select idEstado from Empleados where idEmpleado = @idEmpleado";
        int res;
        if (conexion.conectar())
        {
            cmd.Connection = conexion.sqlConexion;
            cmd.CommandText = consulta;
            cmd.Parameters.AddWithValue("@idEmpleado", id);
            res = Convert.ToInt16(cmd.ExecuteScalar());
            conexion.cerrar();
        }
        else
        {
            res = 1; ;
        }

        if (res == 5)
        {
            return false;
        }
        else
        {
            return true;
        }
    }


    /*Cómo utilizar esta clase dentro de los *.aspx
     if (ValidarUsuarioRegistrado.ValidarUsuario(id))
        {

        }
        else
        {
            Response.Write("<script>alert('El usuario no existe en el registro')</script>");
        }
     */
}