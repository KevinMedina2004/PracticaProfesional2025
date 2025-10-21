using System;
using System.Web.UI;

namespace PracticaProfesional2025
{
    public partial class Contacto : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Por ahora no hace nada al cargar
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            // Simula un envío exitoso (solo visual)
            lblResultado.Text = "¡Gracias por contactarnos! Pronto te responderemos.";
            lblResultado.CssClass = "msg-ok";
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            // Limpia los campos del formulario
            txtNombre.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtAsunto.Text = string.Empty;
            txtMensaje.Text = string.Empty;
            lblResultado.Text = string.Empty;
        }
    }
}
