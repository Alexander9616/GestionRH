<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador.master" AutoEventWireup="true" CodeFile="EliminarEmpleado.aspx.cs" Inherits="EliminarEmpleado" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <h1>Eliminar empleado</h1>
        <form>
            Ingrese ID <asp:TextBox id="txtEliminar" runat="server"/>
            <br /><asp:RequiredFieldValidator ID="ValidarID" runat="server" ErrorMessage="Ingrese el ID de Usuario***" ForeColor="Maroon" ControlToValidate="txtEliminar" ValidationGroup="Eliminar"></asp:RequiredFieldValidator>
            <br />
            <asp:Button id="btnEliminar" Text="Eliminar" runat="server" CssClass="boton" OnClick="btnEliminar_Click" ValidationGroup="Eliminar"/>
        </form>
        <asp:Label ID="lblEliminar" runat="server" CssClass="texto"></asp:Label>
    </center>
</asp:Content>

