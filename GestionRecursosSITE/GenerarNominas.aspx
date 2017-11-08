<%@ Page Title="" Language="C#" MasterPageFile="~/Gerente.master" AutoEventWireup="true" CodeFile="GenerarNominas.aspx.cs" Inherits="GenerarNominas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="text-align:center">

        <b>Lista de Empleados Totales</b>
        <br />
        <br />
        <br />
        <div  style="text-align:center;">
            <asp:Label runat="server">Buscar:</asp:Label>&nbsp;&nbsp;<asp:TextBox ID="txtBuscar" runat="server"></asp:TextBox>
            <asp:Button runat="server" ID="btnBuscar" Text="Buscar" />
            &nbsp; 
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem  Value="0">-Seleccione un estado</asp:ListItem>
            </asp:DropDownList>
        </div>
       
        <br />
        <br />
        <div style="margin:auto;margin-left:128px;margin-right:320px" id="ContenedorGridview">
            
                <asp:GridView ID="gvEmpleados" runat="server">
                </asp:GridView>
            
        </div>

    </div>
</asp:Content>