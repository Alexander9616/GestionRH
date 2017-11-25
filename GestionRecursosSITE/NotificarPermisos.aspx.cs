using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class Permisos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            grvPermisos.DataSource = solicitudPermisos.PermisosEnEspera();
            grvPermisos.DataBind();
            if(grvPermisos.Rows.Count==0)
            {
                lblMensaje.Text = "No hay Permisos Pendientes...";
            }
            else
            {
                lblMensaje.Text = string.Empty;
            }
        }
    }

    protected void grvPermisos_SelectedIndexChanged(object sender, EventArgs e)
    {
        int idPermiso = Convert.ToInt32(grvPermisos.SelectedRow.Cells[1].Text);
        string id = idPermiso.ToString();
        Response.Redirect("DetallesPermiso.aspx?id="+id);
        
    }
}