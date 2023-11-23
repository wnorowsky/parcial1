using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace parcial1
{
    public partial class modificacionProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.SelectParameters["idProducto"].DefaultValue = this.TextBox1.Text;
            this.SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader registros;
            registros = (SqlDataReader)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            if (registros.Read())
            {
                this.TextBox2.Text = registros["descripcion"].ToString();
            }
            else
                this.Label2.Text = "No existe un producto con dicho código";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.UpdateParameters["descripcion"].DefaultValue = this.TextBox2.Text;
            int cant;
            cant = this.SqlDataSource1.Update();
            if (cant == 1)
                this.Label4.Text = "Se modifico el producto";
            else
                this.Label4.Text = "No existe el codigo";
        }
    }
}