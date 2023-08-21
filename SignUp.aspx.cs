using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using static System.Net.Mime.MediaTypeNames;
using System.EnterpriseServices.Internal;

namespace WebApplication3
{
    public partial class SignUp : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtsignup_Click(object sender, EventArgs e)
        {
            if (isformvalid())
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString))
                {

                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert into USERS (Surname,Password,EmailAddress,Name,Gender,PhoneNo,Address,CityId,CountryId,JobTitle,Status) " +
                        "Values('" + txtSurname.Text + "','" + txtPass.Text + "', '" + txtemail.Text + "','" + txtname.Text + "','" + txtgender.Text + "','" + txtPNum.Text + "', '" + txtAddress.Text + "','" + txtcity.Text + "','" + txtcountry.Text + "','" + txtJob.Text + "', '" + txtstatus.Text + "')", con);
                    cmd.ExecuteNonQuery();

                    Response.Write("<script> alert('Registration Successfully done'); </script>");
                    Clr();
                    con.Close();
                    lblMsg.Text = "Registration Successfully done";
                    lblMsg.ForeColor = System.Drawing.Color.Green;
                   
                }

                Response.Redirect("~/SignIn.aspx");
            }
            else
            {
                Response.Write("<script> alert('Registration Failed'); </script>");
                lblMsg.Text = "All fields are mandatory";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
        }

        private bool isformvalid()
        {
            if (txtSurname.Text == "")
            {
                Response.Write("<script> alert('username not valid'); </script>");
                txtSurname.Focus();

                return false;
            }
            else if (txtPass.Text == "")
            {
                Response.Write("<script> alert('Password not valid'); </script>");
                txtPass.Focus();
                return false;
            }
            else if (txtPass.Text != txtcPass.Text)
            {
                Response.Write("<script> alert('confirmm Password not  valid'); </script>");
                txtcPass.Focus();
            }
            else if (txtemail.Text == "")
            {
                Response.Write("<script> alert('Email not  valid'); </script>");
                txtemail.Focus();
                return false;
            }
            else if (txtname.Text == "")
            {
                Response.Write("<script> alert('Name not  valid'); </script>");
                txtname.Focus();
                return false;
            }
            return true;
            
        }



        private void Clr()
        {
            txtname.Text = string.Empty;
            txtPass.Text = string.Empty;
            txtSurname.Text = string.Empty;
            txtemail.Text = string.Empty;

        }
    }


        //User user = new User();
        //user.Surname = txtSurname.Text;
        //user.Name = txtname.Text;
        //user.Gender = txtgender.Text;
        //user.EmailAddress = txtemail.Text;
        //user.Address = txtAddress.Text;
        //user.Status = txtstatus.Text;
        //user.PhoneNumber = txtPNum.Text;
        //user.CityId = txtcity.Text;
        //user.CountryId = txtcountry.Text;
        //user.JobTitle = txtJob.Text;
        //user.LastModifiedBy = "Admin";
        //user.DateAddedTimeStamp = "Admin";
        //user.LastModifiedTimeStamp = "Admin";
        //user.Password = txtPass.Text;

        //if (!user.CheckIfUserExist())
        //{
        //    var isSignUpOk = user.SignUpUser();

        //    if (isSignUpOk)
        //    {
        //        lblMessage.Text = "<div class=\"alert alert-success\" role=\"alert\">\r\nRegistration succesfull!\r\n</div>";
        //    }
        //    else
        //    {
        //        lblMessage.Text = $"<div class=\"alert alert-warning\" role=\"alert\">\r\n{user.Message}\r\n</div>";
        //    }
        //}
        //else
        //{
        //    lblMessage.Text = "<div class=\"alert alert-warning\" role=\"alert\">\r\nUser already exist!\r\n</div>";
        //}



        //private bool Isformvalid()
        //{
        //        if (txtSurname.Text == "")
        //        {
        //            Response.Write("<script> alert('username not valid'); </script>");
        //            txtSurname.Focus();

        //            return false;
        //        }
        //        else if (txtPass.Text == "")
        //        {
        //            Response.Write("<script> alert('Password not valid'); </script>");
        //            txtPass.Focus();
        //            return false;
        //        }
        //        else if (txtPass.Text != txtcPass.Text)
        //        {
        //            Response.Write("<script> alert('confirmm Password not  valid'); </script>");
        //            txtcPass.Focus();
        //        }
        //        else if (txtemail.Text == "")
        //        {
        //            Response.Write("<script> alert('Email not  valid'); </script>");
        //            txtemail.Focus();
        //            return false;
        //        }
        //        else if (txtname.Text == "")
        //        {
        //            Response.Write("<script> alert('Name not  valid'); </script>");
        //            txtname.Focus();
        //            return false;
        //        }
        //        return true;
        //}


        
    
}