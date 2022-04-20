using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BMS
{
    public partial class crearFactura : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("facturas.aspx");
        }

        protected void txtNumeroFactura_Init(object sender, EventArgs e)
        {
            Random rnd = new Random();
            int num = rnd.Next();
            this.txtNumeroFactura.Text = num.ToString();
        }

        protected void btnCrearFactura_Click(object sender, EventArgs e)
        {
            int numeroFactura = Int32.Parse(txtNumeroFactura.Text);
            string nombreCliente = this.txtNombreCliente.Text;
            string estadoFactura = "pendiente";
            string descripcionFactura = this.txtDescripcionCargo.Text;
            int monto = Int32.Parse(txtMonto.Text);

            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();

            SqlCommand comando = new SqlCommand("insert into facturas (numeroFactura,nombreCliente,estadoFactura,descripcionFactura,monto) values ('" +
                  numeroFactura + "','" + nombreCliente + "','" + estadoFactura+"','" +descripcionFactura+ "','" +monto + "')", conexion);

            comando.ExecuteNonQuery();
            conexion.Close();
            Response.Redirect("crearFactura.aspx");

        }
    }
}