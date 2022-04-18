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

            SqlCommand comando = new SqlCommand("select * from [user] where email = '" + userEmail + "'", conexion);

            SqlDataReader registro = comando.ExecuteReader();
            if (registro.Read())

                this.txtQueryResult.Text = registro["role"].ToString();

               /* if (registro["name"].ToString().Equals(userEmail) && registro["password"].ToString().Equals(userPassword))
                {
                    if (registro["role"].ToString().Equals("admin"))
                    {
                        this.txtQueryResult.Text = "Es admin...";
                    }
                    else if (registro["role"].ToString().Equals("contador"))
                    {
                        this.txtQueryResult.Text = "Es contador...";
                    }
                    else
                    {
                        this.txtQueryResult.Text = "Es empleado...";
                    }
                }

            else
                this.txtQueryResult.Text = "Credenciales invalidas..";
            conexion.Close();*/


        }
    }
}