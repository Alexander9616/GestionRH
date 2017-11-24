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
                        <asp:RequiredFieldValidator ID="validarNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="Campo Obligatorio*" ForeColor="Red" ValidationGroup="Registrar"></asp:RequiredFieldValidator>
                    </td>
	            </tr>
	            <tr>
		            <td>Apellidos</td>
		            <td><asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="ValidarApellido" runat="server" ErrorMessage="Campo Obligatorio*" ForeColor="Red" ControlToValidate="txtApellido" ValidationGroup="Registrar"></asp:RequiredFieldValidator>
                    </td>
	            </tr>
	            <tr>
		            <td>Cargo</td>
		            <td><asp:DropDownList ID="ddlCargo" runat="server" DataValueField="Cargo" DataSourceID="SqlDataSource1" DataTextField="Cargo" AppendDataBoundItems="True">
                        <asp:ListItem Value="-1">-Cargos-</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bdPYMES-ALEXPC %>" SelectCommand="SELECT [Cargo] FROM [Cargos]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="ValidarCargo" runat="server" ErrorMessage="Campo Obligatorio*" ForeColor="Red" ControlToValidate="ddlCargo" ValidationGroup="Registrar"></asp:RequiredFieldValidator>
                    </td>
	            </tr>
                <tr>
                    <td>Horario</td>
                    <td>
                        <asp:DropDownList ID="ddlTipoHorario" runat="server" AutoPostBack="True" DataSourceID="TipoHorario" DataTextField="Tipo de Horario" DataValueField="Tipo de Horario" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem Value="-1">-Horarios-</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        <asp:SqlDataSource ID="TipoHorario" runat="server" ConnectionString="<%$ ConnectionStrings:bdPYMES-TipoHorarios %>" SelectCommand="spNumHorario" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                        <asp:GridView ID="gvHorario" runat="server">
                        </asp:GridView>
                    </td>
                    <td>

                        <asp:RequiredFieldValidator ID="ValidarHorario" runat="server" ErrorMessage="Campo Obligatorio*" ForeColor="Red" ControlToValidate="ddlTipoHorario" ValidationGroup="Registrar"></asp:RequiredFieldValidator>

                    </td>
                </tr>
	            <tr>
		            <td>DUI</td>
		            <td><asp:TextBox ID="txtDui" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="ValidarDui" runat="server" ErrorMessage="Campo Obligatorio*" ForeColor="Red" ControlToValidate="txtDui" ValidationGroup="Registrar"></asp:RequiredFieldValidator>
                    </td>
	            </tr>
	            <tr>
		            <td>NIT</td>
		            <td><asp:TextBox ID="txtNit" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="ValidarNit" runat="server" ErrorMessage="Campo Obligatorio*" ForeColor="Red" ControlToValidate="txtNit" ValidationGroup="Registrar"></asp:RequiredFieldValidator>
                    </td>
	            </tr>
                <tr>
		            <td>Fecha de Nacimiento</td>
		            <td><asp:TextBox ID="txtFechaNacimiento" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="ValidarFechaNacimiento" runat="server" ErrorMessage="Campo Obligatorio*" ForeColor="Red" ControlToValidate="txtFechaNacimiento" ValidationGroup="Registrar" ></asp:RequiredFieldValidator>
                    </td>
	            </tr>
	            <tr>
		            <td>Fecha de Ingreso</td>
		            <td>
                        <asp:TextBox ID="txtFechaIngreso" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="ValidarIngreso" runat="server" ErrorMessage="Campo Obligatorio*" ForeColor="Red" ControlToValidate="txtFechaIngreso" ValidationGroup="Registrar"></asp:RequiredFieldValidator>
                    </td>
	            </tr>
	            <tr>
		            <td>Dirección</td>
		            <td><asp:TextBox ID="txtDireccion" runat="server" TextMode="MultiLine" CssClass="multiline" EnableTheming="False" Height="111px" ViewStateMode="Enabled" Width="573px" Wrap="False"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="ValidarDireccion" runat="server" ErrorMessage="Campo Obligatorio*" ForeColor="Red" ControlToValidate="txtDireccion" ValidationGroup="Registrar"></asp:RequiredFieldValidator>
                    </td>
	            </tr>
	            <tr>
		            <td>Teléfono</td>
		            <td><asp:TextBox ID="txtTelefono" runat="server" TextMode="Phone"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="ValidarTelefono" runat="server" ErrorMessage="Campo Obligatorio*" ForeColor="Red" ControlToValidate="txtTelefono" ValidationGroup="Registrar"></asp:RequiredFieldValidator>
                    </td>
	            </tr>
	            <tr>
		            <td>Salario</td>
		            <td><asp:TextBox ID="txtSalario" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="ValidarSalario" runat="server" ErrorMessage="Campo Obligatorio*" ForeColor="Red" ControlToValidate="txtSalario" ValidationGroup="Registrar"></asp:RequiredFieldValidator>
                    </td>
	            </tr>
                <tr style="margin-top:85px;">
                    <center>
                        <td colspan="2" class="auto-style1"><input class="boton" type="reset" value="Limpiar" />
                        <asp:Button ID="Registrar" runat="server" Text="Registrar" CssClass="boton" OnClick="Registrar_Click" ValidationGroup="Registrar"></asp:Button></td>
                    </center>
                </tr>
            </table>
<asp:Label ID="prueba" runat="server" Text=""></asp:Label>
    </center>
</asp:Content>

