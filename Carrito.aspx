<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="PracticaProfesional2025.Carrito" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Repeater ID="rptCarrito" runat="server">
    <ItemTemplate>
        <div style="margin-bottom: 10px;">
            <asp:Label ID="lblNombre" runat="server" Text='<%# Eval("Nombre") %>' />
            <asp:Label ID="lblCantidad" runat="server" Text='<%# " - Cantidad: " + Eval("Cantidad") %>' />
        </div>
    </ItemTemplate>
</asp:Repeater>
    </div>
    </form>
</body>
</html>
