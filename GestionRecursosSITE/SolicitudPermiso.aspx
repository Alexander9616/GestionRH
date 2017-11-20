<%@ Page Title="" Language="C#" MasterPageFile="~/Gerente.master" AutoEventWireup="true" %>


<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <form id="formPermisos" runat="server">
        
        <center><asp:Label ID="Label1" runat="server" Text="Solicitud de Permiso:"></asp:Label>
        <br />
        <asp:DropDownList ID="dpTipoPermiso" runat="server">
            <asp:ListItem>Tipo de Permiso</asp:ListItem>
        </asp:DropDownList>
            <br />
            <asp:TextBox ID="txtDescripcion" runat="server" Height="74px" TextMode="MultiLine" Width="241px"></asp:TextBox>
        </center>
        
    </form>
</asp:Content>



