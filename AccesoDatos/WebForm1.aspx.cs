using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AccesoDatos
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private static string cadena = ConfigurationManager.ConnectionStrings["cadena"].ConnectionString;
        private SqlConnection conexion = new SqlConnection(cadena);
        private void Listar()
        {
            SqlCommand commando = new SqlCommand("spListarVendedor",conexion);
            commando.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter adapter = new SqlDataAdapter(commando);
            DataTable tabla = new DataTable();
            adapter.Fill(tabla);
            gvVendedor.DataSource = tabla;
            gvVendedor.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Listar();
        }

        protected void gvVendedor_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}