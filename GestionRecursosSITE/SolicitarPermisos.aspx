<%@ Page Title="" Language="C#" MasterPageFile="~/Gerente.master" AutoEventWireup="true" CodeFile="SolicitarPermisos.aspx.cs" Inherits="SolicitarPermisos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align:center;">
        <asp:Label runat="server" Font-Bold="true" Font-Size="X-Large">Solicitar Permisos</asp:Label>
        <br />
        <br />
    </div>
    <div>
        Usuario:&nbsp;<asp:TextBox runat="server" ID="txtEmpleado" MaxLength="20"></asp:TextBox>&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnProcesar" runat="server" Text="Procesar Solicitud" OnClick="btnProcesar_Click" ValidationGroup="Datos" />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        Motivo:&nbsp;<asp:DropDownList runat="server" ID="ddlMotivos"></asp:DropDownList>
        &nbsp;&nbsp;&nbsp;
        Tiempo:&nbsp;<asp:TextBox runat="server" TextMode="Number" MaxLength="2" Height="26px" Width="100px" ID="txtTiempo"></asp:TextBox>&nbsp;&nbsp;&nbsp;
        <asp:DropDownList runat="server" ID="ddlTiempo"></asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp; Fecha de Inicio:&nbsp;
        <asp:TextBox ID="txtFechaInicio" runat="server" TextMode="Date"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFechaInicio" ErrorMessage="*Valor requerido" ForeColor="Red" ValidationGroup="Datos"></asp:RequiredFieldValidator>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTiempo" ErrorMessage="*Valor requerido" ForeColor="Red" ValidationGroup="Datos"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtTiempo" ErrorMessage="*Ingrese un periodo Valido" ForeColor="Red" ValidationExpression="\d\d?"></asp:RegularExpressionValidator>
&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;Buscar:&nbsp;<asp:TextBox runat="server" ID="txtBuscar" MaxLength="10"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" style="width: 84px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnMostrarTodos" runat="server" OnClick="btnMostrarTodos_Click" Text="Mostrar Todos" />
        <br />
        <br />
        <hr />
    </div>
    <div style="width:5px;">
        <center style="width: 994px; height: 22px">
            <asp:Label runat="server" ID="lblMensaje" Font-Size="Medium"></asp:Label>
            <br />
        </center>
    </div>
    <div style="text-align:center; height:30%;">
        <center>
        <asp:GridView ID="grvDatos" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="916px" OnSelectedIndexChanged="grvDatos_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        </center>
    </div>
</asp:Content>

