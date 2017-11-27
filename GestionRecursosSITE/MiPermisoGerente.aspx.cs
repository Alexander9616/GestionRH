using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MiPermisoGerente : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        grvPermiso.DataSource = EstadoPermisos.consultarEstado(Session["User"].ToString());
        grvPermiso.DataBind();
        if (grvPermiso.Rows.Count == 0)
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
        Response.Redirect("PruebaGerente.aspx");
    }
}