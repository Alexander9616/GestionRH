<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador.master" AutoEventWireup="true" CodeFile="Asignar_Horas.aspx.cs" Inherits="Asignar_Horas" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
	<tr>
		<td>Usuario a modificar horario</td>
		<td>
            <asp:TextBox ID="txtIdEmpleado" runat="server"></asp:TextBox>
        </td>
		<td colspan="2">
            <asp:Button ID="btnBuscar" runat="server" CssClass="boton" Text="Buscar" OnClick="btnBuscar_Click" />
        </td>
	</tr>
	<tr>
		<td colspan="2">
            <center>
                Nombre: <strong><asp:Label ID="lblNombre" runat="server" Text="---"></asp:Label></strong>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Cargo: <strong><asp:Label ID="lblCargo" runat="server" Text="---"></asp:Label></strong>
            </center>
        </td>
	</tr>
	<tr>
		<td colspan="4"><center>
            <asp:DropDownList ID="ddlHorarios" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="Horarios" DataTextField="Tipo de Horario" DataValueField="Tipo de Horario" Enabled="False" OnSelectedIndexChanged="ddlHorarios_SelectedIndexChanged">
                <asp:ListItem Value="-1">-Seleccione un Horario-</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="lblError" runat="server" Enabled="False" ForeColor="#CC0000"></asp:Label>
            <br />
            <asp:SqlDataSource ID="Horarios" runat="server" ConnectionString="<%$ ConnectionStrings:bdPYMES-TipoHorarios %>" SelectCommand="spNumHorario" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            </center></td>
	</tr>
	<tr>
		<td colspan="4"><center>
            <asp:GridView ID="gvMostrar" runat="server">
            </asp:GridView>
            </center></td>
	</tr>
	<tr>
		<td colspan="2"><center>
            <asp:Button ID="btnActualizar" runat="server" CssClass="boton" Text="Actualizar" Width="136px" Enabled="False" OnClick="btnActualizar_Click" />
            <asp:Button ID="btnCancelar" runat="server" CssClass="boton" OnClick="btnCancelar_Click" Text="Cancelar" />
            </center></td>
	</tr>
</table>    
</asp:Content>
