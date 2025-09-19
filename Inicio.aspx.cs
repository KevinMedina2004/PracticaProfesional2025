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

        protected void btnConfirmar_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string producto = btn.CommandArgument;

            Control contenedor = btn.NamingContainer;
            TextBox txtCantidad = null;

            foreach (Control ctrl in contenedor.Controls)
            {
                if (ctrl is TextBox)
                {
                    txtCantidad = (TextBox)ctrl;
                    break;
                }
            }

            int cantidad = 1;
            if (txtCantidad != null)
            {
                int.TryParse(txtCantidad.Text, out cantidad);
            }

            // crear instancia del tipo fuerte
            CarritoItem item = new CarritoItem { Nombre = producto, Cantidad = cantidad };

            // usar List<CarritoItem> en Session
            List<CarritoItem> carrito = Session["Carrito"] as List<CarritoItem> ?? new List<CarritoItem>();
            carrito.Add(item);
            Session["Carrito"] = carrito;

            Response.Redirect("CompraRealizada.aspx");
        }

        protected void btnConfirmar_Click2(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string producto = btn.CommandArgument;

            Control contenedor = btn.NamingContainer;
            TextBox textbox1 = null;

            foreach (Control ctrl in contenedor.Controls)
            {
                if (ctrl is TextBox)
                {
                    textbox1 = (TextBox)ctrl;
                    break;
                }
            }

            int cantidad = 1;
            if (textbox1 != null)
            {
                int.TryParse(TextBox1.Text, out cantidad);
            }

            // crear instancia del tipo fuerte
            CarritoItem item = new CarritoItem { Nombre = producto, Cantidad = cantidad };

            // usar List<CarritoItem> en Session
            List<CarritoItem> carrito = Session["Carrito"] as List<CarritoItem> ?? new List<CarritoItem>();
            carrito.Add(item);
            Session["Carrito"] = carrito;

            Response.Redirect("CompraRealizada.aspx");
        }






        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
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

        protected void imgProducto_Click(object sender, System.Web.UI.ImageClickEventArgs e)
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

        protected void imgProducto_Click1(object sender, System.Web.UI.ImageClickEventArgs e)
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
            Response.Redirect("CompraRealizada.aspx?nombre=" + nombreProducto);
        }

        protected void txtCantidad_TextChanged(object sender, System.EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, System.EventArgs e)
        {

        }


        protected void btnConfirmar_Click3(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string producto = btn.CommandArgument;

            Control contenedor = btn.NamingContainer;
            TextBox textbox2 = null;

            foreach (Control ctrl in contenedor.Controls)
            {
                if (ctrl is TextBox)
                {
                    textbox2 = (TextBox)ctrl;
                    break;
                }
            }

            int cantidad = 1;
            if (textbox2 != null)
            {
                int.TryParse(TextBox2.Text, out cantidad);
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