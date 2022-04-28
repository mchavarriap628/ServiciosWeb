using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BMS
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string userEmail = this.txtUsuario.Text;
            string userPassword = this.txtPassword.Text;

            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();

            SqlCommand comando = new SqlCommand("select * from usuarios where correo = '" + userEmail + "'", conexion);

            SqlDataReader registro = comando.ExecuteReader();
            if (registro.Read())
            {

                string correoDB = registro["correo"].ToString();
                string contraDB = registro["contra"].ToString();

                if (userEmail.Equals(correoDB) && userPassword.Equals(contraDB))
                {

                    string rol = registro["rol"].ToString();

                    if (rol.Equals("admin"))
                    {
                        this.txtQueryResult.Text = "Es admin...";
                        Response.Redirect("admin.aspx");
                    }
                    else if (rol.Equals("contador"))
                    {
                        this.txtQueryResult.Text = "Es contador...";
                        Response.Redirect("user.aspx");
                    }
                    else
                    {
                        this.txtQueryResult.Text = "Es empleado...";
                    }
                }
            }
            else
                this.txtQueryResult.Text = "Credenciales invalidas..";
         conexion.Close();


        }
    }
}