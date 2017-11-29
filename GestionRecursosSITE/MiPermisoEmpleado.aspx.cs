using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MiPermisoEmpleado : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            grvPermiso.DataSource = EstadoPermisos.consultarEstado(Session["User"].ToString());
            grvPermiso.DataBind();
        }
        catch
        {
            Response.Redirect("Login.aspx");
        }
        if (grvPermiso.Rows.Count==0)
        {
            lblMensaje.Text = "Usted no posee Permisos Solicitados!";
        }
        else
        {
            lblMensaje.Text = string.Empty;
        }
    }

    protected void btnOK_Click(object sender, EventArgs e)
    {
        Response.Redirect("Prueba.aspx");
    }
}