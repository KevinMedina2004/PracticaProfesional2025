<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NuevoProducto.aspx.cs"
    Inherits="PracticaProfesional2025.NuevoProducto" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8" />
    <title>Agregar Producto</title>
    <link rel="stylesheet" type="text/css" href="Contenido/css/style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <h2>
            Agregar nuevo producto</h2>
        <asp:TextBox ID="txtNombre"  class="titulo-destacado" runat="server" placeholder="Nombre del producto"></asp:TextBox><br />
        <asp:TextBox ID="txtDescripcion" class="titulo-destacado" runat="server" placeholder="Descripción"></asp:TextBox><br />
        <label>
            Seleccionar imagen del producto:</label><br />
        <asp:FileUpload ID="fuImagen"  CssClass="aspNetButton" runat="server" /><br />
        <br />
        <label >
            Seleccionar sección:</label><br />
      <asp:DropDownList ID="ddlSeccion" runat="server"  CssClass="aspNetButton">
    <asp:ListItem Text="Inicio" Value="Inicio"></asp:ListItem>
    <asp:ListItem Text="Moda" Value="Moda"></asp:ListItem>
    <asp:ListItem Text="Perfumeria" Value="Perfumeria"></asp:ListItem>
    <asp:ListItem Text="Postres" Value="Postres"></asp:ListItem>
</asp:DropDownList> <br />

        <br />
        <asp:Button ID="btnGuardar0" Text="Volver Atras" runat="server" CssClass="aspNetButton"
            OnClick="btnGuardar0_Click" /> <br />
        <br />
        <asp:Button ID="btnGuardar" Text="Guardar producto" runat="server" CssClass="aspNetButton"
            OnClick="btnGuardar_Click" />
        <asp:Label ID="lblMensaje" runat="server" />
    </div>
    </form>
</body>
</html>
