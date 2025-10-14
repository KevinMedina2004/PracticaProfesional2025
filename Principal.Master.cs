using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PracticaProfesional2025
{
    public partial class Principal : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ActualizarContadorCarrito();
            }

        }

        // Botón de carrito muestra cantidad actual de productos
        public void ActualizarContadorCarrito()
        {
            List<CarritoItem> carrito = Session["Carrito"] as List<CarritoItem>;
            int total = carrito != null ? carrito.Count : 0;

            lblContadorCarrito.Text = total.ToString();
            lblContadorCarrito.Visible = total > 0;
        }
        protected void btnCarrito_Click(object sender, EventArgs e)
        {
            // Redirige a página de carrito o muestra popup
            Response.Redirect("Carrito.aspx");
        }
    }
}
