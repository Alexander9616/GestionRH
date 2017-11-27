using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Asignar_Horas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    void Inicio()
    {
        ddlHorarios.Enabled = false;
        btnActualizar.Enabled = false;
        txtIdEmpleado.Enabled = true;
        txtIdEmpleado.Text = String.Empty;
        txtIdEmpleado.Focus();
        ddlHorarios.SelectedIndex = 0;
        gvMostrar.DataSource= null;
        gvMostrar.DataBind();
        lblCargo.Text = "---";
        lblNombre.Text = "---";
    }

    protected void btnBuscar_Click(object sender, EventArgs e)
    {
        string id = txtIdEmpleado.Text.ToString().Trim();
        string user1 = AsignarHorario.ValidarUsuario(id);
        string user2 = Session["User"].ToString();
        switch (AsignarHorario.idvalido(id))
        {
            case 1:
                if (user1.Trim() == user2.Trim())
                {
                    Response.Write("<script>alert('No puedes cambiarte el horario a ti mismo');</script>");
                    Inicio();
                }
                else
                {
                    txtIdEmpleado.Enabled = false;
                    ddlHorarios.Enabled = true;
                    btnActualizar.Enabled = true;
                    lblNombre.Text = AsignarHorario.Nombre(id);
                    lblCargo.Text = AsignarHorario.Cargo(id);
                }
                break;
            case 2:
                Response.Write("<script>alert('El usuario no existe en el registro');</script>");
                break;
            default:
                Response.Write("<script>alert('Error en la conexión, intente más tarde');</script>");
                break;
        }
    }

    protected void btnCancelar_Click(object sender, EventArgs e)
    {
        Inicio();
    }

    protected void btnActualizar_Click(object sender, EventArgs e)
    {
        string id = txtIdEmpleado.Text.ToString().Trim();
        int idHorario = Convert.ToInt16(ddlHorarios.SelectedIndex);
        if (idHorario==0)
        {
            lblError.Text = "Seleccione un horario";
        }
        else
        {
            if (AsignarHorario.NuevoHorario(id,idHorario))
            {
                Response.Write("<script>alert('Se asigno el Horario "+idHorario+" al usuario "+id+"');</script>");
                Inicio();
            }
            else
            {
                Response.Write("<script>alert('Error en la conexión, intente más tarde');</script>");
            }
        }
    }

    protected void ddlHorarios_SelectedIndexChanged(object sender, EventArgs e)
    {
        int tipo = Convert.ToInt16(ddlHorarios.SelectedIndex);
        gvMostrar.DataSource = AgregarUsuario1.MostrarHorario(tipo);
        gvMostrar.DataBind();
    }
}