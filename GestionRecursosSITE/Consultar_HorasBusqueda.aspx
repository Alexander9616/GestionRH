<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador.master" AutoEventWireup="true" CodeFile="BuscarPorNombre.aspx.cs" Inherits="Buscar_por_Nombre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <div>
    <center>
    <h1>HORA DE EMPLEADO</h1>
        </center>
        </div>
        <div>
            <center>
            <asp:Label ID="Label1" runat="server" Text="Ingrese ID Empleado: "></asp:Label>
            <asp:TextBox ID="txbBuscar" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" />
            <br />
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource></center>
            <br />
            <br />
            <h3>
            <asp:LinkButton ID="btnRegresar" runat="server" PostBackUrl="~/Consultar_Horas.aspx" ForeColor="#0066FF">Regresar</asp:LinkButton>
            </h3>
        </div>
    </form>
</asp:Content>
