using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Empleado : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        //if(Session["User"]==null || Session["User"]=="")
        //{
        //    Response.Redirect("Login.aspx");
        //}
        //else
        //{
           
        //    int permiso = Convert.ToInt32(Session["TUsuario"].ToString());
        //    if(permiso != 1)
        //    {
        //        Response.Redirect("Login.aspx");
        //    }
        //    else
        //    {
        //        lblNombre.Text = EditarPerfil.Nombre(Session["User"].ToString());
        //    }
        //}

        try
        {
            int permiso = Convert.ToInt32(Session["TUsuario"].ToString());
            lblNombre.Text = EditarPerfil.Nombre(Session["User"].ToString());
            if(permiso !=1)
            {
                Response.Redirect("Login.aspx");
            }
        }
        catch
        {
            Response.Redirect("Login.aspx");
        }

    }


    protected void lbCerrarSesion_Click(object sender, EventArgs e)
    {
        Session["User"] = "";
        Session.Clear();
        Session.Abandon();
        Response.Redirect("Login.aspx");
       
    }


}
