using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BMS
{
    public partial class user : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPlanillas_Click(object sender, EventArgs e)
        {
            Response.Redirect("planillas.aspx");
        }

        protected void btnFacturas_Click(object sender, EventArgs e)
        {
            Response.Redirect("facturas.aspx");
        }
    }
}