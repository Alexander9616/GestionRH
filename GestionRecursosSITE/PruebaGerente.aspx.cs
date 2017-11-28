﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PruebaGerente : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string bienvenido = "¡Bienvenido , " + ValidarUsuarioRegistrado.MuestraNombre(Session["User"].ToString()) + "!";
            lblBienvenido.Text = bienvenido;
        }
        catch
        {
            Response.Redirect("Login.aspx");
        }
       
    }
}