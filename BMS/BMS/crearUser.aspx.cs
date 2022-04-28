using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BMS
{
    public partial class crearUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCrearEmpleado_Click(object sender, EventArgs e)
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("insert into usuarios(nombre,correo,contra,rol) values('" + txtNombre.Text + "','" +
                txtCorreo.Text + "','" +
                txtContrasena.Text + "','" + listRol.SelectedValue + "')", conexion);
            comando.ExecuteNonQuery();

            SqlCommand comando2 = new SqlCommand("insert into salarios(correo_empleado,salario) values('" + txtCorreo.Text + "','" +
                txtSalario.Text + "')", conexion);
            comando2.ExecuteNonQuery();


            Label7.Visible = true;
            Label7.Text = "El empleado " + txtCorreo.Text + " se creó con éxito.";
            conexion.Close(); 

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            txtNombre.Text = "";
            this.txtContrasena.Attributes.Add("value", "");
            txtCorreo.Text = "";
            txtSalario.Text = "";
            Label7.Text = "";
        }

        protected void btnMostrar_Click(object sender, EventArgs e)
        {
            this.txtContrasena.Attributes.Add("value", this.txtContrasena.Text);

            if (btnMostrar.Text.Equals("Mostrar"))
            {
                this.txtContrasena.TextMode = TextBoxMode.SingleLine;
                this.btnMostrar.Text = "Ocultar";
            }
            else
            {
                this.txtContrasena.TextMode = TextBoxMode.Password;
                this.btnMostrar.Text = "Mostrar";

            }
        }
    }
}