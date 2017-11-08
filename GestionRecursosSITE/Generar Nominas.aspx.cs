using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Generar_Nominas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ddlEstados.DataSource = Nominas.estadoEmpleados();
        if(!Page.IsPostBack)
        {
            ddlEstados.DataTextField="estado";
            ddlEstados.DataValueField = "idEstado";
            ddlEstados.DataBind();
        }
        grvEmpleados.DataSource = Nominas.ListaEmpleados();
        grvEmpleados.DataBind();
    }

    protected void ddlEstados_SelectedIndexChanged(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(ddlEstados.SelectedValue);
        grvEmpleados.DataSource=Nominas.buscarEstado(id);
        grvEmpleados.DataBind();
        if (Nominas.buscarEstado(id)==null)
        {
            divDatos.Visible = true;
            divDatos.InnerHtml = "<center><font>No se encontraron resultados...</font><center>";
        }
        else
        {
            
        }

           
    }

    protected void btnTodos_Click(object sender, EventArgs e)
    {
        grvEmpleados.DataSource = Nominas.ListaEmpleados();
        grvEmpleados.DataBind();
    }

    protected void btnBuscar_Click1(object sender, EventArgs e)
    {
        string buscar = txtBuscar.Text.Trim();
        if (string.IsNullOrEmpty(buscar))
        {
            Response.Write("<script>alert('Ingrese nombre o ID a buscar!')</script>");
        }
        else
        {
            grvEmpleados.DataSource = Nominas.buscarEmpleado(buscar);
            grvEmpleados.DataBind();
        }
        if (Nominas.buscarEmpleado(buscar) == null)
        {
            divDatos.Visible = true;
            divDatos.InnerHtml = "<center><font>No se encontraron resultados...</font><center>";
        }
        else
        {

        }
    }
}