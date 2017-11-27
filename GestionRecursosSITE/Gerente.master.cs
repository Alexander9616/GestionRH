using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Gerente : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            int permiso = Convert.ToInt32(Session["TUsuario"].ToString());
            lblNombre.Text = EditarPerfil.Nombre(Session["User"].ToString());
            if (permiso != 3)
            {
                Response.Redirect("Login.aspx");
            }
        }
        catch
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void lbCerrarSesion_Click1(object sender, EventArgs e)
    {
        Session["User"] = "";
        Session.Clear();
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }
}
