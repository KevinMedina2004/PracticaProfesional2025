using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PracticaProfesional2025
{
    public partial class Inicio : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarProductosDesdeBD();
            }
        }

        public class Producto
        {
            public string Nombre { get; set; }
            public string Descripcion { get; set; }
            public string ImagenUrl { get; set; }
        }

        private void CargarProductosDesdeBD()
        {
            string connStr = ConfigurationManager.ConnectionStrings["CadenaPP2025"].ConnectionString;
            var productos = new List<Producto>();

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();
                string query = "SELECT Nombre, Descripcion, ImagenUrl FROM productos_disponibles";
                SqlCommand cmd = new SqlCommand(query, conn);
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    productos.Add(new Producto
                    {
                        Nombre = reader["Nombre"].ToString(),
                        Descripcion = reader["Descripcion"].ToString(),
                        ImagenUrl = reader["ImagenUrl"].ToString()
                    });
                }
            }

            rptProductos.DataSource = productos;
            rptProductos.DataBind();
        }

        protected void AgregarAlCarrito_Click(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            if (btn == null) return;

            RepeaterItem item = (RepeaterItem)btn.NamingContainer;
            string nombreProducto = btn.CommandArgument;

            TextBox txtCantidad = item.FindControl("txtCantidad") as TextBox;
            int cantidad = 1;
            if (txtCantidad != null)
            {
                int.TryParse(txtCantidad.Text, out cantidad);
            }

            CarritoItem carritoItem = new CarritoItem
            {
                Nombre = nombreProducto,
                Cantidad = cantidad
            };

            List<CarritoItem> carrito = Session["Carrito"] as List<CarritoItem> ?? new List<CarritoItem>();
            carrito.Add(carritoItem);
            Session["Carrito"] = carrito;

            // Actualiza contador del master page
            ((Principal)Master).ActualizarContadorCarrito();

            Response.Redirect("CompraRealizada.aspx");
        }
    }
}
