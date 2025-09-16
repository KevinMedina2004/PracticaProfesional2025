<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CompraRealizada.aspx.cs" Inherits="PracticaProfesional2025.CompraRealizada" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Compra Realizada</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>✅ ¡Compra realizada con éxito!</h2>
<asp:Repeater ID="rptCarrito" runat="server">
    <ItemTemplate>
        <div>
            <%# Eval("Nombre") %> - Cantidad: <%# Eval("Cantidad") %>
        </div>
    </ItemTemplate>
</asp:Repeater>
<br /><br />
<asp:Button ID="btnSeguirComprando" runat="server" Text="🛍️ Seguir comprando" OnClick="btnSeguirComprando_Click" />
    </form>
</body>
</html>