<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="PracticaProfesional2025.Contacto" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8" />
    <title>Contacto</title>
    <link rel="stylesheet" href="Contenido/css/style.css" />
</head>
<body>
 
    <div class="contact-container">
        <h2>Contáctanos</h2>
       
        <form id="form1" runat="server">
            <asp:TextBox ID="txtNombre" runat="server" placeholder="Tu nombre"></asp:TextBox>
            <asp:TextBox ID="txtEmail" runat="server" placeholder="Tu email"></asp:TextBox>
            <asp:TextBox ID="txtAsunto" runat="server" placeholder="Asunto"></asp:TextBox>
            <asp:TextBox ID="txtMensaje" TextMode="MultiLine" Rows="5" runat="server" placeholder="Tu mensaje"></asp:TextBox>
            <img src="Contenido/images/YfGAQv.jpg" width="200px" height="200px" style="text-align: center" />
            <asp:Button ID="btnEnviar" CssClass="aspNetButton" Text="Enviar" runat="server" OnClick="btnEnviar_Click" />
            <asp:Button ID="btnLimpiar" CssClass="aspNetButton" Text="Limpiar" runat="server" OnClick="btnLimpiar_Click" />
            
            <asp:Label ID="lblResultado" runat="server" />
        </form>
    </div>
</body>
</html>
