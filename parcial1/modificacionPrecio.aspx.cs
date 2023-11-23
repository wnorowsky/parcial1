using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace parcial1
{
    public partial class modificacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSourcePrecio.SelectParameters["idProducto"].DefaultValue = this.TextBox1.Text;
            this.SqlDataSourcePrecio.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader registros;
            registros = (SqlDataReader)SqlDataSourcePrecio.Select(DataSourceSelectArguments.Empty);
            if (registros.Read())
            {
                this.TextBox2.Text = registros["fecha"].ToString();
                this.TextBox3.Text = registros["monto"].ToString();
            }
            else
                this.Label2.Text = "No existe un producto registrado con un precio asociado con ese id";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            this.SqlDataSourcePrecio.UpdateParameters["fecha"].DefaultValue = this.TextBox2.Text;
            this.SqlDataSourcePrecio.UpdateParameters["monto"].DefaultValue = this.TextBox3.Text;
            this.SqlDataSourcePrecio.UpdateParameters["idProducto"].DefaultValue = this.TextBox1.Text;
            int cant;
            cant = this.SqlDataSourcePrecio.Update();
            if(cant == 1)
                this.Label5.Text = "Se modifico el precio";
            else
                this.Label5.Text = "error en la carga";
        }
    }
}