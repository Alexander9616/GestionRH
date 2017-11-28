  <%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Login.css" rel="stylesheet" type="text/css" />
</head>
<body>

         <%-- <div class="logopyme" style="margin: 0 auto; align-content: center;">--%>
            &nbsp;<%-- </div>--%><p style="margin: 0 auto;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="Recursos/LogoGhost/LogoAzul.png" width="425" height="100" style="margin-left: 0px; margin-right: 0px"/></p>
     
    <div class="login">

        <form id="form1" runat="server">
    <div class="login-triangle"></div>
  
    <h2 class="login-header">Iniciar Sesión</h2>

            <p>
                <b style="color:#2699FB">Usuario</b> &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Valor requerido" ControlToValidate="txtUsuario" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtUsuario" runat="server" CssClass="textbox"></asp:TextBox>
                <br />
            <b style="color:#2699FB">Contraseña</b>&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Valor requerido" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtPassword" runat="server" CssClass="textbox" TextMode="Password"></asp:TextBox>
                <br />
            <asp:Button ID="btnEntrar" runat="server" CssClass="boton" Text="ENTRAR" OnClick="btnEntrar_Click" />
            </p>
        </form>
    </div>
</body>
</html>
