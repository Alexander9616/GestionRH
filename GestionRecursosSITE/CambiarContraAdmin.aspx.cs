using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CambiarContraseña : System.Web.UI.Page
{
    private static string password, password1,id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Session["User"].ToString(); //Acá cambiarlo por la sesión o el Cookie
    }

    int Actualizar()
    {
        password = txtPass.Text.Trim();
        password1 = txtConfirmarPass.Text.Trim();
        if (password == password1)
        {
            if (EditarPerfil.ActualizarClave(password, id))
            {
                lblResultado.Text = "<i>Clave Actualizada Exitosamente</i>";
                lblResultado.ForeColor = System.Drawing.Color.PowderBlue;
                return 1;
            }
            else
            {
                lblResultado.Text = "<i><b>Error en la conexión</b></i>";
                lblResultado.ForeColor = System.Drawing.Color.Red;
                return 2;
            }
        }
        else
        {
            return 3;
        }
        
    }


    protected void btnActualizar_Click1(object sender, EventArgs e)
    {
        switch (Actualizar())
        {
            case 1:
                Response.Write("<script>alert('Contraseña Actualizada Exitosamente');</script>");
                Response.Write("<script>location.href='EditarPerfilAdmin.aspx';</script>");
                break;
            case 2:
                Response.Write("<script>alert('Error en la Conexión');</script>");
                break;
            default:
                lblResultado.Text = "<b>Las contraseñas no coinciden</b>";
                lblResultado.ForeColor = System.Drawing.Color.Red;
                break;
        }
    }
}