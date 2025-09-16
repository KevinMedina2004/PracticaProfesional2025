using System;
using System.Collections.Generic;

namespace PracticaProfesional2025
{
    public partial class CompraRealizada : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var carrito = Session["Carrito"] as List<dynamic>;
            if (carrito != null)
            {
                rptCarrito.DataSource = carrito;
                rptCarrito.DataBind();

            }
        }
        protected void btnSeguirComprando_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx"); // O el nombre de tu página de productos
        }

    }
}