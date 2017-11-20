using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditarPerfilAdmin : System.Web.UI.Page
{
    private static string id;
    private static string direccion, telefono;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            id = Session["User"].ToString();
        }
        catch
        {

        }
        lblNombre.Text = "<i>" + EditarPerfil.Nombre(id) + "</i>";
        lblUser.Text = "<i>" + EditarPerfil.Usuario(id) + "</i>";
        telefono = EditarPerfil.Telefono(id);
        direccion = EditarPerfil.Direccion(id);
        direcciontd.InnerHtml = "Su dirección actual es:<br><i>"+direccion+"</i>";
        telefonotd.InnerHtml = "Su teléfono actual es:<br><i>"+telefono+"</i>";
    }

    

    bool Actualizar()
    {
        if (EditarPerfil.Actualizar(direccion, telefono, id))
        {
            return true;
        }
        else
        {
            return false;
        }
    }


    protected void btnActualizar_Click1(object sender, EventArgs e)
    {
        if (Actualizar())
        {
            Response.Write("<script>alert('Registro Actualizado Exitosamente');</script>");
            Response.Write("<script>location.href='EditarPerfilAdmin.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert('Error conectando a la base datos');javascript:location.reload();</script>");
            Response.Write("<script>location.href='EditarPerfilAdmin.aspx';</script>");
        }
    }

    protected void txtDireccion_TextChanged(object sender, EventArgs e)
    {
        direccion = txtDireccion.Text.ToString();
    }

    protected void txtTelefono_TextChanged(object sender, EventArgs e)
    {
        telefono = txtTelefono.Text.ToString();
    }
}