<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CompraRealizada.aspx.cs" Inherits="PracticaProfesional2025.CompraRealizada" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Compra Realizada</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
        }

        form {
            max-width: 700px;
            margin: 50px auto;
            padding: 20px 30px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }

        h2 {
            color: #28a745;
            text-align: center;
            margin-bottom: 30px;
        }

        .producto-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 15px;
            border-bottom: 1px solid #ddd;
        }

        .producto-item span {
            font-size: 16px;
        }

        .acciones {
            margin-top: 30px;
            text-align: center;
        }

        .acciones .btn-panaderia,
        .acciones .btn-guardar,
        #<%= btnSeguir.ClientID %> {
            display: inline-block;
            margin: 10px 15px;
            padding: 10px 20px;
            font-size: 16px;
            color: #fff;
            background-color: #007bff;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            text-decoration: none;
        }

        .acciones .btn-guardar {
            background-color: #28a745;
        }

        .acciones .btn-panaderia:hover,
        .acciones .btn-guardar:hover,
        #<%= btnSeguir.ClientID %>:hover {
            opacity: 0.9;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>✅ ¡Compra realizada con éxito!</h2>

        <asp:Repeater ID="rptCarrito" runat="server">
            <ItemTemplate>
                <div class="producto-item">
                    <span><%# Eval("Nombre") %></span>
                    <span>x <%# Eval("Cantidad") %></span>
                </div>
            </ItemTemplate>
        </asp:Repeater>

        <div class="acciones">
            <asp:Button ID="btnSeguir" runat="server" Text="🛍️ Seguir Comprando" OnClick="btnSeguir_Click" CssClass="btn-panaderia" />
            <asp:Button ID="btnGuardarCompra" runat="server" Text="💾 Guardar compra" OnClick="btnGuardarCompra_Click" CssClass="btn-guardar" />
        </div>
    </form>
</body>
</html>
