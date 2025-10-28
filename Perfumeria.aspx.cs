using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PracticaProfesional2025
{
    public partial class Perfumeria : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MostrarBotonAdmin();
                CargarProductos("Perfumeria");
            }
        }

        private void MostrarBotonAdmin()
        {
            btnAgregarProducto.Visible = false;
            if (Session["Usuario"] != null)
            {
                int idUsuario = Convert.ToInt32(Session["Usuario"]);
                string connStr = ConfigurationManager.ConnectionStrings["CadenaPP2025"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    conn.Open();
                    string query = "SELECT ISNULL(ADMINISTRADOR,0) FROM USUARIO2 WHERE ID=@ID";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@ID", idUsuario);
                    int admin = Convert.ToInt32(cmd.ExecuteScalar());
                    if (admin == 1)
                        btnAgregarProducto.Visible = true;
                }
            }
        }

        private void CargarProductos(string seccion)
        {
            string connStr = ConfigurationManager.ConnectionStrings["CadenaPP2025"].ConnectionString;
            var productos = new List<Producto>();

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();
                string query = "SELECT Nombre, Descripcion, ImagenURL FROM productos_disponibles WHERE Seccion=@Seccion";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Seccion", seccion);
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    productos.Add(new Producto
                    {
                        Nombre = reader["Nombre"].ToString(),
                        Descripcion = reader["Descripcion"].ToString(),
                        ImagenUrl = reader["ImagenURL"].ToString()
                    });
                }
            }

            rptProductos.DataSource = productos;
            rptProductos.DataBind();
        }

        public class Producto
        {
            public string Nombre { get; set; }
            public string Descripcion { get; set; }
            public string ImagenUrl { get; set; }
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
                int.TryParse(txtCantidad.Text, out cantidad);

            CarritoItem carritoItem = new CarritoItem
            {
                Nombre = nombreProducto,
                Cantidad = cantidad
            };

            List<CarritoItem> carrito = Session["Carrito"] as List<CarritoItem> ?? new List<CarritoItem>();
            carrito.Add(carritoItem);
            Session["Carrito"] = carrito;

            ((Principal)Master).ActualizarContadorCarrito();

            Response.Redirect("CompraRealizada.aspx");
        }

        protected void btnAgregarProducto_Click(object sender, EventArgs e)
        {
            Response.Redirect("NuevoProducto.aspx");
        }
    }
}
