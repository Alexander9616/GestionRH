<%@ Page Title="" Language="C#" MasterPageFile="~/GestionRecursosSITE/Administrador.master" AutoEventWireup="true" CodeFile="AgregarUsuario.aspx.cs" Inherits="GestionRecursosSITE_AgregarUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
    <p>
        Agregar un nuevo empleado</p>
    <asp:label ID="lblID" runat="server" Text="ID:"></asp:label>
    <asp:Textbox ID="txtID" runat="server"></asp:Textbox>
    <br />
    <asp:label ID="lbNombre" runat="server" Text="Nombre:"></asp:label>
        <br />
    <asp:Textbox ID="txtNombre" runat="server" Width="378px"></asp:Textbox>
    <br />
    <asp:label ID="lblApellido" runat="server" Text="Apellido"></asp:label>
        <br />
    <asp:Textbox ID="txtApellido" runat="server" Width="383px" OnTextChanged="txtApellido_TextChanged"></asp:Textbox>
    <br />
    <asp:label ID="lblCargo" runat="server" Text="Cargo:"></asp:label>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
    <br />
    <asp:label ID="lblIngreso" runat="server" Text="Año de Ingreso:"></asp:label>
    <asp:Textbox ID="txtAño" runat="server"></asp:Textbox>
        <br />
    <br />
    <asp:label ID="lblTelefono" runat="server" Text="Telefono:"></asp:label>
    <br />
    <asp:Textbox ID="txtTelefono" runat="server"></asp:Textbox>
    <br /> 
    <asp:label ID="lblDireccion" runat="server" Text="Direccion:"></asp:label>
    <br />
    <asp:Textbox ID="txtDireccion" runat="server" Height="67px" Width="698px"></asp:Textbox>
    <br /> 
        <asp:label ID="lblPwd" runat="server" Text="Contraseña:"></asp:label>
    <br />
    <asp:Textbox ID="txtContraseña" runat="server"></asp:Textbox>
        <br />
        <br />
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:LinkButton ID="LinkButton1" runat="server" BackColor="White" BorderColor="White" BorderStyle="None" ForeColor="Black">Cancelar</asp:LinkButton>
    &nbsp;<asp:Button ID="btAgregar" runat="server" Text="Agregar" />
    <br />

    </form>
</asp:Content>

