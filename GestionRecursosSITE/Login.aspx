<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Login.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <center>
        <div class="logopyme">
            Logo de PYME
        </div>
    </center>
    
    <div class="login">
    <div class="login-triangle"></div>
  
    <h2 class="login-header">Iniciar Sesión</h2>

        <form id="form1" runat="server">
            <p>
                <b style="color:#2699FB">Usuario</b>
            <asp:TextBox ID="txtUsuario" runat="server" CssClass="textbox"></asp:TextBox>
                <br />
            <b style="color:#2699FB">Contraseña</b>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="textbox" TextMode="Password"></asp:TextBox>
                <br />
            <asp:Button ID="btnEntrar" runat="server" CssClass="boton" Text="ENTRAR" />
            </p>
        </form>
    </div>
</body>
</html>
