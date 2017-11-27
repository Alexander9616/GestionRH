using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administrador : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            int permiso = Convert.ToInt32(Session["TUsuario"].ToString());
            lblNombre.Text = EditarPerfil.Nombre(Session["User"].ToString());
            if (permiso != 2)
            {
                Response.Redirect("Login.aspx");
            }
        }
        catch
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void lbCerrarSesion_Click(object sender, EventArgs e)
    {
        Session["User"] = "";
        Session.Clear();
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }
}
