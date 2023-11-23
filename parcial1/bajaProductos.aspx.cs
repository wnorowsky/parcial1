using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace parcial1
{
    public partial class baja : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.DeleteParameters["idProducto"].DefaultValue = this.TextBox1.Text;
            int cant;
            cant = this.SqlDataSource1.Delete();
            this.Label2.Text = "Se borró el producto";
        }
    }
}