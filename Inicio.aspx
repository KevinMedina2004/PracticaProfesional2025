<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true"
    CodeBehind="Inicio.aspx.cs" Inherits="PracticaProfesional2025.Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content" class="p-4 p-md-5 pt-5">
        <h2 class="mb-4">PRODUCTOS DISPONIBLES</h2>

        <asp:Repeater ID="rptProductos" runat="server">
            <ItemTemplate>
                <div class="producto-item" style="border:1px solid #ccc; padding:10px; margin-bottom:10px;">
                    <asp:Image ID="imgProducto" runat="server"
                        ImageUrl='<%# ResolveUrl(Eval("ImagenUrl").ToString()) %>' Width="200" />
                    <br />
                    <h3><%# Eval("Nombre") %></h3>
                    <p><%# Eval("Descripcion") %></p>
                    Cantidad:
                    <asp:TextBox ID="txtCantidad" runat="server" Text="1" Width="50"></asp:TextBox>

                   <asp:Button ID="btnAgregar" runat="server" Text="Agregar al carrito"
                        CommandArgument='<%# Eval("Nombre") %>'
                        OnClientClick="return confirm('¿Deseas agregar este producto al carrito?');"
                        OnClick="AgregarAlCarrito_Click" />
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>

</asp:Content>
