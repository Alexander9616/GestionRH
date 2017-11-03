<%@ Page Title="" Language="C#" MasterPageFile="~/Gerente.master" AutoEventWireup="true" CodeFile="BuscarPorNombre.aspx.cs" Inherits="Buscar_por_Nombre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <div>
    <center>
    <h1>HORAS EMPLEADOS INACTIVOS</h1>
        <p>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        </p></center>
        <p>
            <div>
                <h3>
            <asp:LinkButton ID="btnRegresar" runat="server" PostBackUrl="~/Consultar_Horas.aspx" ForeColor="#0066FF">Regresar</asp:LinkButton>
                </h3>
            </div>
         </p>

    </div>
    </form>
</asp:Content>
