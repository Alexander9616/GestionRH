<%@ Page Title="" Language="C#" MasterPageFile="~/Gerente.master" AutoEventWireup="true" CodeFile="HistorialPermisos.aspx.cs" Inherits="HistorialPermisos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align:center; margin-top:5px;">
        <asp:Label runat="server" Font-Size="Large" Font-Bold="true">Historial de Permisos</asp:Label><br /><br />
    </div>
    <div>
        Buscar por Empleado:&nbsp;<asp:TextBox runat="server" ID="txtEmpleado" MaxLength="20"></asp:TextBox>&nbsp;
        <asp:Button runat="server" ID="btnBuscarEmpleado" Text="Buscar" ValidationGroup="empleado" OnClick="btnBuscarEmpleado_Click"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmpleado" ForeColor="Red" ValidationGroup="empleado">*Valor requerido</asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button  runat="server" ID="btnTodos" Text="Mostrar Todos" OnClick="btnTodos_Click"/>
        <hr />
        Buscar Por Fecha:<br />
        <br />Feha Inicial&nbsp;<asp:TextBox runat="server" ID="txtFechaInicio" TextMode="Date"></asp:TextBox>
        &nbsp;
        Feha Final&nbsp;<asp:TextBox runat="server" ID="txtFechaFinal" TextMode="Date"></asp:TextBox>
        &nbsp;&nbsp;<asp:Button ID="btnBuscarFecha" runat="server" Text="Buscar" ValidationGroup="fecha" OnClick="btnBuscarFecha_Click" />
         &nbsp;&nbsp; &nbsp;&nbsp; Buscar por Estado: &nbsp;&nbsp;
        <asp:DropDownList ID="ddlEstados" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlEstados_SelectedIndexChanged">
        </asp:DropDownList>
        
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFechaInicio" ErrorMessage="*Valor requerido" ForeColor="Red" ValidationGroup="fecha"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFechaFinal" ErrorMessage="*Valor requerido" ForeColor="Red" ValidationGroup="fecha"></asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
    </div>
    <div style="height:5px; text-align:center;"><asp:Label runat="server" ID="lblMensaje"></asp:Label></div>
    <div>
        <center>
        <asp:GridView ID="grvPermisos" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="idPermiso" HeaderText="Nº Permiso" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="idEmpleado" HeaderText="Empleado" />
                    <asp:BoundField DataField="responsable" HeaderText="Responsable" />
                    <asp:BoundField DataField="diaInicio" HeaderText="Dia Inicial" >
                    </asp:BoundField>
                    <asp:BoundField DataField="diFinal" HeaderText="Dia Final" />
                    <asp:BoundField DataField="estado" HeaderText="Estado" />
                    <asp:BoundField DataField="FechaHora" HeaderText="Fecha de Registro" />
                </Columns>
            </asp:GridView>
            </center>
    </div>
</asp:Content>

