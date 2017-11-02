<%@ Page Title="" Language="C#" MasterPageFile="~/Gerente.master" AutoEventWireup="true" CodeFile="DetallesPermiso.aspx.cs" Inherits="DetallesPermiso" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="formDetallesSolicitud" runat="server">
         <br /> &nbsp;<asp:LinkButton runat="server" ID="btnVolver" ForeColor="Blue">Volver</asp:LinkButton>
        <center><asp:Label runat="server" ForeColor="LightBlue" Font-Bold="true" Font-Size="XX-Large">Solicitudes de Permiso</asp:Label></center><hr /><br />
        <div align="center">
           <table width="80%" border="5px">
               <tr>
                   <th>
                       <asp:Label runat="server" Font-Bold="true" ForeColor="Red" Font-Size="Larger"> Detalles</asp:Label>
                   </th>
                   <th>
                       <asp:Label runat="server" Font-Bold="true" ForeColor="Red" Font-Size="Medium">Estado: </asp:Label>&nbsp;
                       <asp:Label runat="server" ID="lblEstado" Text="[Aqui se mostrara el estado]"></asp:Label>
                   </th>
               </tr>
               <tr>
                   <td>
                       Identificacion: 
                   </td>
                   <td>
                       <asp:Label runat="server" ID="lblId"></asp:Label>
                   </td>
               </tr>
               <tr>
                   <td>
                       Nombre: 
                   </td>
                   <td>
                       <asp:Label runat="server" ID="lblNombre"></asp:Label>
                   </td>
               </tr>
               <tr>
                   <td>
                       Fecha de Solicitud:
                   </td>
                   <td>
                       <asp:Label runat="server" ID="lblFechaSolicitud"></asp:Label>
                   </td>
               </tr>
               <tr>
                   <td>
                       Duracion:
                   </td>
                   <td>
                       <asp:Label runat="server" ID="lblDuracion"></asp:Label>
                   </td>
               </tr>
               <tr>
                   <td>
                       Fecha Inicio: 
                   </td>
                   <td>
                       <asp:Label runat="server" ID="lblFechaInicio"></asp:Label>
                   </td>
               </tr>
               <tr>
                   <td>
                       Fecha Finalizacion:
                   </td>
                   <td>
                       <asp:Label runat="server" ID="lblFechaFinal"></asp:Label>
                   </td>
               </tr>
               <tr>
                   <td>
                       Motivo:
                   </td>
                   <td>
                       <asp:Label runat="server" ID="lblMotivo"></asp:Label>
                   </td>
               </tr>
           </table>
        </div>
        <div width="50%" style="margin:auto; margin-left:70%;">
            Accion: &nbsp;&nbsp;
            <asp:DropDownList ID="ddlAcciones" runat="server">
                <asp:ListItem Value="0">Aprobar</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Button  runat="server" ID="btnProcesar" Text="Procesar"/>
            <br />
            <asp:Label runat="server" ID="lblResultado" ForeColor="Red">Aqui Se mostrara el resultado</asp:Label>
        </div>

    </form>
</asp:Content>

