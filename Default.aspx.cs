using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Sockets;
using System.Xml.Linq;
using WebApplication3.classes;
using System.Data;
using System.Drawing;

namespace WebApplication3
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString))
            {
                con.Open();
                string sqlQuery = "Select * from PRODUCT";
                SqlCommand cmd = new SqlCommand(sqlQuery, con);

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    dtListProducts.DataSource = reader;
                    dtListProducts.DataBind();
                    reader.Close();


                }
                con.Close();
            }

  



        }
        protected void btnSave_Click(object sender, EventArgs e)
        {

        }
    }
}