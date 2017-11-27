<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador.master" AutoEventWireup="true" CodeFile="EditarRegistros.aspx.cs" Inherits="EditarRegistros" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Los datos: &#39;<b>Direccion</b>&#39; ,&#39;<b>Teléfono</b>&#39; y &#39;<b>Contraseña</b>&#39; pueden ser cambiados desde los perfiles de cualquier usuario**
    <br />
&nbsp;
    <center>
        <table style="width: 519px; height: 454px">
            <tr>
                <td>Ingrese ID:</td>
                <td><asp:TextBox ID="txtBuscar" runat ="server"/></td>
                <td><asp:Button id="btnBuscar" CssClass="boton" runat="server" Height="38px" Width="116px" Text="Buscar" OnClick="btnBuscar_Click"/></td>
            </tr>
            <tr>
                <td>Nombres</td>
                <td>
                    <asp:TextBox ID="txtNombre" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="ValidarNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="Campo Requerido**" ForeColor="#990000" ValidationGroup="Actualizar"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Apellidos</td>
                <td>
                    <asp:TextBox ID="txtApellido" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="ValidarApellido" runat="server" ControlToValidate="txtApellido" ErrorMessage="Campo Requerido**" ForeColor="#990000" ValidationGroup="Actualizar"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Cargo</td>
                <td>
                    <asp:DropDownList runat="server" ID="ddlCargos" AppendDataBoundItems="True" DataSourceID="sqlCargos" DataTextField="Cargo" DataValueField="Cargo" Enabled="False">
                        <asp:ListItem Value="-1">-Cargos-</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:SqlDataSource ID="sqlCargos" runat="server" ConnectionString="<%$ ConnectionStrings:bdPYMES-Cargos %>" SelectCommand="SELECT [Cargo] FROM [Cargos]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="ValidarCargo" runat="server" ControlToValidate="ddlCargos" ErrorMessage="Campo Requerido**" ForeColor="#990000" ValidationGroup="Actualizar"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Dui</td>
                <td>
                    <asp:TextBox ID="txtDui" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="ValidarDui" runat="server" ControlToValidate="txtDui" ErrorMessage="Campo Requerido**" ForeColor="#990000" ValidationGroup="Actualizar"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Nit</td>
                <td>
                    <asp:TextBox ID="txtNit" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="ValidarNit" runat="server" ControlToValidate="txtNit" ErrorMessage="Campo Requerido**" ForeColor="#990000" ValidationGroup="Actualizar"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Salario</td>
                <td>
                    <asp:TextBox ID="txtSalario" runat="server" Enabled="False" TextMode="Number"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="ValidarSalario" runat="server" ControlToValidate="txtSalario" ErrorMessage="Campo Requerido**" ForeColor="#990000" ValidationGroup="Actualizar"></asp:RequiredFieldValidator>
                </td>
            </tr>
            
            <tr>
                <td colspan="2"><center><asp:Button ID="btnActualizar" runat="server" Text="Actualizar" CssClass="boton" ValidationGroup="Actualizar" Enabled="False" OnClick="btnActualizar_Click"></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="boton" OnClick="btnCancelar_Click"></asp:Button>
                       </center></td>
            </tr>

        </table>
    </center>
    
</asp:Content>

