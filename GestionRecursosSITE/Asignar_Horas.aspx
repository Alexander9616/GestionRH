<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador.master" AutoEventWireup="true" CodeFile="BuscarPorNombre.aspx.cs" Inherits="Buscar_por_Nombre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <div><center>
        <h1>ASIGNAR HORAS EMPLEADO</h1><br />
        <h2>
            
            <asp:Label ID="Label1" runat="server" Text="Ingrese ID Empleado: "></asp:Label>
            <asp:TextBox ID="txbBuscar" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnbuscar" runat="server" Text="Buscar" />
            
        </h2>
        </center>
        </br>

        <div><center>

            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px">
            </asp:DetailsView>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" EntityTypeName="">
            </asp:LinqDataSource>
            <br />
            <br />
            </center>
            <h3>
                <asp:LinkButton ID="btnRegresar" runat="server" ForeColor="#0066ff" PostBackUrl="~/Consultar_Horas.aspx">Regresar</asp:LinkButton>
            </h3>
         </div>
    </div>
    </form>
</asp:Content>
