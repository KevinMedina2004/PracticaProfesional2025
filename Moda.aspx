<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Moda.aspx.cs" Inherits="PracticaProfesional2025.Moda" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content" class="p-4 p-md-5 pt-5">
        <h2 class="mb-4">
           SECTOR MODA</h2>
        <h2 class="mb-4">
           
            <img alt="" src="file:///C:/Users/Kevin/Desktop/PracticaProfesional2025-main/PracticaProfesional2025/Contenido/images/budin-chocolate.png"
                style="width: 0; height: 0" /></h2>
      
     
     
       <br />
        <asp:Panel ID="PanelDIJECIELO" runat="server" Width="300px">
           
            <!-- Título arriba -->

            <asp:Label ID="LabelDIJECIELO" runat="server" Text="DIJE DE CIELITO" CssClass="tituloImagen"
                Width="300px" />
            <!-- Imagen en el medio -->

            <%--<asp:ImageButton ID="imgProducto" runat="server"         ImageUrl="~/Contenido/descarga.jpg" Width="300px"      onclick="imgProducto_Click1" OnClientClick="return confirmarCompra();"/>--%>

            <asp:ImageButton ID="ImageButtonDIJECIELO" runat="server" ImageUrl="~/Contenido/images/fotos de productos/dije_cielito.jpeg"
                Width="200" /><br />
            <asp:Label ID="Label8" runat="server" Text="DIJE DE CIELITO " Font-Bold="true" />
            
            <br /><asp:Label ID="Label9" runat="server" Text="Belleza asegurada!."
                CssClKGass="descripcionImagen" Width="300px" />
        </asp:Panel>
            Cantidad:
          <%--  <asp:TextBox ID="TextBox1" runat="server" Text="1" Width="50" 
            ontextchanged="TextBox1_TextChanged" />--%>
        <asp:TextBox ID="TextBoxDIJECIELO" runat="server" Text="1" Width="50" 
            ontextchanged="TextBoxDIJECIELO_TextChanged"></asp:TextBox>
        <br />
            <br />
            <asp:Button ID="Button3" runat="server" Text="Agregar Producto" CommandArgument="DIJE DE CIELO"
                OnClick="btnCIELO_Click2" OnClientClick="return confirm('¿Estás seguro de que querés agregar este producto al carrito?');" /><br />
           
            <!-- aca cierra este producto -->

         




            
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

