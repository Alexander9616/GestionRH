<%@ Page Title="" Language="C#" MasterPageFile="~/Gerente.master" AutoEventWireup="true" CodeFile="EditarPerfilGerente.aspx.cs" Inherits="EditarPerfilGerente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align:center">
        <b>Editar Perfil</b>&nbsp;&nbsp;&nbsp;
    </div>
    <div>
            <center>
                <table border="0">
                    <tr>
                        <td>Nombre:</td>
                        <td><asp:Label id="lblNombre" runat="server"/></td>
                    </tr>
                    <tr>
                        <td>Usuario</td>
                        <td><asp:Label id="lblUser" runat="server"/></td>
                    </tr>
                    <tr>
                        <td>Direccion:</td>
                        <td><asp:TextBox ID="txtDireccion" runat="server" TextMode="MultiLine" OnTextChanged="txtDireccion_TextChanged" /></td>
                        <td runat="server" id="direcciontd"></td>
                    </tr>
                    <tr>
                        <td>Teléfono</td>
                        <td><asp:TextBox ID="txtTelefono" runat="server" OnTextChanged="txtTelefono_TextChanged" /></td>
                        <td runat="server" id="telefonotd">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Digite valores correctos" ValidationExpression="([+]?([5][0][3]){1})|([267]{1}[0-9]{3}[ -]?[0-9]{4})"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <center>
                                <asp:Button runat="server" Text="Actualizar" ID="btnActualizar" CssClass="boton" OnClick="btnActualizar_Click1"  />
                            </center>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:LinkButton ID="lbContrasena" runat="server" CssClass="link" ForeColor="#2699FB" PostBackUrl="~/CambiarContraGerente.aspx">Cambiar Contraseña</asp:LinkButton>
                        </td>
                        <td></td>
                        <td>
                            <asp:Label ID="lblResultado" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
        </center>
    </div>
</asp:Content>

