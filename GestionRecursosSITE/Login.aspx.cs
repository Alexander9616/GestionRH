using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    string fecha;
    protected void Page_Load(object sender, EventArgs e)
    {
        fecha = DateTime.Today.ToString("yyyy/MM/dd");
    }

    protected void btnEntrar_Click(object sender, EventArgs e)
    {
        string usuario = txtUsuario.Text;
        string password = txtPassword.Text;
        if(conexion.conectar())
        {
            conexion.cerrar();
            EstadoPermisos.PermisosCaducados(fecha);
            EstadoPermisos.ActivarPermiso(fecha);
            if (LoginM.autenticar(usuario, password) == true)
            {
                
                Session["User"] = usuario;
                Session["TUsuario"] = LoginM.tipoUser(usuario);
                switch (LoginM.tipoUser(usuario))
                {
                  
                    case 1:
                        Response.Redirect("Prueba.aspx");
                        break;
                    case 2:
                        Response.Redirect("PruebaAdmin.aspx");
                        break;
                    case 3:
                        Response.Redirect("PruebaGerente.aspx");
                        break;
                }

            }
            else
            {
                Response.Write("<script>alert('Usuario o Contraseña no son validos!');</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('No se puede conectar, intente más tarde!.');</script>");
        }


    }
}