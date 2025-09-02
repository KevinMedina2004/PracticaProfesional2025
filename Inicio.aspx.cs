using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace PracticaProfesional2025
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string nombreProducto = "Producto1"; // Cambiá según el producto

            if (Session["UsuarioMail"] == null)
            {
                // Guardamos la URL de destino con el producto
                Session["RedirectAfterLogin"] = "Compra.aspx?nombre=" + nombreProducto;
                Response.Redirect("Login.aspx");
            }
            else
            {
                // Si ya está logueado, va directo a la compra
                Response.Redirect("Compra.aspx?nombre=" + nombreProducto);
            }
        }


        
    }
}
