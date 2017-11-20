<%@ Page Title="" Language="C#" MasterPageFile="~/Gerente.master" AutoEventWireup="true" CodeFile="Generar Nominas.aspx.cs" Inherits="Generar_Nominas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <div style="padding:10px; text-align:center;">
        <h1 style="font-size:30px;">Nomina de Empleados</h1>
    </div>
    <div style="margin:0 auto; margin-top:15px; width:70%;" >
        <asp:Button  runat="server" Text="Todos" ID="btnTodos" OnClick="btnTodos_Click"/> &nbsp;&nbsp;
        Buscar: <asp:TextBox runat="server" ID="txtBuscar" MaxLength="10"></asp:TextBox>
        &nbsp;&nbsp;Estado:&nbsp;<asp:DropDownList runat="server" ID="ddlEstados" AutoPostBack="True" OnSelectedIndexChanged="ddlEstados_SelectedIndexChanged">
            <asp:ListItem Selected="True" Value="0">-Seleccionar</asp:ListItem>
        </asp:DropDownList> &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button runat="server" ID="btnBuscar" Text="Buscar" OnClick="btnBuscar_Click1"/>
    </div>
    <div style="margin:0 auto; margin-top:30px; height:2%; text-align:center;" id="divDatos" runat="server">
        <asp:Label runat="server" ID="lblResultado" Font-Size="XX-Large" Font-Bold="true"></asp:Label>
    </div>
    <div style="margin:0 auto; margin-top:0; height:40%;">
        <center>
            <asp:gridview ID="grvEmpleados" runat="server" CellPadding="6" ForeColor="#333333" GridLines="None" Height="230px" Width="973px">
            </asp:gridview>
        </center>
        
    </div>
</asp:Content>

