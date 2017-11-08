<%@ Page Title="" Language="C#" MasterPageFile="~/Gerente.master" AutoEventWireup="true" CodeFile="Permisos.aspx.cs" Inherits="Permisos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <br /><center><asp:Label runat="server" ForeColor="LightBlue" Font-Bold="true" Font-Size="XX-Large">Solicitudes de Permiso</asp:Label></center><hr /><br />
        <div align="center">  
            <table align="center" width="60%">
                <tr>
                    <td style="font-weight:bold; text-align:right; color:black;">
                        Buscar: &nbsp;&nbsp;
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtBuscar"  placehoder="Codigo o nombre" MaxLength="30"></asp:TextBox> &nbsp;&nbsp;
                        <asp:Button runat="server" ID="btnBuscar" Text="Buscar" />
                    </td>
                    <td>
                        <asp:DropDownList runat="server" AutoPostBack="True">
                            <asp:ListItem Value="0">Seleccione el estado</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
        </div>
        <div align="center">
            <br />
            <asp:GridView ID="GridViewSolicitudes" runat="server" AutoGenerateColumns="False" ForeColor="Black" Height="345px" Width="591px">
                <Columns>
                    <asp:TemplateField HeaderText="Identificacion"></asp:TemplateField>
                    <asp:TemplateField HeaderText="Nombre"></asp:TemplateField>
                    <asp:TemplateField HeaderText="Fecha Solicitud"></asp:TemplateField>
                    <asp:TemplateField HeaderText="Estado"></asp:TemplateField>
                    <asp:ButtonField CommandName="Select" Text="Seleccionar" />
                </Columns>

            </asp:GridView>
        </div>
</asp:Content>

