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
                string script = "SELECT ID, NOMBRE, APELLIDO, MAIL, ISNULL(ADMINISTRADOR, 0) AS ADMINISTRADOR " +
                                "FROM USUARIO2 WHERE MAIL=@Mail AND CONTRASEÑA=@Pass";

                SqlCommand command = new SqlCommand(script, conexion);
                command.Parameters.AddWithValue("@Mail", txtUsuario.Text.Trim());
                command.Parameters.AddWithValue("@Pass", txtPassword.Text.Trim());

                conexion.Open();
                SqlDataReader reader = command.ExecuteReader();

                if (reader.Read())
                {
                    // Guarda datos en sesión
                    Session["Usuario"] = reader["ID"].ToString();
                    Session["Nombre"] = reader["NOMBRE"].ToString();
                    Session["Apellido"] = reader["APELLIDO"].ToString();
                    Session["Mail"] = reader["MAIL"].ToString();
                    Session["Administrador"] = Convert.ToInt32(reader["ADMINISTRADOR"]);

                    Response.Redirect("Inicio.aspx");
                }
                else
                {
                    lblMensaje.Text = "Usuario y/o contraseña incorrectos";
                }

                reader.Close();
                conexion.Close();
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
                string query = "INSERT INTO USUARIO2 (NOMBRE, APELLIDO, MAIL, CONTRASEÑA, ADMINISTRADOR) " +
                               "VALUES (@Nombre, @Apellido, @Mail, @Password, 0)"; // 👈 por defecto no admin

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

            // Limpia campos
            txtNombreReg.Text = "";
            txtApellidoReg.Text = "";
            txtMailReg.Text = "";
            txtPasswordReg.Text = "";

            // Mensaje de éxito en login
            lblMensaje.ForeColor = System.Drawing.Color.Green;
            lblMensaje.Text = "Usuario registrado correctamente. Ya puedes iniciar sesión.";

            // Oculta panel de registro y vuelve al login
            pnlRegistro.Visible = false;
        }

        // Mostrar panel de registro
        protected void lnkMostrarRegistro_Click(object sender, EventArgs e)
        {
            pnlRegistro.Visible = true;
            lblMensaje.Text = ""; // limpia mensajes anteriores
        }
    }
}
