<%@ Page Title="" Language="C#" MasterPageFile="~/Gerente.master" AutoEventWireup="true" CodeFile="GenerarNominas.aspx.cs" Inherits="GenerarNominas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <div style="text-align:center">
        <b>Lista de Empleados Totales</b>
        <br />
        <br />
        <div style="margin:auto;margin-left:128px;margin-right:320px" id="ContenedorGridview">
        <asp:GridView ID="gvEmpleados" runat="server">
        </asp:GridView>
         <div style="margin-left:525px;">
            Ver: <br />
            <asp:LinkButton ID="lbActivos" runat="server" CssClass="link" ForeColor="#2699FB" PostBackUrl="~/Activos.aspx">Empleados Activos</asp:LinkButton><br />
            <asp:LinkButton ID="lbInactivos" runat="server" CssClass="link" ForeColor="#2699FB" PostBackUrl="~/Inactivos.aspx">Empleados Inactivos</asp:LinkButton>
             <br />
             <asp:LinkButton ID="LinkButton1" runat="server" CssClass="link" ForeColor="#2699FB" PostBackUrl="~/BuscarPorNombre.aspx">Buscar por Nombre</asp:LinkButton>
             <br />
         </div>
    
    </div>
    </div>
    </form>
</asp:Content>