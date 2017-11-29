<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador.master" AutoEventWireup="true" CodeFile="MiPermisoAdmin.aspx.cs" Inherits="MiPermisoAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div style="text-align:center; margin-top:5px;">
        <asp:Label runat="server" Font-Size="X-Large" Font-Bold="True">Estado De permiso</asp:Label>
    </div>
    <hr />
    <br />
    <div style="height:5px;text-align:center; margin:0 auto;">
        <asp:Label runat="server" ID="lblMensaje" Font-Size="Medium"></asp:Label>
    </div>
    <div style="width:50%;margin:0 auto;">
        <asp:DetailsView ID="grvPermiso" runat="server" Height="212px" Width="532px" AutoGenerateRows="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="Nº Permiso" HeaderText="Nº Permiso" />
                <asp:BoundField DataField="idEmpleado" HeaderText="Empleado" />
                <asp:BoundField DataField="motivo" HeaderText="Motivo" />
                <asp:BoundField DataField="diaInicio" HeaderText="Dia de Inicio" />
                <asp:BoundField DataField="diFinal" HeaderText="Dia Final" />
                <asp:BoundField DataField="estado" HeaderText="Estado" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
    </div>
    <div style="margin: 0 auto; width:30%; float:right;">
        <asp:Button runat="server" ID="btnOK" Text="OK" OnClick="btnOK_Click" style="height: 42px"/>
    </div>
</asp:Content>

