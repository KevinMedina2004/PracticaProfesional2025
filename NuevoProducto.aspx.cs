using System;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace PracticaProfesional2025
{
    public partial class NuevoProducto : System.Web.UI.Page
    {
        private static string Cadena = ConfigurationManager.ConnectionStrings["CadenaPP2025"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                string nombreArchivo = "";
                string rutaRelativa = "";

                // 📸 Guardar imagen
                if (fuImagen.HasFile)
                {
                    string extension = Path.GetExtension(fuImagen.FileName).ToLower();
                    if (extension == ".jpg" || extension == ".jpeg" || extension == ".png")
                    {
                        nombreArchivo = DateTime.Now.Ticks + "_" + fuImagen.FileName;
                        string carpetaDestino = Server.MapPath("~/Contenido/Productos/");

                        if (!Directory.Exists(carpetaDestino))
                            Directory.CreateDirectory(carpetaDestino);

                        string rutaCompleta = Path.Combine(carpetaDestino, nombreArchivo);
                        fuImagen.SaveAs(rutaCompleta);

                        // Ruta relativa para mostrar la imagen
                        rutaRelativa = "Contenido/Productos/" + nombreArchivo;
                    }
                    else
                    {
                        lblMensaje.Text = "❌ Solo se permiten imágenes JPG o PNG.";
                        lblMensaje.CssClass = "msg-error";
                        return;
                    }
                }
                else
                {
                    lblMensaje.Text = "❌ Debes seleccionar una imagen.";
                    lblMensaje.CssClass = "msg-error";
                    return;
                }

                // 💾 Guardar producto
                using (SqlConnection conexion = new SqlConnection(Cadena))
                {
                    string query = "INSERT INTO productos_disponibles (Nombre, Descripcion, ImagenURL, Seccion) VALUES (@Nombre, @Descripcion, @ImagenURL, @Seccion)";

                    SqlCommand cmd = new SqlCommand(query, conexion);
                    cmd.Parameters.AddWithValue("@Nombre", txtNombre.Text);
                    cmd.Parameters.AddWithValue("@Descripcion", txtDescripcion.Text);
                    cmd.Parameters.AddWithValue("@ImagenURL", rutaRelativa);
                    cmd.Parameters.AddWithValue("@Seccion", ddlSeccion.SelectedValue);

                    conexion.Open();
                    cmd.ExecuteNonQuery();
                    conexion.Close();
                }

                // ✅ Redirigir según la sección elegida
                string seccion = ddlSeccion.SelectedValue;
                switch (seccion)
                {
                    case "Moda":
                        Response.Redirect("Moda.aspx");
                        break;
                    case "Perfumeria":
                        Response.Redirect("Perfumeria.aspx");
                        break;
                    case "Postres":
                        Response.Redirect("Postres.aspx");
                        break;
                    case "Inicio":
                    default:
                        Response.Redirect("Inicio.aspx");
                        break;
                }
            }
            catch (Exception ex)
            {
                lblMensaje.Text = "❌ Error: " + ex.Message;
                lblMensaje.CssClass = "msg-error";
            }
        }

        protected void btnGuardar0_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }
    }
}
