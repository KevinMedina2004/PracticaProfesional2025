using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace PracticaProfesional2025
{
    public partial class CompraRealizada : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var carrito = Session["Carrito"] as List<CarritoItem>;
                if (carrito != null)
                {
                    rptCarrito.DataSource = carrito;
                    rptCarrito.DataBind();
                }
            }
        }

        protected void btnSeguirComprando_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }

        protected void btnGuardarCompra_Click(object sender, EventArgs e)
        {
            var carrito = Session["Carrito"] as List<CarritoItem>;
            if (carrito == null || carrito.Count == 0)
            {
                Response.Write("<script>alert('El carrito está vacío.');</script>");
                return;
            }

            if (Session["Usuario"] == null)
            {
                Response.Write("<script>alert('Debe iniciar sesión para guardar la compra.');</script>");
                return;
            }

            int usuarioId = Convert.ToInt32(Session["Usuario"]);
            string connStr = ConfigurationManager.ConnectionStrings["CadenaPP2025"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();

                // 1️⃣ Insertar la compra general y obtener el IdCompra
                int idCompra;
                string queryCompra = "INSERT INTO Compras (UsuarioId) VALUES (@usuarioId); SELECT SCOPE_IDENTITY();";
                using (SqlCommand cmd = new SqlCommand(queryCompra, conn))
                {
                    cmd.Parameters.AddWithValue("@usuarioId", usuarioId);
                    idCompra = Convert.ToInt32(cmd.ExecuteScalar());
                }

                // 2️⃣ Insertar cada producto con el mismo IdCompra
                foreach (var item in carrito)
                {
                    string queryProducto = "INSERT INTO ComprasProductos (IdCompra, NombreProducto, Cantidad) VALUES (@idCompra, @producto, @cantidad)";
                    using (SqlCommand cmd = new SqlCommand(queryProducto, conn))
                    {
                        cmd.Parameters.AddWithValue("@idCompra", idCompra);
                        cmd.Parameters.AddWithValue("@producto", item.Nombre);
                        cmd.Parameters.AddWithValue("@cantidad", item.Cantidad);
                        cmd.ExecuteNonQuery();
                    }
                }
            }

            // Limpiar carrito
            Session["Carrito"] = null;

            Response.Write("<script>alert('Compra guardada con éxito en la base de datos.');</script>");
        }
    }
}
