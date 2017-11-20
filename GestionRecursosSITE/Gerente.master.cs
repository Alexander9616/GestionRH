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
        lblNombre.Text = EditarPerfil.Nombre(Session["User"].ToString());
  
    }
    protected void lbCerrarSesion_Click1(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
    }
}
