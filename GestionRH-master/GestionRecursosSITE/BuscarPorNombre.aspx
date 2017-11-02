<%@ Page Title="" Language="C#" MasterPageFile="~/Gerente.master" AutoEventWireup="true" CodeFile="BuscarPorNombre.aspx.cs" Inherits="Buscar_por_Nombre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="link" ForeColor="#2699FB" PostBackUrl="~/GenerarNominas.aspx">Volver</asp:LinkButton>
        <br 
        <div style="text-align:center; margin:0 auto;height:auto;">
            <b>Buscar Empleado por Nombre</b>
        <br />
        <br />
             <asp:Label ID="lblBuscar" runat="server" CssClass="Texto" Text="Nombre "></asp:Label>
                &nbsp;<asp:TextBox ID="txtBuscar" runat="server" Height="20px"></asp:TextBox>
            <asp:Button ID="btnBuscar" runat="server" CssClass="boton" Height="35px" Text="Buscar" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </div>

    </form>
</asp:Content>

