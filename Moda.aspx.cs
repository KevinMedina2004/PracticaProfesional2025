using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PracticaProfesional2025
{
    public partial class Moda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void ImageButtonDIJECIELO_Click(object sender, ImageClickEventArgs e)
        {
            string nombreProducto = "Producto1"; // Cambiá según el producto

            //if (Session["UsuarioMail"] == null)
            //{
            //     Guardamos la URL de destino con el producto
            //    Session["RedirectAfterLogin"] = "Compra.aspx";
            //    Response.Redirect("Login.aspx");
            //}
            //else
            //{
            //     Si ya está logueado, va directo a la compra
            Response.Redirect("Compra.aspx?nombre=" + nombreProducto);
        }
        protected void TextBoxDIJECIELO_TextChanged(object sender, System.EventArgs e)
        {

        }

        protected void btnCIELO_Click2(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string producto = btn.CommandArgument;

            Control contenedor = btn.NamingContainer;
            TextBox TextBoxDIJECIELO = null;

            foreach (Control ctrl in contenedor.Controls)
            {
                if (ctrl is TextBox)
                {
                    TextBoxDIJECIELO = (TextBox)ctrl;
                    break;
                }
            }

            int cantidad = 1;
            if (TextBoxDIJECIELO != null)
            {
                int.TryParse(TextBoxDIJECIELO.Text, out cantidad);
            }

            // crear instancia del tipo fuerte
            CarritoItem item = new CarritoItem { Nombre = producto, Cantidad = cantidad };

            // usar List<CarritoItem> en Session
            List<CarritoItem> carrito = Session["Carrito"] as List<CarritoItem> ?? new List<CarritoItem>();
            carrito.Add(item);
            Session["Carrito"] = carrito;

            Response.Redirect("CompraRealizada.aspx");
        }

    }
}