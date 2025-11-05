<%@ Page Title="Moda" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true"
    CodeBehind="Moda.aspx.cs" Inherits="PracticaProfesional2025.Moda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content" class="p-4 p-md-5 pt-5">
        <div class="d-flex justify-content-between align-items-center mb-4">
            <h2 class="titulo-destacado">💍 PRODUCTOS DE MODA</h2>
            <asp:Button ID="btnAgregarProducto" runat="server" CssClass="btn btn-success"
                        Text="➕ Agregar Producto" OnClick="btnAgregarProducto_Click" Visible="false" /> <br />
        <asp:Button ID="BtnEliminarProducto" runat="server"  CssClass="btn btn-danger"
                        Text="❌ Eliminar Producto" OnClick="btnEliminarProducto_Click" Visible="false" />
       
        
        </div>

        <div class="row">
            <asp:Repeater ID="rptProductos" runat="server">
                <ItemTemplate>
                    <div class="col-sm-4 mb-4">
                        <div class="card h-100 shadow-sm">
                            <img src='<%# ResolveUrl(Eval("ImagenUrl").ToString()) %>' class="card-img-top" alt="Producto" style="height:200px; object-fit:cover;">
                            <div class="card-body d-flex flex-column justify-content-between">
                                <div>
                                    <h5 class="card-title"><%# Eval("Nombre") %></h5>
                                    <p class="card-text"><%# Eval("Descripcion") %></p>
                                </div>

                                <div class="mt-3">
                                    <label>Cantidad:</label>
                                    <asp:TextBox ID="txtCantidad" runat="server" Text="1" CssClass="form-control w-25 d-inline-block" />
                                    <asp:Button ID="btnAgregar" runat="server" Text="Agregar al carrito"
                                        CssClass="btn btn-primary btn-sm d-block mt-2"
                                        CommandArgument='<%# Eval("Nombre") %>'
                                        OnClientClick="return confirm('¿Deseas agregar este producto al carrito?');"
                                        OnClick="AgregarAlCarrito_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
