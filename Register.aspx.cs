using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void btnRegister.Click(object sender, EventArgs e)
        //{
        //    CLSCompliantAttribute user = new clsUser();
        //    user.Name = txtName.Text;
        //    user.Surname = txtSurname.Text;
        //    //user.DateOfBirth = txtDateOfBirth.Text;
        //    user.PhoneNo = txtPhoneNo.Text;
        //    user.Address = txtAddress.Text;
        //    user.CityId = txtCityId.Text;
        //    user.countryId = txtCountryId.Text;
        //    user.EmailAddress = txtEmailAddress.Text;
        //    user.Gender = txtGender.Text;
        //    user.JobTitle = txtJobTitle.Text; 

        //    clsUserCredentials userCreds = new clsUserCredentials();
        //    userCreds.UserName = txtUserName.Text;
        //    userCreds.Password = txtPassword.Text;

        //    if(user.ISValid() && userCreds.ISValid() && (userCreds.Password == txtConfirmPassword.TExt))
        //    {
        //        user.Register();
        //    }
        //    else
        //    {
        //        Response.Write("error");
        //    }


        //}
    }
}