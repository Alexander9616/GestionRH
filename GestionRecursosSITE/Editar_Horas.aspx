<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador.master" AutoEventWireup="true" CodeFile="BuscarPorNombre.aspx.cs" Inherits="Buscar_por_Nombre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <div><center>
        <h1> HORAS DEL EMPLEADO</h1><br />
        </BR>
        <h2>
        <asp:Label ID="Label1" runat="server" Text="Ingrese ID Empleado: "></asp:Label>
        <asp:TextBox ID="txbBuscar" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" />
        </h2>
        <br />
        </center>
&nbsp;<div>
        <center>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px">
            </asp:DetailsView>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" EntityTypeName="">
            </asp:LinqDataSource>
        </center>
            <br />
            <br />
            <br />
            <br />
    <h3>
            <asp:LinkButton ID="btnRegresar" runat="server" ForeColor="#0066FF" PostBackUrl="~/Consultar_Horas.aspx">Regresar</asp:LinkButton>
    </h3>
        </div>
    </div>
    </form>
</asp:Content>
