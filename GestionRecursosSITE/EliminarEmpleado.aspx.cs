using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EliminarEmpleado : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnEliminar_Click(object sender, EventArgs e)
    {
        string id = txtEliminar.Text.ToString().Trim();
        if (ValidarUsuarioRegistrado.ValidarUsuario(id))
        {
            if (id == Session["User"].ToString())
            {
                Response.Write("<script>alert('No puedes eliminarte a ti mismo')</script>");
                txtEliminar.Text = String.Empty;
                txtEliminar.Focus();
            }
            else
            {
                lblEliminar.Text = "Registro eliminado exitosamente";
                EliminarEmpleado1.Eliminar(id);
                txtEliminar.Text = String.Empty;
                txtEliminar.Focus();
            }
        }
        else
        {
            Response.Write("<script>alert('El usuario no existe en el registro')</script>");
            txtEliminar.Text = String.Empty;
            txtEliminar.Focus();
        }
        
    }
}