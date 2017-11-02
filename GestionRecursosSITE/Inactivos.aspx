<%@ Page Title="" Language="C#" MasterPageFile="~/Gerente.master" AutoEventWireup="true" CodeFile="Inactivos.aspx.cs" Inherits="Inactivos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="link" ForeColor="#2699FB" PostBackUrl="~/GenerarNominas.aspx">Volver</asp:LinkButton>
    <div style="text-align:center">
        <b>Empleados Inactivos</b>
        <br />
    </div>
    <div style="text-align:center">
        <asp:GridView ID="gvInactivos" runat="server"></asp:GridView>
        <br />
    </div>
    </form>
</asp:Content>

