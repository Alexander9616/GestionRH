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
        
    }

    protected void lbCerrarSesion_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
    }

    protected void lbCerrarSesion_Click1(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
    }

    protected void lbCerrarSesion_Click2(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
    }
}
