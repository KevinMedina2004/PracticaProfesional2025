using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace PracticaProfesional2025
{
    public partial class NuevoProducto : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            string nombre = txtNombre.Text.Trim();
            string descripcion = txtDescripcion.Text.Trim();
            string imagenUrl = "";

            // Validar campos
            if (string.IsNullOrEmpty(nombre) || string.IsNullOrEmpty(descripcion))
            {
                Response.Write("<script>                                    alert('Nombre y descripción son obligatorios.');</script>");
                return;
            }

            // Validar que se haya seleccionado un archivo
            if (fuImagen.HasFile)
            {
                try
                {
                    // Obtener extensión y nombre del archivo
                    string extension = System.IO.Path.GetExtension(fuImagen.FileName).ToLower();
                    string[] permitidas = { ".jpg", ".jpeg", ".png", ".gif" };

                    if (Array.IndexOf(permitidas, extension) < 0)
                    {
                        Response.Write("<script>                                            alert('Formato de imagen no permitido. Solo JPG, PNG, GIF.');</script>");
                        return;
                    }

                    // Crear ruta en la carpeta de tu proyecto
                    string nombreArchivo = Guid.NewGuid().ToString() + extension; // para evitar duplicados
                    string rutaServidor = Server.MapPath("~/Contenido/images/") + nombreArchivo;
                    fuImagen.SaveAs(rutaServidor);

                    // Guardar ruta relativa en la DB
                    imagenUrl = "~/Contenido/images/" + nombreArchivo;
                }
                catch (Exception ex)
                {
                    Response.Write("<script>                                        alert('Error al subir la imagen: " + ex.Message + "');</script>");
                    return;
                }
            }
            else
            {
                Response.Write("<script>                                    alert('Debes seleccionar una imagen.');</script>");
                return;
            }

            // Guardar en la base de datos
            string connStr = ConfigurationManager.ConnectionStrings["CadenaPP2025"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();
                string query = "INSERT INTO productos_disponibles (Nombre, Descripcion, ImagenUrl) VALUES (@nombre, @descripcion, @imagen)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@nombre", nombre);
                cmd.Parameters.AddWithValue("@descripcion", descripcion);
                cmd.Parameters.AddWithValue("@imagen", imagenUrl);
                cmd.ExecuteNonQuery();
            }

            Response.Write("<script>                                alert('Producto agregado correctamente.'); window.location = 'Inicio.aspx';</script>");
        }

    }
}
