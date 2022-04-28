using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BMS
{
    public partial class eliminarUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

        protected void bntEliminar_Click(object sender, EventArgs e)
        {
            
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("delete from usuarios" + " where correo='" + this.ListCorreos.SelectedValue + "'", conexion);
            int cantidad = comando.ExecuteNonQuery();

            SqlCommand comando2 = new SqlCommand("delete from salarios" + " where correo_empleado='" + this.ListCorreos.SelectedValue + "'", conexion);
            int cantidad2 = comando2.ExecuteNonQuery();

            this.Label3.Visible = true;
            if (cantidad == 1 && cantidad2 == 1) { 
                this.Label3.Text = "El empleado " + this.ListCorreos.SelectedValue  + " se eliminó con éxito";
            }
            else { 
                this.Label3.Text = "El correo no coincide con ningún empleado. Vuelva a intentarlo";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect(HttpContext.Current.Request.Url.ToString(), true);
        }
    }
}