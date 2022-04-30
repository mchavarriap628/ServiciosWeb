using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BMS
{
    public partial class PlantillasVF : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            //CONSULTAR.

            string nombrebuscado = this.ddNumeroUsuario.Text;


            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();

            SqlCommand comando = new SqlCommand("select * from salarios where correo_empleado = '" + nombrebuscado + "'", conexion);

            SqlDataReader registro = comando.ExecuteReader();
            if (registro.Read())
            {
                string Salariousuario = registro["salario"].ToString();
                this.TextBoxSalarioBase.Text = Salariousuario;

                string bonocliente = registro["bono"].ToString();
                this.TextBoxBonos.Text = bonocliente;

                string pensionusuario = registro["pension"].ToString();
                this.TextBoxPensión.Text = pensionusuario;

                string segurousuario = registro["seguro"].ToString();
                this.TextBoxSeguro.Text = segurousuario;
                String f = Salariousuario;
                string r = bonocliente;
                int a = Convert.ToInt32(f);
                int b = Convert.ToInt32(r);
                int c = (a + b);
                int ddd = (a + b);
                string d = Convert.ToString(c);
                this.TextBoxTotaldeIngresos.Text = d;



                string ff = pensionusuario;
                string rr = segurousuario;
                int aa = Convert.ToInt32(ff);
                int ba = Convert.ToInt32(rr);
                int cc = (aa + ba);
                int ee = (ddd - cc);
                string dd = Convert.ToString(cc);
                this.Totaldeducciones.Text = dd;



                // int fff = (d - ee);
                string finalsaldo = Convert.ToString(ee);
                this.TextBoxTotalAPagar.Text = finalsaldo;




            }
            else
                //  this.txtQueryResult.Text = "Credenciales invalidas..";
                conexion.Close();

        }

        protected void btnPagar_Click(object sender, EventArgs e)
        {
            string script = "alert(\"Se ha realizado el pago con éxito!\");";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "ServerControlScript", script, true);
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            this.TextBoxBonos.Text = " ";
            this.TextBoxPensión.Text = " ";
            this.TextBoxSalarioBase.Text = "  ";
            this.TextBoxTotalAPagar.Text = " ";
            this.TextBoxTotaldeIngresos.Text = " ";
            this.TextBoxSeguro.Text = " ";
            this.Totaldeducciones.Text = " ";
        }
    }
}