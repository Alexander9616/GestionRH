<%@ Page Title="" Language="C#" MasterPageFile="~/Empleado.master" AutoEventWireup="true" CodeFile="CambiarContraEmpleado.aspx.cs" Inherits="CambiarContraEmpleado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align:center">
        <b>Editar Perfil</b>
    </div>
    <div>
            <center>
                <table border="0">
                    <tr>
                        <td>
                            <asp:LinkButton ID="lbVolver" runat="server" CssClass="link" ForeColor="#2699FB" PostBackUrl="~/EditarPerfilEmpleado.aspx">Volver</asp:LinkButton>
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Nueva Contraseña</td>
                        <td><asp:TextBox ID="txtPass" runat="server" TextMode="Password" /></td>
                    </tr>
                    <tr>
                        <td>Confirme la nueva Contraseña</td>
                        <td><asp:TextBox ID="txtConfirmarPass" runat="server" TextMode="Password" /></td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <center>
                                <asp:Button runat="server" Text="Actualizar" ID="btnActualizar" CssClass="boton" OnClick="btnActualizar_Click1" />
                            </center>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td>
                            <asp:Label ID="lblResultado" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
        </center>
    </div>
</asp:Content>

