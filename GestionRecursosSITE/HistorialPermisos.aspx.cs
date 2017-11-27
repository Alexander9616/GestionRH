using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HistorialPermisos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            ddlEstados.DataSource =HistorialP.ObtenerEstados();
            ddlEstados.DataTextField = "estado";
            ddlEstados.DataValueField = "idEstado";
            ddlEstados.DataBind();

            grvPermisos.DataSource = HistorialP.Todos();
            grvPermisos.DataBind();
            if(grvPermisos.Rows.Count==0)
            {
                lblMensaje.Text = "No hay registros";
            }
            else
            {
                lblMensaje.Text = string.Empty;
            }
        }
    }
    private void Mensaje(string busqueda)
    {
        if(grvPermisos.Rows.Count==0)
        {
            lblMensaje.Text = "No se encontraron datos para: "+busqueda;
        }
        else
        {
            lblMensaje.Text = string.Empty;
        }
    }
    protected void btnBuscarEmpleado_Click(object sender, EventArgs e)
    {
        string buscar = txtEmpleado.Text.Trim();
        grvPermisos.DataSource = HistorialP.BuscarPorEmpleado(buscar);
        grvPermisos.DataBind();
        Mensaje(buscar);
    }

    protected void btnTodos_Click(object sender, EventArgs e)
    {
        grvPermisos.DataSource = HistorialP.Todos();
        grvPermisos.DataBind();
        if (grvPermisos.Rows.Count == 0)
        {
            lblMensaje.Text = "No hay registros";
        }
        else
        {
            lblMensaje.Text = string.Empty;
        }
    }

    protected void btnBuscarFecha_Click(object sender, EventArgs e)
    {

        DateTime fechaI = Convert.ToDateTime(txtFechaInicio.Text);
        DateTime fechaF = Convert.ToDateTime(txtFechaFinal.Text);
        grvPermisos.DataSource = HistorialP.BuscarFecha(txtFechaInicio.Text, txtFechaFinal.Text);
        grvPermisos.DataBind();
        Mensaje("Fecha: " + txtFechaInicio.Text + " y " + txtFechaFinal.Text);
    }

    protected void ddlEstados_SelectedIndexChanged(object sender, EventArgs e)
    {
        int estado = Convert.ToInt32(ddlEstados.SelectedValue);
        grvPermisos.DataSource = HistorialP.BuscarEstado(estado);
        grvPermisos.DataBind();
        Mensaje(ddlEstados.SelectedItem.ToString());
    }
}