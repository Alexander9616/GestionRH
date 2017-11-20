using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Empleado : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblNombre.Text = EditarPerfil.Nombre(Session["User"].ToString());
        int permiso = Convert.ToInt32(Session["TUsuario"].ToString());
        if(Session["User"]==null || permiso !=1)
        {
            Response.Redirect("Login.aspx");
        }

    }


    protected void lbCerrarSesion_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }


}
