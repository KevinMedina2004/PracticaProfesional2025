<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CompraRealizada.aspx.cs" Inherits="PracticaProfesional2025.CompraRealizada" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Compra Realizada</title>
    <link rel="stylesheet" type="text/css" href="Contenido/css/style.css" />
</head>
<body class="compra-realizada">
    <form id="form1" runat="server">
        <div class="container">
            <h2>✅ ¡Compra realizada con éxito!</h2>
            
            <asp:Repeater ID="rptCarrito" runat="server">
                <ItemTemplate>
                    <div class="producto-item">
                        <span class="nombre"><%# Eval("Nombre") %></span>
                        <span class="cantidad">x <%# Eval("Cantidad") %></span>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

            <div class="acciones">
                <asp:Button ID="btnSeguirComprando" runat="server" 
                    Text="🛍️ Seguir comprando" CssClass="btn-panaderia" 
                    OnClick="btnSeguirComprando_Click" />

                <asp:Button ID="btnGuardarCompra" runat="server" 
                    Text="💾 Guardar compra" CssClass="btn-guardar" 
                    OnClick="btnGuardarCompra_Click" />
            </div>
        </div>
    </form>
</body>
</html>
