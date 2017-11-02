<%@ Page Title="" Language="C#" MasterPageFile="~/Empleado.master" AutoEventWireup="true" CodeFile="PruebaFormulariosYEmpleados.aspx.cs" Inherits="Prueba" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style1 {
            width: 181px;
        }
        .auto-style2 {
            width: 102px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        Probando: Este es un PlaceHolder<br />
        <table style="width:100%;">
            <tr>
                <th class="auto-style1">Campo1</th>
                <th class="auto-style2">Campo 2</th>
                <th>Campo 3</th>
            </tr>
            <tr>
                <td class="auto-style1">Dato1</td>
                <td class="auto-style2">Dato2</td>
                <td>Dato3</td>
            </tr>
            <tr>
                <td class="auto-style1">Datos4</td>
                <td class="auto-style2">Dato5</td>
                <td>Dato6</td>
            </tr>
        </table>
        <br />
        <br />
        &nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="1">Lunes</asp:ListItem>
            <asp:ListItem Value="2">Martes</asp:ListItem>
            <asp:ListItem Value="3">Miercoles</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:TextBox ID="txtBoton" runat="server" CssClass="textbox"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" CssClass="boton" Text="Botón" />   <-- BOTÓN ASP
        <br />
        <input id="Boton" type="button" value="Iniciar Sesión" />    <-- BOTON HTML<br />
        <br />
        Buscar:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtBuscar" runat="server" CssClass="textbox"></asp:TextBox>
        <asp:Button ID="btnBuscar" runat="server" CssClass="boton" Text="Buscar" />
&nbsp;&nbsp;
</form>
</asp:Content>

