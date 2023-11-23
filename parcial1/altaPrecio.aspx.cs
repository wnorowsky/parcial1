using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace parcial1
{
    public partial class alta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSourcePrecios.InsertParameters["fecha"].DefaultValue = this.TextBox2.Text;
            this.SqlDataSourcePrecios.InsertParameters["monto"].DefaultValue = this.TextBox3.Text;
            this.SqlDataSourcePrecios.InsertParameters["idProducto"].DefaultValue = this.DropDownList1.SelectedValue;
            this.SqlDataSourcePrecios.Insert();
            this.Label4.Text = "se efectuó la carga";
            this.TextBox2.Text = "";
            this.TextBox3.Text = "";
        }
    }
}