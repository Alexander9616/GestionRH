using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Generar_Nominas : System.Web.UI.Page
{
    string UserActual = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        UserActual = Session["User"].ToString();
        ddlEstados.DataSource = Nominas.estadoEmpleados();
        if(!Page.IsPostBack)
        {
            ddlEstados.DataTextField="estado";
            ddlEstados.DataValueField = "idEstado";
            ddlEstados.DataBind();
        }
        grvEmpleados.DataSource = Nominas.ListaEmpleados(UserActual);
        grvEmpleados.DataBind();
    }

    protected void ddlEstados_SelectedIndexChanged(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(ddlEstados.SelectedValue);
        grvEmpleados.DataSource=Nominas.buscarEstado(id,UserActual);
        grvEmpleados.DataBind();
        if (grvEmpleados.Rows.Count==0)
        {
            lblResultado.Text = "No se encontraron resultados para \""+ddlEstados.SelectedItem.Text+"\" ";
        }
        else
        {
            lblResultado.Text = string.Empty;
        }
    }

    protected void btnTodos_Click(object sender, EventArgs e)
    {
        lblResultado.Text = string.Empty;
        grvEmpleados.DataSource = Nominas.ListaEmpleados(UserActual);
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
            grvEmpleados.DataSource = Nominas.buscarEmpleado(buscar,UserActual);
            grvEmpleados.DataBind();
        }
        if(grvEmpleados.Rows.Count==0)
        {
            lblResultado.Text = "No se encontraron resultados para \""+txtBuscar.Text+"\"...";
        }
        else
        {
            lblResultado.Text = string.Empty;
        }
    }
}