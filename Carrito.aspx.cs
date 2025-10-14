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
        protected void btnSeguir_Click(object sender, EventArgs e)
        {
                Response.Redirect("Inicio.aspx");
        }   
}
}