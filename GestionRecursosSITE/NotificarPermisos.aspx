<%@ Page Title="" Language="C#" MasterPageFile="~/Gerente.master" AutoEventWireup="true" CodeFile="NotificarPermisos.aspx.cs" Inherits="Permisos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <br /><center><asp:Label runat="server" ForeColor="LightBlue" Font-Bold="true" Font-Size="XX-Large">Solicitudes de Permiso</asp:Label></center><hr /><br />
        <div align="center">  
            <table align="center" width="60%">
                <tr>
                    <td style="font-weight:bold; text-align:right; color:black;">
                        Buscar: &nbsp;&nbsp;
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtBuscar"  placehoder="Codigo o nombre" MaxLength="30"></asp:TextBox> &nbsp;&nbsp;
                        <asp:Button runat="server" ID="btnBuscar" Text="Buscar" />
                    </td>
                    <td>
                        <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Blue" PostBackUrl="~/HistorialPermisos.aspx">Historial De Permisos</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </div>
        <div align="center">
            <br />
            <div style="height:5px; text-align:center;"><asp:Label runat="server" ID="lblMensaje" Font-Size="Medium"></asp:Label></div>
            <asp:GridView ID="grvPermisos" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="grvPermisos_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True">
                    <ControlStyle ForeColor="Black" />
                    </asp:CommandField>
                    <asp:BoundField DataField="idPermiso" HeaderText="Nº Permiso" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="idEmpleado" HeaderText="Empleado" />
                    <asp:BoundField DataField="FechaHora" HeaderText="Fecha De Solicitud" />
                    <asp:BoundField DataField="Duracion" HeaderText="Duracion" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="diaInicio" HeaderText="Dia Inicio" />
                    <asp:BoundField DataField="diFinal" HeaderText="Dia Finalizacion" />
                    <asp:BoundField DataField="estado" HeaderText="Estado" />
                </Columns>
            </asp:GridView>
            <br />
        </div>
</asp:Content>

