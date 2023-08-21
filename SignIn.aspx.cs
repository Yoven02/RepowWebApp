using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Xml.Linq;


namespace WebApplication3
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from USERS where EmailAddress=@emailaddress and Password=@pwd", con);
                cmd.Parameters.AddWithValue("@emailaddress", txtemail.Text);

                cmd.Parameters.AddWithValue("@pwd", txtPass.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if(dt.Rows.Count != 0)
                {
                    Session["EmailAddress"] = txtemail.Text;
                    Response.Redirect("~/UserHome.aspx");
                }
               

                //Response.Write("<script> alert('Login Successfully done'); </script>");
                Clr();
                con.Close();
               // lblMsg.Text = "Registration Successfully done";
                //lblMsg.ForeColor = System.Drawing.Color.Green;
                


            }


        }

        private void Clr()
        { 
            txtPass.Text = string.Empty;
            txtemail.Text = string.Empty;
            txtemail.Focus();
        }

            //UserCredentials customerCredentials = new UserCredentials();
            //UserCredentials.Username = txtUserName.Text;
            //UserCredentials.Password = txtPass.Text;

            //var isRegisterOk = UserCredentials.validateUserLogin();


            //if (isRegisterOk)
            //{
            //    FormsAuthentication.RedirectFromLoginPage(txtUserName.Text, false);
            //    Session["UserName"] = txtUserName.Text;

            //}
            //else
            //{
            //    lblMessage.Text = $"<div class=\"alert alert-warning\" role=\"alert\">\r\nLogin Invalid\r\n</div>";
            //}
        
    }

}