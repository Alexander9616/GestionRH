using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DetallesPermiso : System.Web.UI.Page
{
    string ide;
    protected void Page_Load(object sender, EventArgs e)
    {
         ide = Request.QueryString["id"];

        dvPermiso.DataSource = solicitudPermisos.DetallePermiso(Convert.ToInt32(ide));
        dvPermiso.DataBind();
        if(!Page.IsPostBack)
        {
            ddlAcciones.DataSource = solicitudPermisos.ObtenerEstados2();
            ddlAcciones.DataTextField = "estado";
            ddlAcciones.DataValueField = "idEstado";
            ddlAcciones.DataBind();
        }
       
    }

    protected void btnProcesar_Click(object sender, EventArgs e)
    {
        int estado = Convert.ToInt32(ddlAcciones.SelectedValue);
        if(estado==1)
        {
            lblMensaje.Text = "Seleccione un estado Diferente!";
        }
        else
        {
            lblMensaje.Text = string.Empty;
            lblResultado.Text = solicitudPermisos.Notificar(Convert.ToInt32(ide), Session["User"].ToString(), estado);

            dvPermiso.DataSource = solicitudPermisos.DetallePermiso(Convert.ToInt32(ide));
            dvPermiso.DataBind();
        }
    }
}