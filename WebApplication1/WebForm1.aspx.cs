using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace AppInsegura
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=ANTHONY\\SQLEXPRESS;Initial Catalog=Asignacion3;User ID=sa;Password=Mecagoenrafa7";
            string username = txtUsername.Text;
            string password = txtPassword.Text;

            // Consulta insegura
            string query = "SELECT * FROM Users WHERE UserName = '" + username + "' AND password = '" + password + "'";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);


                connection.Open();

                SqlDataReader reader = command.ExecuteReader();

                if (reader.HasRows)
                {
                    // Autenticación exitosa
                    lblMessage.Text = "Autenticacion exitosa";

                }
                else
                {
                    // Credenciales inválidas
                    lblMessage.Text = "Usuario o contraseña incorrectos.";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }

                reader.Close();
            }
        }
    }
}