using System;
using System.Net;
using System.Net.Mail;

namespace PracticaProfesional2025
{
    public partial class Contacto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            try
            {
                // Obtener datos del formulario
                string nombre = txtNombre.Text.Trim();
                string email = txtEmail.Text.Trim();
                string asunto = txtAsunto.Text.Trim();
                string mensaje = txtMensaje.Text.Trim();

                // Validar que no haya campos vacíos
                if (nombre == "" || email == "" || mensaje == "")
                {
                    lblResultado.Text = "Por favor, completá todos los campos obligatorios.";
                    lblResultado.ForeColor = System.Drawing.Color.Red;
                    return;
                }

                // Crear el mensaje de correo
                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("pepitogonzalez13d@gmail.com", "Formulario Web");
                mail.To.Add("pepitogonzalez13d@gmail.com"); // destinatario (vos mismo)
                mail.Subject = "Mensaje desde la página de contacto: " + asunto;

                mail.Body = "Nombre: " + nombre + "\n"
                          + "Email: " + email + "\n\n"
                          + "Mensaje:\n" + mensaje;
                mail.IsBodyHtml = false;

                // Configurar el cliente SMTP (para Gmail)
                SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                smtp.Credentials = new NetworkCredential("pepitogonzalez13d@gmail.com", "ocxz vmam nrjs zltm");
                smtp.EnableSsl = true;

                // Enviar el correo
                smtp.Send(mail);

                lblResultado.Text = "✅ Mensaje enviado correctamente. ¡Gracias por contactarnos!";
                lblResultado.ForeColor = System.Drawing.Color.Green;

                LimpiarCampos();
            }
            catch (Exception ex)
            {
                lblResultado.Text = "❌ Error al enviar el mensaje: " + ex.Message;
                lblResultado.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            LimpiarCampos();
            lblResultado.Text = "";
        }

        protected void btnVolver1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }

        private void LimpiarCampos()
        {
            txtNombre.Text = "";
            txtEmail.Text = "";
            txtAsunto.Text = "";
            txtMensaje.Text = "";
        }
    }
}
