<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="PracticaProfesional2025.Inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content" class="p-4 p-md-5 pt-5">
        <h2 class="mb-4">PRODUCTOS DISPONIBLES</h2>
        <h2 class="mb-4">
            <img alt="" src="file:///C:/Users/Kevin/Desktop/PracticaProfesional2025-main/PracticaProfesional2025/Contenido/images/budin-chocolate.png" style="width: 0; height: 0" />
        </h2>

        <!-- CONTENEDOR FLEX PARA TODOS LOS PRODUCTOS -->
        <div class="productos-flex-container">

            <asp:Panel ID="pnlProducto" runat="server" Width="300px">
                <asp:Label ID="lblTitulo" runat="server" Text="Budin de Chocolate" CssClass="tituloImagen" Width="300px" />
                <asp:ImageButton ID="imgProducto" runat="server" ImageUrl="~/Contenido/64899cde-44ba-4bb1-af31-6ae2fe4e58bb.JPG" Width="200"/><br />
                <asp:Label ID="lblNombre" runat="server" Text="BUDIN DE CHOCOLATE" Font-Bold="true" /><br />
                <asp:Label ID="lblDescripcion" runat="server" Text="Producto ideal para compartir en una tarde de mates." CssClass="descripcionImagen" Width="300px" />
            </asp:Panel>

              Cantidad:
        <asp:TextBox ID="txtCantidad" runat="server" Text="1" Width="50" ontextchanged="txtCantidad_TextChanged" /><br />
        <asp:Button ID="btnConfirmar2" runat="server" Text="Agregar Producto" CommandArgument="BUDIN DE CHOCOLATE" OnClick="btnConfirmar_Click" OnClientClick="return confirm('¿Estás seguro de que querés agregar este producto al carrito?');" />

          <asp:Panel ID="Panel1" runat="server" Width="300px">
                <asp:Label ID="Label2" runat="server" Text="Scones de queso" CssClass="tituloImagen" Width="300px" />
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Contenido/images/fotos de productos/IMG_6375.PNG" Width="200" /><br />
                <asp:Label ID="Label3" runat="server" Text="SCONES DE QUESO" Font-Bold="true" /><br />
                <asp:Label ID="Label5" runat="server" Text="Riquisimos scones de queso irresistibles!." CssClKGass="descripcionImagen" Width="300px" />
            </asp:Panel>

             Cantidad:
        <asp:TextBox ID="TextBox1" runat="server" Text="1" Width="50" ontextchanged="TextBox1_TextChanged" /><br />
        <asp:Button ID="Button1" runat="server" Text="Agregar Producto" CommandArgument="SCONES DE QUESO" OnClick="btnConfirmar_Click2" OnClientClick="return confirm('¿Estás seguro de que querés agregar este producto al carrito?');" />

          <asp:Panel ID="Panel2" runat="server" Width="300px">
                <asp:Label ID="Label1" runat="server" Text="Alfajorcitos de Maicena" CssClass="tituloImagen" Width="300px" />
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Contenido/images/fotos de productos/IMG_6374.PNG" Width="200" /><br />
                <asp:Label ID="Label4" runat="server" Text="ALFAJORCITOS DE MAICENA" Font-Bold="true" /><br />
                <asp:Label ID="Label6" runat="server" Text="Excelentes para el bajon !." CssClKGass="descripcionImagen" Width="300px" />
            </asp:Panel>

            Cantidad:
        <asp:TextBox ID="TextBox2" runat="server" Text="1" Width="50" ontextchanged="TextBox1_TextChanged"></asp:TextBox><br />
        <asp:Button ID="Button2" runat="server" Text="Agregar Producto" CommandArgument="ALFAJORCITOS DE MAICENA" OnClick="btnConfirmar_Click3" OnClientClick="return confirm('¿Estás seguro de que querés agregar este producto al carrito?');" />

        </div> <!-- FIN DEL CONTENEDOR FLEX -->

      
        
        
        <div id="popupConfirmacion" style="display: none;" class="popup-overlay">
            <div class="popup-contenido">
                <h3>¿Confirmás la compra?</h3>
                <button onclick="confirmarCompra()">Sí, comprar</button>
                <button onclick="cerrarPopup()">Cancelar</button>
            </div>
        </div>

        <h2 class="mb-4">&nbsp;</h2>
    </div>
</asp:Content>
