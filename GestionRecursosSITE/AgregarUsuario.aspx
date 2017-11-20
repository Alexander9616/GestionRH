<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador.master" AutoEventWireup="true" CodeFile="AgregarUsuario.aspx.cs" Inherits="AgregarUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align:center">
        <b>Agregar Usuario</b>
    </div>
    <center>
            <table>
	            <tr>
		            <td>Nombres</td>
		            <td><asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="validarNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="Campo Obligatorio*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
	            </tr>
	            <tr>
		            <td>Apellidos</td>
		            <td><asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="ValidarApellido" runat="server" ErrorMessage="Campo Obligatorio*" ForeColor="Red" ControlToValidate="txtApellido"></asp:RequiredFieldValidator>
                    </td>
	            </tr>
	            <tr>
		            <td>Cargo</td>
		            <td><asp:DropDownList ID="ddlCargo" runat="server" DataValueField="Cargo" DataSourceID="SqlDataSource1" DataTextField="Cargo"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bdPYMESConnectionString %>" SelectCommand="SELECT [Cargo] FROM [Cargos]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="ValidarCargo" runat="server" ErrorMessage="Campo Obligatorio*" ForeColor="Red" ControlToValidate="ddlCargo"></asp:RequiredFieldValidator>
                    </td>
	            </tr>
	            <tr>
		            <td>DUI</td>
		            <td><asp:TextBox ID="txtDui" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="ValidarDui" runat="server" ErrorMessage="Campo Obligatorio*" ForeColor="Red" ControlToValidate="txtDui"></asp:RequiredFieldValidator>
                    </td>
	            </tr>
	            <tr>
		            <td>NIT</td>
		            <td><asp:TextBox ID="txtNit" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="ValidarNit" runat="server" ErrorMessage="Campo Obligatorio*" ForeColor="Red" ControlToValidate="txtNit"></asp:RequiredFieldValidator>
                    </td>
	            </tr>
                <tr>
		            <td>Fecha de Nacimiento</td>
		            <td><asp:TextBox ID="txtFechaNacimiento" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="ValidarFechaNacimiento" runat="server" ErrorMessage="Campo Obligatorio*" ForeColor="Red" ControlToValidate="txtFechaNacimiento" ></asp:RequiredFieldValidator>
                    </td>
	            </tr>
	            <tr>
		            <td>Fecha de Ingreso</td>
		            <td>
                        <asp:TextBox ID="txtFechaIngreso" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="ValidarIngreso" runat="server" ErrorMessage="Campo Obligatorio*" ForeColor="Red" ControlToValidate="txtFechaIngreso"></asp:RequiredFieldValidator>
                    </td>
	            </tr>
	            <tr>
		            <td>Dirección</td>
		            <td><asp:TextBox ID="txtDireccion" runat="server" TextMode="MultiLine" CssClass="multiline" EnableTheming="False" Height="111px" ViewStateMode="Enabled" Width="573px" Wrap="False"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="ValidarDireccion" runat="server" ErrorMessage="Campo Obligatorio*" ForeColor="Red" ControlToValidate="txtDireccion"></asp:RequiredFieldValidator>
                    </td>
	            </tr>
	            <tr>
		            <td>Teléfono</td>
		            <td><asp:TextBox ID="txtTelefono" runat="server" TextMode="Phone"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="ValidarTelefono" runat="server" ErrorMessage="Campo Obligatorio*" ForeColor="Red" ControlToValidate="txtTelefono"></asp:RequiredFieldValidator>
                    </td>
	            </tr>
	            <tr>
		            <td>Salario</td>
		            <td><asp:TextBox ID="txtSalario" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="ValidarSalario" runat="server" ErrorMessage="Campo Obligatorio*" ForeColor="Red" ControlToValidate="txtSalario"></asp:RequiredFieldValidator>
                    </td>
	            </tr>
                <tr style="margin-top:85px;">
                    <center>
                        <td colspan="2" class="auto-style1"><input class="boton" type="reset" value="Limpiar" />
                        <asp:Button ID="Registrar" runat="server" Text="Registrar" CssClass="boton" OnClick="Registrar_Click"></asp:Button></td>
                    </center>
                </tr>
            </table>
<asp:Label ID="prueba" runat="server" Text=""></asp:Label>
    </center>
</asp:Content>

