<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador.master" AutoEventWireup="true" CodeFile="UsuarioCreado.aspx.cs" Inherits="UsuarioCreado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align:center">
        <b>Usuario Creado</b>
        <br /><br /><br /><br /><br />
        <center>
            <table>
	            <tr>
		            <td>Usuario</td>
		            <td>
                        <asp:Label ID="lblUsuario" runat="server"></asp:Label></td>
	            </tr>
	            <tr>
		            <td>Contraseña</td>
		            <td>
                        <asp:Label ID="lblContra" runat="server"></asp:Label></td>
	            </tr>
	            <tr>
		            <td colspan="2">
                        <center>
                            <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" CssClass="boton" OnClick="btnAceptar_Click1"/>
                        </center>
                        </td>
	            </tr>
            </table>
        </center>
        
    </div>
</asp:Content>

