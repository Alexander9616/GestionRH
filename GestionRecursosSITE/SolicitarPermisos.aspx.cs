using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SolicitarPermisos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtTiempo.MaxLength = 2;
        txtEmpleado.Enabled = false;
        btnProcesar.Enabled = false;
        if (!Page.IsPostBack)
        {
            ddlTiempo.DataSource = solicitudPermisos.ObtenerTiempo();
            ddlTiempo.DataTextField = "descripcion";
            ddlTiempo.DataValueField = "idDescripcion";
            ddlTiempo.DataBind();

            ddlMotivos.DataSource = solicitudPermisos.ObtenerMotivos();
            ddlMotivos.DataTextField = "motivo";
            ddlMotivos.DataValueField = "idMotivo";
            ddlMotivos.DataBind();

            grvDatos.DataSource = Nominas.ListaEmpleados(Session["User"].ToString());
            grvDatos.DataBind();
        }
    }

    protected void btnProcesar_Click(object sender, EventArgs e)
    {
        string fechaActual = DateTime.Today.ToString("yyyy/MM/dd");
        if(Convert.ToDateTime(fechaActual)>Convert.ToDateTime(txtFechaInicio.Text))
        {
            Response.Write("<script>alert('Debe Ingresar una fecha valida!','Error');</script>");
        }
        else if(solicitudPermisos.validar(txtEmpleado.Text)>=1 || solicitudPermisos.validar(txtEmpleado.Text)<0)
        {
            Response.Write("<script>alert('Este usuario tiene solicitudes pendientes, o intente mas tarde','');</script>");
        }
        else
        {
            string id = txtEmpleado.Text.Trim();
            int duracion = Convert.ToInt32(txtTiempo.Text.Trim());
            int descripcion = Convert.ToInt32(ddlTiempo.SelectedValue);
            string diaInicio = txtFechaInicio.Text;
            int Motivo = Convert.ToInt32(ddlMotivos.SelectedValue);
            if(solicitudPermisos.NuevoPermiso(id, duracion, descripcion, diaInicio, Motivo))
            {
                Response.Write("<script>alert('Solicitud realizada con exito!','')</script>");
                txtEmpleado.Text = string.Empty;
                txtBuscar.Text = string.Empty;
                txtFechaInicio.Text = string.Empty;
                txtTiempo.Text = string.Empty;
                ddlMotivos.SelectedIndex = 0;
                ddlTiempo.SelectedIndex = 0;
                btnProcesar.Enabled = false;
            }
            else
            {
                Response.Write("<script>alert('Solicitud no pudo ser procesada','')</script>");
            }
        }
    }

    protected void grvDatos_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtEmpleado.Text = grvDatos.SelectedRow.Cells[1].Text;
        btnProcesar.Enabled = true;
    }

    protected void btnBuscar_Click(object sender, EventArgs e)
    {
        txtEmpleado.Text = string.Empty;
        if (txtBuscar.Text==string.Empty)
        {
            Response.Write("<script>alert('Debe Ingresar El id o nombre del Empleado!','')</script>");
        }
        else
        {
            grvDatos.DataSource = Nominas.buscarEmpleado(txtBuscar.Text,Session["User"].ToString());
            grvDatos.DataBind();
        }
        if (grvDatos.Rows.Count == 0)
        {
            lblMensaje.Text = "No se encontraron resultados para \"" + txtBuscar.Text + "\"...";
        }
        else
        {
            lblMensaje.Text = string.Empty;
        }


    }



    protected void btnMostrarTodos_Click(object sender, EventArgs e)
    {
        txtEmpleado.Text = string.Empty;
        lblMensaje.Text = string.Empty;
        txtBuscar.Text = string.Empty;
        grvDatos.DataSource = Nominas.ListaEmpleados(Session["User"].ToString());
        grvDatos.DataBind();
    }
}