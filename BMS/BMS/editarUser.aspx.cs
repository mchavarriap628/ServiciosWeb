using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BMS
{
    public partial class editarUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            this.Label7.Text = "";
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("select id,nombre,correo,contra,rol from usuarios" + " where correo='" + this.ListCorreoUsers.SelectedValue + "'", conexion);
            SqlDataReader registro = comando.ExecuteReader();

            SqlConnection conexion2 = new SqlConnection(s);
            conexion2.Open();
            SqlCommand comando2 = new SqlCommand("select salario from salarios" + " where correo_empleado='" + this.ListCorreoUsers.SelectedValue + "'", conexion2);
            SqlDataReader registro2 = comando2.ExecuteReader();


            if (registro.Read() && registro2.Read())
            {
                this.txtNombre.Text = registro["nombre"].ToString();
                this.txtSalario.Text = registro2["salario"].ToString();
                this.ListRoles.SelectedValue = registro["rol"].ToString();
            }
            else
            {
                this.Label7.Visible = true;
                this.Label7.Text = "No existe el estudiante con ese correo.";
            }
            conexion.Close();
            conexion2.Close();
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            

            if (txtContrasena.Text == string.Empty)
            {
                Edit_Without_Password();
            }
            else
            {
                Edit_With_Password();
            }

        }
        private void Edit_With_Password()
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();

            SqlCommand comando = new SqlCommand("update usuarios set " +
                "nombre='" + this.txtNombre.Text + "' ,contra='" + this.txtContrasena.Text +
                "' ,rol='" + this.ListRoles.SelectedValue + "' where correo='" + this.ListCorreoUsers.SelectedValue + "'", conexion);

            SqlConnection conexion2 = new SqlConnection(s);
            conexion2.Open();
            SqlCommand comando2 = new SqlCommand("update salarios set " +
                "salario='" + this.txtSalario.Text + "' where correo_empleado='" + this.ListCorreoUsers.SelectedValue + "'", conexion2);

            int cantidad = comando.ExecuteNonQuery();
            int cantidad2 = comando2.ExecuteNonQuery();
            if (cantidad == 1 && cantidad2 == 1)
            {
                this.Label7.Visible = true;
                this.Label7.Text = "El empleado " + this.ListCorreoUsers.SelectedValue + " se editó con éxito.";
            }
            else
            {
                this.Label7.Visible = true;
                this.Label7.Text = "El correo no coincide con ningún empleado. Vuelva a intentarlo";
            }
            conexion.Close();
            conexion2.Close();
        }

        private void Edit_Without_Password()
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();

            SqlCommand comando = new SqlCommand("update usuarios set " +
                "nombre='" + this.txtNombre.Text +
                "' ,rol='" + this.ListRoles.SelectedValue + "' where correo='" + this.ListCorreoUsers.SelectedValue + "'", conexion);

            SqlConnection conexion2 = new SqlConnection(s);
            conexion2.Open();
            SqlCommand comando2 = new SqlCommand("update salarios set " +
                "salario='" + this.txtSalario.Text + "' where correo_empleado='" + this.ListCorreoUsers.SelectedValue + "'", conexion2);

            int cantidad = comando.ExecuteNonQuery();
            int cantidad2 = comando2.ExecuteNonQuery();
            if (cantidad == 1 && cantidad2 == 1)
            {
                this.Label7.Visible = true;
                this.Label7.Text = "El empleado " + this.ListCorreoUsers.SelectedValue + " se editó con éxito.";
            }
            else
            {
                this.Label7.Visible = true;
                this.Label7.Text = "El correo no coincide con ningún empleado. Vuelva a intentarlo";
            }
            conexion.Close();
            conexion2.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.txtNombre.Text = "";
            this.txtContrasena.Attributes.Add("value", "");
            this.txtSalario.Text = "";
            this.ListRoles.SelectedValue = "";
            this.Label7.Text = "";
            txtContrasena.Visible = false;
            LabelContrasena.Visible = false;
            btnMostrar.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txtContrasena.Visible = true;
            LabelContrasena.Visible = true;
            btnMostrar.Visible = true;
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

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin.aspx");
        }
    }
}