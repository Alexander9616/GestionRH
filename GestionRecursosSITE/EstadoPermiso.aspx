<%@ Page Title="" Language="C#" MasterPageFile="~/Gerente.master" AutoEventWireup="true"%>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
     
        
         <br />
         <asp:Label ID="lbNombreUsuario" runat="server" Text="Nombre Usuario"></asp:Label>
        
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
           <Columns>
               <asp:TemplateField HeaderText="Tipo de Permiso"></asp:TemplateField>
               <asp:TemplateField HeaderText="Descripcion de permiso"></asp:TemplateField>
               <asp:TemplateField HeaderText="Estado de Permiso"></asp:TemplateField>
           </Columns>
        </asp:GridView>
        
        

</asp:Content>
