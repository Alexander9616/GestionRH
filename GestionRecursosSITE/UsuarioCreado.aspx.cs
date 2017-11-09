using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UsuarioCreado : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblUsuario.Text = "<b><i>" + AgregarUsuario1.UltimoUsuario() + "</i></b>";
        lblContra.Text = "<b><i>" + AgregarUsuario1.UltimaClave() + "</i></b>";
    }
    protected void btnAceptar_Click1(object sender, EventArgs e)
    {
        Response.Write("<script>location.href='AgregarUsuario.aspx';</script>");
    }
}