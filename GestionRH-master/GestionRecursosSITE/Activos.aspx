<%@ Page Title="" Language="C#" MasterPageFile="~/Gerente.master" AutoEventWireup="true" CodeFile="Activos.aspx.cs" Inherits="Activos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" ForeColor="#3692E1" PostBackUrl="~/GenerarNominas.aspx" CssClass="link">Volver</asp:LinkButton>
        <br />
        <div style="text-align:center">
            <b>Empleados Activos</b>
            <br />
            <asp:GridView ID="gvActivos" runat="server">
            </asp:GridView>
            <br />

        </div>
    </form>
</asp:Content>

