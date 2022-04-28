using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BMS
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("crearUser.aspx");
        }

        protected void btnEditUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("editarUser.aspx");
        }

        protected void btnDeleteUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("eliminarUser.aspx");
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}