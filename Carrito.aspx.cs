using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PracticaProfesional2025
{
    public partial class Carrito : System.Web.UI.Page
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
    }
}