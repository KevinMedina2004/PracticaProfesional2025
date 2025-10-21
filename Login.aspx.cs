using System;
using System.Data.SqlClient;
using System.Configuration;

namespace PracticaProfesional2025
{
    public partial class Login : System.Web.UI.Page
    {
        private static string Cadena = ConfigurationManager.ConnectionStrings["CadenaPP2025"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // LOGIN
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection conexion = new SqlConnection(Cadena))
            {
                string script = "SELECT ID FROM USUARIO2 WHERE MAIL=@Mail AND CONTRASEÑA=@Pass";

                SqlCommand command = new SqlCommand(script, conexion);
                command.Parameters.AddWithValue("@Mail", txtUsuario.Text.Trim());
                command.Parameters.AddWithValue("@Pass", txtPassword.Text.Trim());

                conexion.Open();
                SqlDataReader reader = command.ExecuteReader();

                string id = string.Empty;
                if (reader.HasRows)
                {
                    while (reader.Read())
                        id = reader.GetInt32(0).ToString();
                }
                reader.Close();
                conexion.Close();

                if (!string.IsNullOrEmpty(id))
                {
                    Session["Usuario"] = id;
                    Response.Redirect("Inicio.aspx");
                }
                else
                    lblMensaje.Text = "Usuario y/o contraseña incorrectos";
            }
        }

        // REGISTRO
        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            string nombre = txtNombreReg.Text.Trim();
            string apellido = txtApellidoReg.Text.Trim();
            string mail = txtMailReg.Text.Trim();
            string password = txtPasswordReg.Text.Trim();

            if (string.IsNullOrEmpty(nombre) || string.IsNullOrEmpty(apellido) ||
                string.IsNullOrEmpty(mail) || string.IsNullOrEmpty(password))
            {
                lblMensajeReg.Text = "Todos los campos son obligatorios";
                return;
            }

            using (SqlConnection conexion = new SqlConnection(Cadena))
            {
                string query = "INSERT INTO USUARIO2 (NOMBRE, APELLIDO, MAIL, CONTRASEÑA) " +
                               "VALUES (@Nombre, @Apellido, @Mail, @Password)";

                using (SqlCommand cmd = new SqlCommand(query, conexion))
                {
                    cmd.Parameters.AddWithValue("@Nombre", nombre);
                    cmd.Parameters.AddWithValue("@Apellido", apellido);
                    cmd.Parameters.AddWithValue("@Mail", mail);
                    cmd.Parameters.AddWithValue("@Password", password);

                    conexion.Open();
                    cmd.ExecuteNonQuery();
                    conexion.Close();
                }
            }

            txtNombreReg.Text = "";
            txtApellidoReg.Text = "";
            txtMailReg.Text = "";
            txtPasswordReg.Text = "";
            lblMensajeReg.ForeColor = System.Drawing.Color.Green;
            lblMensajeReg.Text = "Usuario registrado correctamente. Ya puedes iniciar sesión.";
        }

        // Mostrar panel de registro
        protected void lnkMostrarRegistro_Click(object sender, EventArgs e)
        {
            pnlRegistro.Visible = true;
        }
    }
}
