<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true"
    CodeBehind="Grilla.aspx.cs" Inherits="PracticaProfesional2025.Grilla" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Content/estilosGrid.css" rel="stylesheet" />

    <h2 class="titulo-destacado">❌ SECCION DE ELIMINAR PRODUCTOS</h2>

    <!-- Agregamos SweetAlert2 -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <script type="text/javascript">
        function confirmarEliminar(boton, id) {
            event.preventDefault();
            Swal.fire({
                title: '¿Estás seguro?',
                text: 'No podrás deshacer esta acción.',
                icon: 'warning',
                showCancelButton: true,
                confirmButtonText: 'Sí, eliminar',
                cancelButtonText: 'Cancelar'
            }).then((result) => {
                if (result.isConfirmed) {
                    // Aquí disparamos el postback al servidor usando __doPostBack con el id correcto
                    __doPostBack('EliminarProducto', id);
                }
            });
            return false;
        }
    </script>

    <asp:GridView ID="gvProductos" runat="server" AllowSorting="True" CssClass="gridview-linda"
        AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1"
        OnRowDataBound="gvProductos_RowDataBound">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False"
                ReadOnly="True" SortExpression="Id" Visible="False" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
            <asp:BoundField DataField="ImagenUrl" HeaderText="ImagenUrl" SortExpression="ImagenUrl" Visible="False" />
            <asp:BoundField DataField="Seccion" HeaderText="Seccion" SortExpression="Seccion" />

         <%-- Botón eliminar manual, ya no usamos CommandField --%>
<asp:TemplateField HeaderText="Eliminar" ControlStyle-ForeColor="#3445B4">
  <HeaderStyle  ForeColor="#3445B4"/>
    <ItemTemplate>
        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar"
            CssClass="botonEliminar"
            OnClientClick='<%# "return confirmarEliminar(this, " + Eval("Id") + ");" %>' />
    </ItemTemplate>
</asp:TemplateField>

        </Columns>
    </asp:GridView>

    <!-- Fuente de datos -->
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:CadenaPP2025 %>"
        SelectCommand="SELECT * FROM productos_disponibles"
        DeleteCommand="DELETE FROM productos_disponibles WHERE Id = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
    </asp:SqlDataSource>
</asp:Content>
