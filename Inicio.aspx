<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true"
    CodeBehind="Inicio.aspx.cs" Inherits="PracticaProfesional2025.Inicio" %>
  


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content" class="p-4 p-md-5 pt-5">
        <h2 class="mb-4">
            PRODUCTOS DISPONIBLES</h2>
        <h2 class="mb-4">
            <img alt="" src="file:///C:/Users/Kevin/Desktop/PracticaProfesional2025-main/PracticaProfesional2025/Contenido/images/budin-chocolate.png"
                style="width: 0; height: 0" /></h2>
      
     
     
        <asp:Panel ID="pnlProducto" runat="server" Width="300px">
          
            <asp:Label ID="lblTitulo" runat="server" Text="Budin de Chocolate" CssClass="tituloImagen"
                Width="300px" />

            <asp:ImageButton ID="imgProducto" runat="server" ImageUrl="~/Contenido/descarga.jpg"
                Width="200"/><br />
            <asp:Label ID="lblNombre" runat="server" Text="BUDIN DE CHOCOLATE" Font-Bold="true" /><br />
           
           
   <asp:Label ID="lblDescripcion" runat="server" Text="Producto ideal para compartir en una tarde de mates."
                CssClass="descripcionImagen" Width="300px" /> 
        </asp:Panel>
            Cantidad:
            <asp:TextBox ID="txtCantidad" runat="server" Text="1" Width="50" 
            ontextchanged="txtCantidad_TextChanged" /><br />
            
           <asp:Button ID="btnConfirmar2" runat="server" Text="Agregar Producto" CommandArgument="BUDIN DE CHOCOLATE"
                OnClick="btnConfirmar_Click" OnClientClick="return confirm('¿Estás seguro de que querés agregar este producto al carrito?');" />
         
            <!-- Descripción debajo -->

         



        <!--otro producto-->
        <br />
        <asp:Panel ID="Panel1" runat="server" Width="300px">
           
            <!-- Título arriba -->

            <asp:Label ID="Label2" runat="server" Text="Scones de queso" CssClass="tituloImagen"
                Width="300px" />
            <!-- Imagen en el medio -->

            <%--<asp:ImageButton ID="imgProducto" runat="server"         ImageUrl="~/Contenido/descarga.jpg" Width="300px"      onclick="imgProducto_Click1" OnClientClick="return confirmarCompra();"/>--%>

            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Contenido/images/fotos de productos/IMG_6375.PNG"
                Width="200" /><br />
            <asp:Label ID="Label3" runat="server" Text="SCONES DE QUESO" Font-Bold="true" />
            
            <br /><asp:Label ID="Label5" runat="server" Text="Riquisimos scones de queso irresistibles!."
                CssClKGass="descripcionImagen" Width="300px" />
        </asp:Panel>
            Cantidad:
          <%--  <asp:TextBox ID="TextBox1" runat="server" Text="1" Width="50" 
            ontextchanged="TextBox1_TextChanged" />--%>
        <asp:TextBox ID="TextBox1" runat="server" Text="1" Width="50" 
            ontextchanged="TextBox1_TextChanged"></asp:TextBox>
        <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Agregar Producto" CommandArgument="SCONES DE QUESO"
                OnClick="btnConfirmar_Click2" OnClientClick="return confirm('¿Estás seguro de que querés agregar este producto al carrito?');" />
           
            <!-- Descripción debajo -->



            <!--otro producto-->
        <br />
        <asp:Panel ID="PanelAlfajores" runat="server" Width="300px">
    <!-- Título -->
    <asp:Label ID="lblTituloAlfajores" runat="server" Text="Alfajorcitos de Maicena" CssClass="tituloImagen" Width="300px" />

    <!-- Imagen -->
    <asp:ImageButton ID="imgAlfajores" runat="server" ImageUrl="~/Contenido/images/fotos de productos/IMG_6374.PNG" Width="200" /><br />

    <!-- Nombre del producto -->
    <asp:Label ID="lblNombreAlfajores" runat="server" Text="ALFAJORES DE MAICENA" Font-Bold="true" /><br />

    <!-- Descripción -->
    <asp:Label ID="lblDescripcionAlfajores" runat="server" Text="Excelentes para el bajón!!." CssClass="descripcionImagen" Width="300px" /><br />

    <!-- Cantidad -->
    Cantidad:
    <asp:TextBox ID="txtCantidadAlfajores" runat="server" Text="1" Width="50" /><br /><br />

    <!-- Botón con popup -->
    <asp:Button ID="btnConfirmarAlfajores" runat="server"
        Text="Agregar Producto"
        CommandArgument="ALFAJORCITOS DE MAICENA"
        OnClick="btnConfirmar_Click"
        OnClientClick="mostrarPopup(this); return false;" />
</asp:Panel>
            <!-- Descripción debajo -->

            
        <div id="popupConfirmacion" style="display: none;" class="popup-overlay">
            <div class="popup-contenido">
                <h3>
                    ¿Confirmás la compra?</h3>
                <button onclick="confirmarCompra()">
                    Sí, comprar</button>
                <button onclick="cerrarPopup()">
                        Cancelar</button></div>
        </div>
        <h2 class="mb-4">
            &nbsp;</h2>
    </div>
</asp:Content>
