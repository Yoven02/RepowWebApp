<%@ Page Title="" Language="C#" MasterPageFile="~/Client.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="WebApplication3.Orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class=" text-center text-lg-start">
  <style>
    .rounded-t-5 {
      border-top-left-radius: 0.5rem;
      border-top-right-radius: 0.5rem;
    }

    @media (min-width: 992px) {
      .rounded-tr-lg-0 {
        border-top-right-radius: 0;
      }

      .rounded-bl-lg-5 {
        border-bottom-left-radius: 0.5rem;
      }
    }
  </style>
  <div class="card mb-3">
    <div class="row g-0 d-flex align-items-center">
      <div class="col-lg-4 d-none d-lg-flex">
        <img src="images/phone4.jpg" alt="Trendy Pants and Shoes"
          class="w-100 rounded-t-5 rounded-tr-lg-0 rounded-bl-lg-5" />
          
      </div>
        
      <div class="col-lg-8">
          <h1>Order Details</h1>
                <hr />
        <div class="card-body py-5 px-md-5">
            
          <form>
               
            <div class="form-outline mb-4">
               
              <label class="form-label" for="form2Example1">Last Name</label>
                <asp:TextBox ID="txtLName" CssClass="form-control" runat="server"></asp:TextBox>

            </div>

            <!-- Password input -->
            <div class="form-outline mb-4">
              <label class="form-label" for="form2Example2">First Name</label>
                 <asp:TextBox ID="txtFname" CssClass="form-control" runat="server"></asp:TextBox>

            </div>


            <div class="form-outline mb-4">
               
              <label class="form-label" for="form2Example1">Email</label>
                <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>

            </div>
              <div class="form-outline mb-4">
               
              <label class="form-label" for="form2Example1">Mobile Number</label>
                <asp:TextBox ID="txtMobileNumber" CssClass="form-control" runat="server"></asp:TextBox>

            </div>

            <!-- Submit button -->
             <div class="d-flex justify-content-center">
                 <asp:Button ID="btnLogin" CssClass="btn btn-success w-100" runat="server" Text="Proceed to payment" />
            </div>

          </form>

        </div>
      </div>
    </div>
  </div>
    
</section>

</asp:Content>
