<%@ Page Title="" Language="C#" MasterPageFile="~/Gerente.master" AutoEventWireup="true" CodeFile="BuscarPorNombre.aspx.cs" Inherits="Buscar_por_Nombre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <div>
        <center><h1>Consultar Horas Empleado</h1>
            <p>&nbsp;</p>
            <h2>Consultar por :</h2>
            <p>&nbsp;</p>
        <h3><asp:LinkButton ID="btnActivos" runat="server" PostBackUrl="~/Consultar_EmpleadosAct.aspx" ForeColor="#0066FF">Empleados Activos</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="btnInactivos" runat="server" PostBackUrl="~/Control_HorasIna.aspx" ForeColor="#0066FF">Empleados Inactivos</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="btnNombre" runat="server" PostBackUrl="~/Consultar_HorasBusqueda.aspx" ForeColor="#0066FF">Buscar por nombre</asp:LinkButton>
        </h3></center><br />
        <br />
        <br />
        <br />
        <div><center>
            <p><h1>
                ASIGNAR Y ELIMINAR HORAS.
               </h1>
            <p>
                &nbsp;</p>
            <h2>
            <asp:LinkButton ID="btnAsignar" runat="server" foreColor="#0066FF" PostBackUrl="~/Asignar_Horas.aspx">Asignar Horas</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="btnEditar" runat="server" foreColor="#0066FF" PostBackUrl="~/Editar_Horas.aspx">Editar horas</asp:LinkButton>
            </h2>
            </center>
        </div>

        <div>
        <br />
        <h3>
        <asp:LinkButton ID="btnRegreasar" runat="server" ForeColor="#0066FF">Regresar</asp:LinkButton>
        </h3>
        <br />
            </div>
&nbsp;</div>
    </form>
</asp:Content>
