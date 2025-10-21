<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Postres.aspx.cs" Inherits="PracticaProfesional2025.Postres" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <div id="content" class="p-4 p-md-5 pt-5">
        <h2 class="mb-4">
           SECTOR POSTRES </h2>
        <h2 class="mb-4">
           
            <img alt="" src="file:///C:/Users/Kevin/Desktop/PracticaProfesional2025-main/PracticaProfesional2025/Contenido/images/budin-chocolate.png"
                style="width: 0; height: 0" /></h2>
      
     
     
       <br />  
        <div class="productos-container">
        <asp:Panel ID="PanelLEMONPIE" runat="server" Width="300px"  CssClass="producto-panel">
           
            <!-- Título arriba -->

            <asp:Label ID="LabelLEMONPIE" runat="server" Text="LEMON PIE" CssClass="tituloImagen"
                Width="300px" />
            <!-- Imagen en el medio -->

            <%--<asp:ImageButton ID="imgProducto" runat="server"         ImageUrl="~/Contenido/descarga.jpg" Width="300px"      onclick="imgProducto_Click1" OnClientClick="return confirmarCompra();"/>--%>

            <asp:ImageButton ID="ImageButtonLEMONPIE" runat="server" ImageUrl="~/Contenido/images/fotos de productos/lemon_pie.jpeg"
                Width="200" /><br />
            <asp:Label ID="Label8" runat="server" Text="LEMO NPIE " Font-Bold="true" />
            
            <br /><asp:Label ID="Label9" runat="server" Text="Algro fresco y rico para una noche de verano."
                CssClKGass="descripcionImagen" Width="300px" />
        </asp:Panel>
        </div>
            Cantidad:
          <%--  <asp:TextBox ID="TextBox1" runat="server" Text="1" Width="50" 
            ontextchanged="TextBox1_TextChanged" />--%>
        <asp:TextBox ID="TextBoxLEMONPIE" runat="server" Text="1" Width="50" 
            ontextchanged="TextBoxLEMONPIE_TextChanged"></asp:TextBox>
        <br />
            <br />
            <asp:Button ID="Button3" runat="server" Text="Agregar Producto" CommandArgument="LEMON PIE"
                OnClick="btnLEMONPIE_Click2" OnClientClick="return confirm('¿Estás seguro de que querés agregar este producto al carrito?');" /><br />
           
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
