using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Collections;

public partial class AgregarUsuario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //LlenarAnos();
        //Cargos();

    }

    //void LlenarAnos()
    //{
    //    int ano = DateTime.Today.Year;
    //    ArrayList anos = new ArrayList();
    //    for (int i = ano; i >= 1995; i--)
    //    {
    //        anos.Add(i);
    //    }
    //    ddlAno.DataSource = anos;
    //    ddlAno.DataBind();
    //}

    //void Cargos()
    //{
    //    ddlCargo.DataSource = AgregarUsuario1.MostrarCargos();
    //    ddlCargo.DataTextField = "Cargo";
    //    ddlCargo.DataValueField = "Cargo";
    //    ddlCargo.DataBind();
    //    if (ddlCargo.Items.Count == 0)
    //    {
    //        ddlCargo.Text = "Error al conectar";
    //    }
    //}

    protected string CrearUsuario()
    {
        string usuario;
        string valorNombre = txtNombre.Text.ToString();
        string valorApellido = txtApellido.Text.ToString();
        string valorFechaIngreso = txtFechaIngreso.Text.ToString();
        string valorCargo = (Convert.ToInt32(ddlCargo.SelectedIndex.ToString())+1).ToString();
        //Proceso
        int startIndex = 0;
        int length = 1;
        string Inicial1 = (valorNombre.Substring(startIndex, length)).ToUpper();
        string Inicial2 = (valorApellido.Substring(startIndex, length)).ToUpper();
        startIndex = 0;
        length = 4;
        string AnoIngreso = valorFechaIngreso.Substring(startIndex, length);
        //Salida
        usuario = Inicial1 + Inicial2 + "-0" + valorCargo + "0" + AgregarUsuario1.numEmpleado() + "-" + AnoIngreso;
        return usuario;
    }

    protected void Registrar_Click(object sender, EventArgs e)
    {
        string claveUsuario = Clave();
        string idEmpleado = CrearUsuario();
        string nombres = txtNombre.Text;
        string apellidos = txtApellido.Text;
        int cargo = Convert.ToInt32(ddlCargo.SelectedIndex) + 1;
        string dui = txtDui.Text;
        string nit = txtNit.Text;
        string FechaNacimiento = txtFechaNacimiento.Text;
        string FechaIngreso = txtFechaIngreso.Text;
        string direccion = txtDireccion.Text;
        string telefono = txtTelefono.Text;
        double salario = Convert.ToDouble(txtSalario.Text);
        int estado = 1; //Lo pongo quemado por no saber cuales son los estados :v
        if (AgregarUsuario1.AgregarUsuario(idEmpleado,nombres,apellidos,dui,nit,FechaIngreso,claveUsuario,direccion,salario,estado,telefono,FechaNacimiento,cargo))
        {
            Response.Write("<script>alert('Registro Insertado Exitosamente');</script>");
            Response.Write("<script>location.href='UsuarioCreado.aspx';</script>");
        }
        else
        {
            prueba.Text = "Error ingresando datos  " + FechaNacimiento;
            prueba.ForeColor = System.Drawing.Color.DarkRed;
        }
    }

    protected string Clave()
    {
        string contra;
        string clave = txtFechaNacimiento.Text.ToString();
        //Sacando Año
        int startIndex = 0;
        int length = 4;
        string ano = (clave.Substring(startIndex, length)).ToString();

        //Sacando Mes
        startIndex = 5;
        length = 2;
        string mes = (clave.Substring(startIndex, length)).ToString();
        
        //Sacando Día
        startIndex = 8;
        length = 2;
        string dia = (clave.Substring(startIndex, length)).ToString();
        contra = dia + mes + ano;
        return contra;
    }

}