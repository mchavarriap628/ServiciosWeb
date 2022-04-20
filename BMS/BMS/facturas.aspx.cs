using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BMS
{
    public partial class facturas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("user.aspx");
        }

        //Este botón consulta en la DB la información de una factura buscada y carga los resultados en la pantalla
        protected void btnBuscarFactura_Click(object sender, EventArgs e)
        {
            string facturaBuscada = this.ddNumeroFactura.Text;

            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();

            SqlCommand comando = new SqlCommand("select * from facturas where numeroFactura = '" + facturaBuscada + "'", conexion);

            SqlDataReader registro = comando.ExecuteReader();
            if (registro.Read())
            {
                string nombreCliente = registro["nombreCliente"].ToString();
                this.txtCliente.Text = nombreCliente;

                string estadoFactura = registro["estadoFactura"].ToString();
                if (estadoFactura.Equals("cancelado"))
                {
                    this.rbCancelada.Checked = true;
                    this.rbPendiente.Checked = false;
                }else
                {
                    this.rbCancelada.Checked = false;
                    this.rbPendiente.Checked = true;
                }

                string descripcionFactura = registro["descripcionFactura"].ToString();
                this.txtDescripcionCargo.Text = descripcionFactura;

                string monto = registro["monto"].ToString();
                this.txtMonto.Text = monto;

            }
            else
              //  this.txtQueryResult.Text = "Credenciales invalidas..";
            conexion.Close();
        }

        protected void ddNumeroFactura_Init(object sender, EventArgs e)
        {
            //Conexión con la base de datos
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            //Se crea y se ejecuta la consulta
            string sqlConsulta = "select * from facturas";
            SqlDataAdapter sda = new SqlDataAdapter(sqlConsulta, conexion);
            //Se crea una tabla de datos para almacenar el resultado de la consulta
            DataTable dt = new DataTable();
            //Se llena la tabla de datps con lo que se obtuvo de la ejecución de la consulta
            sda.Fill(dt);
            //Se llena el dropdownlist con la tabla de datos
            ddNumeroFactura.DataSource = dt;
            ddNumeroFactura.DataValueField = "numeroFactura";
            ddNumeroFactura.DataTextField = "numeroFactura";
            ddNumeroFactura.DataBind();
            //Se cierra la conexión
            conexion.Close();
        }

        //Este botón guarda el estado de una factura -- cancelado o pendiente
        protected void btnCambiarEstado_Click(object sender, EventArgs e)
        {
            //se guarda en una variable el nuevo estado que se guardará en la DB
            string nuevoEstado;
            if (rbCancelada.Checked==true)
            {
                nuevoEstado = "cancelado";
            }
            else
            {
                nuevoEstado = "pendiente";
            }

            //se crea la conexión con la DB
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            //Se realiza la consulta para actualizar el estado de la factura
            SqlCommand comando = new SqlCommand("update facturas set estadoFactura='" + nuevoEstado +
                     "' where nombreCliente='" + this.txtCliente.Text + "'", conexion);
            //Se ejecuta el comando.
            int cantidad = comando.ExecuteNonQuery();
            //Se notifica por medio de un label el resultado del query
            if (cantidad == 1)
                this.txtResultadoCambioEstado.Text = "El estado se la factura se ha actualizado";

            else
                this.txtResultadoCambioEstado.Text = "Error, no se ha aplicado ningún cambio";
            conexion.Close();

        }

        protected void btnGenerarFactura_Click(object sender, EventArgs e)
        {
            Response.Redirect("crearFactura.aspx");
        }
    }
}