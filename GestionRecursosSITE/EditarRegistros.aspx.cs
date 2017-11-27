using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditarRegistros : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    void Actualizar()
    {
        string nombre = txtNombre.Text.ToString();
        string apellido = txtApellido.Text.ToString();
        string dui = txtDui.Text.ToString().Trim();
        double salario = Convert.ToDouble(txtSalario.Text.Trim());
        string nit = txtNit.Text.ToString().Trim();
        string id = txtBuscar.Text.ToString().Trim();
        int cargo = ddlCargos.SelectedIndex;
        if (EditarRegistros1.ActualizarUsuario(id, nombre, apellido, dui, nit, salario, cargo))
            {
                Response.Write("<script>alert('Se actualizaron los datos para " + id + "');</script>");
                Inicio();
            }
            else
            {
                Response.Write("<script>alert('Error insertando datos, verificar conexión o los datos ingresados');</script>");
            }
    }

    void Activar()
    {
        txtApellido.Enabled = true;
        txtBuscar.Enabled = false;
        txtDui.Enabled = true;
        txtNit.Enabled = true;
        txtNombre.Enabled = true;
        txtSalario.Enabled = true;
        btnActualizar.Enabled = true;
        ddlCargos.Enabled = true;
    }
    protected void btnBuscar_Click(object sender, EventArgs e)
    {
        string id = txtBuscar.Text.ToString().Trim();
        if (ValidarUsuarioRegistrado.ValidarUsuario(id))
        {
            if (id == Session["User"].ToString())
            {
                Response.Write("<script>alert('Por cuestiones de seguridad, no te puedes cambiar estos datos a ti mismo');</script>");
                Inicio();
            }
            else
            {
                if (EditarRegistros1.ValidarUsuario(id))
                {
                    txtNombre.Text = EditarRegistros1.Nombre(id);
                    txtApellido.Text = EditarRegistros1.Apellidos(id);
                    txtDui.Text = EditarRegistros1.Dui(id);
                    txtSalario.Text = EditarRegistros1.Salario(id);
                    txtNit.Text = EditarRegistros1.Nit(id);
                    ddlCargos.SelectedIndex = Convert.ToInt16(EditarRegistros1.Cargo(id));
                    Activar();
                }
                else
                {
                    Response.Write("<script>alert('El usuario no existe en el registro');</script>");
                    Inicio();
                }
            }
        }
        else
        {
            Response.Write("<script>alert('El usuario no existe en el registro')</script>");
            Inicio();
        }
        
    }

    void Inicio()
    {
        txtBuscar.Enabled = true;
        txtApellido.Enabled = false;
        txtApellido.Text = String.Empty;
        txtDui.Enabled = false;
        txtDui.Text = String.Empty;
        txtNit.Enabled = false;
        txtNit.Text = String.Empty;
        txtNombre.Enabled = false;
        txtNombre.Text = String.Empty;
        txtSalario.Enabled = false;
        txtSalario.Text = String.Empty;
        txtBuscar.Text = String.Empty;
        btnActualizar.Enabled = false;
        ddlCargos.Enabled = false;
        ddlCargos.SelectedIndex = 0;
        txtBuscar.Focus();
    }

    protected void btnCancelar_Click(object sender, EventArgs e)
    {
        Inicio();
    }


    protected void btnActualizar_Click(object sender, EventArgs e)
    {
        int cargo = ddlCargos.SelectedIndex;
        if (cargo>0)
        {
            Actualizar();
        }
        else
        {
            Response.Write("<script>alert('Seleccione un cargo para el empleado');</script>");
            ddlCargos.Focus();
        }
        
    }
}