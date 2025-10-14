<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NuevoProducto.aspx.cs" Inherits="PracticaProfesional2025.NuevoProducto" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Nuevo Producto</title>
    <link rel="stylesheet" type="text/css" href="Contenido/css/style.css" />
</head>
<body >
    <form id="form1" runat="server">
        <div class="container">
            <h2>Agregar Nuevo Producto</h2>

            <asp:Label ID="lblNombre" runat="server" Text="Nombre:" />
            <asp:TextBox ID="txtNombre" runat="server" Width="300px" /><br /><br />

            <asp:Label ID="lblDescripcion" runat="server" Text="Descripción:" />
            <asp:TextBox ID="txtDescripcion" runat="server" TextMode="MultiLine" Rows="4" Width="300px" /><br /><br />

           <asp:Label ID="lblImagen" runat="server" Text="Subir imagen:" />
<asp:FileUpload ID="fuImagen" runat="server" /><br /><br />

<asp:Button ID="btnVolver" runat="server" Text="Volver a Inicio" 
    OnClick="btnVolver_Click" 
    CausesValidation="false"  CssClass="btn-panaderia" />
             </br>
            <asp:Button ID="btnGuardar" runat="server" Text="Guardar Producto" OnClick="btnGuardar_Click" CssClass="btn-panaderia" />
        </div>
    </form>
</body>
</html>
