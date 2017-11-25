<%@ Page Title="" Language="C#" MasterPageFile="~/Gerente.master" AutoEventWireup="true" CodeFile="DetallesPermiso.aspx.cs" Inherits="DetallesPermiso" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
         <br /> &nbsp;<asp:LinkButton runat="server" ID="btnVolver" ForeColor="Blue" PostBackUrl="~/NotificarPermisos.aspx">Volver</asp:LinkButton> <asp:Label runat="server" ID="lblprueba"></asp:Label>
        <center><asp:Label runat="server" Font-Bold="True" Font-Size="XX-Large" CssClass="Texto">Solicitudes de Permiso</asp:Label></center><hr />&nbsp;&nbsp;&nbsp;
         <p>Detalles de la Solicitud<center>
             <asp:DetailsView ID="dvPermiso" runat="server" Height="300px" Width="600px" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateRows="False">
                 <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                 <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                 <EditRowStyle BackColor="#999999" />
                 <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                 <Fields>
                     <asp:BoundField DataField="idPermiso" HeaderText="Nº Permiso" />
                     <asp:BoundField DataField="idEmpleado" HeaderText="Empleado" />
                     <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                     <asp:BoundField DataField="FechaHora" HeaderText="Fecha Solicitud" />
                     <asp:BoundField DataField="Duracion" HeaderText="Duracion" />
                     <asp:BoundField DataField="diaInicio" HeaderText="Dia Inicio" />
                     <asp:BoundField DataField="diFinal" HeaderText="Dia Final" />
                     <asp:BoundField DataField="estado" HeaderText="Estado" />
                 </Fields>
                 <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                 <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                 <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
             </asp:DetailsView>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             </center>             
        <div width="50%" style="margin-left:55%; margin-right: auto; margin-top: auto; margin-bottom: auto;">
            Accion: &nbsp;&nbsp;
            <asp:DropDownList ID="ddlAcciones" runat="server">
            </asp:DropDownList>
            <asp:Label ID="lblMensaje" runat="server" ForeColor="Red"></asp:Label>
            <br />
            <asp:Button  runat="server" ID="btnProcesar" Text="Procesar" CssClass="boton" OnClick="btnProcesar_Click"/>
            <br />
            <asp:Label runat="server" ID="lblResultado" ForeColor="Red"></asp:Label>
        </div>
         <br />
         </p>
        </asp:Content>

