using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DetallesPermiso : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        string ide = Request.QueryString["id"];

        dvPermiso.DataSource = solicitudPermisos.PermisoEnEspera(Convert.ToInt32(ide));
        dvPermiso.DataBind();

        ddlAcciones.DataSource = solicitudPermisos.ObtenerEstados();
        ddlAcciones.DataTextField = "estado";
        ddlAcciones.DataValueField = "idEstado";
        ddlAcciones.DataBind();
    }
}