<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WebApplication3.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/StyleSheet.css" rel="Stylesheet" />
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">AllSport</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" href="#">About</a>
        </li>
           <li class="nav-item">
          <a class="nav-link" href="#">Contact US</a>

                <li class="nav-item">
          <a class="nav-link" href="Men.aspx">Product</a>
        </li>

        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Products
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li class="dropdown-item" href="Men.aspx">Men</></li>
              <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="Men.aspx">Shirts</a></li>
              <li><a class="dropdown-item" href="#">Pants</a></li>
              <li><a class="dropdown-item" href="#">Shoes</a></li>
            <li><hr class="dropdown-divider"></li>
            <li class="dropdown-item" href="#">Women</></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="#">Tops</a></li>
              <li><a class="dropdown-item" href="#">Leggings</a></li>
              <li><a class="dropdown-item" href="#">Shoes</a></li>
          </ul>
        </li>

           <li class="nav-item">
          <a class="nav-link" href="SignUp.aspx">SignUp</a>
           </li>

           <li class="nav-item">
          <a class="nav-link" href="SignIn.aspx">SignIn</a>
           </li>
        
      </ul>
        </div>
      <%-- <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>--%>
    </div>
  </div>
</nav>
        </div>


        <!---signUp page--->
       
        <section class="h-100 gradient-form" style="background-color: #ee7724;">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-xl-10">
                        <div class="card rounded-3 text-black">
                            <div class="row g-0">
                                <div class="col-lg-6">
                                    <div class="card-body p-md-5 mx-md-4">

                <div class="text-center">
                  <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/lotus.webp"
                    style="width: 185px;" alt="logo"/>
                  <h4 class="mt-1 mb-5 pb-1">We are The AllSports Team</h4>
                </div>

                  <p>Please register to an account</p>

              

                    <div class="row">
                        <div class="col-xs-6 col-sm-6">  
                            <label class="col-xs-4 col-sm-6">Surname:</label>
                            <div class="col-xs-15 col-sm-17">   
                                <asp:TextBox ID="txtSurname" runat="server" class="form-control" Style="max-width: 300px !important;" placeholder="Enter Your Surname"></asp:TextBox>
                            </div>
                        </div>

                       <div class="col-xs-6 col-sm-6"> 
                          <label class="col-xs-4 col-sm-6">Name:</label>
                          <div class="col-xs-15 col-sm-17">   
                            <asp:TextBox ID="txtname" runat="server" class="form-control" Style="max-width: 300px !important;" placeholder="Enter Your Name"></asp:TextBox>
                          </div>
                        </div>
                  


                   <div class="col-xs-6 col-sm-6"> 
                          <label class="col-xs-4 col-sm-6">Gender:</label>
                          <div class="col-xs-15 col-sm-17">   
                            <asp:TextBox ID="txtgender" runat="server" class="form-control" Style="max-width: 300px !important;" placeholder="Enter Your Gender"></asp:TextBox>
                          </div>
                        </div>


                     <div class="col-xs-6 col-sm-6"> 
                          <label class="col-xs-6 col-sm-10">EmailAddress:</label>
                          <div class="col-xs-15 col-sm-17">   
                            <asp:TextBox ID="txtemail" runat="server" class="form-control" Style="max-width: 300px !important;" placeholder="Enter Your EmailAddress"></asp:TextBox>
                          </div>
                        </div>


                     <div class="col-xs-6 col-sm-6"> 
                          <label class="col-xs-6 col-sm-10">PhoneNumber:</label>
                          <div class="col-xs-15 col-sm-17">   
                            <asp:TextBox ID="txtPNum" runat="server" class="form-control" Style="max-width: 300px !important;" placeholder="Enter a PhoneNumber"></asp:TextBox>
                          </div>
                        </div>


                    <div class="col-xs-6 col-sm-6"> 
                          <label class="col-xs-6 col-sm-10">Address:</label>
                          <div class="col-xs-15 col-sm-17">   
                            <asp:TextBox ID="txtAddress" runat="server" class="form-control" Style="max-width: 300px !important;" placeholder="Enter Your Address"></asp:TextBox>
                          </div>
                        </div>


                      <div class="col-xs-6 col-sm-6"> 
                          <label class="col-xs-6 col-sm-10">CityID:</label>
                          <div class="col-xs-15 col-sm-17">   
                            <asp:TextBox ID="txtcity" runat="server" class="form-control" Style="max-width: 300px !important;" placeholder="Enter Your CityId"></asp:TextBox>
                          </div>
                        </div>


                     <div class="col-xs-6 col-sm-6"> 
                          <label class="col-xs-6 col-sm-10">CountryId:</label>
                          <div class="col-xs-15 col-sm-17">   
                            <asp:TextBox ID="txtcountry" runat="server" class="form-control" Style="max-width: 300px !important;" placeholder="Enter Your CountryId"></asp:TextBox>
                          </div>
                        </div>


                     <div class="col-xs-6 col-sm-6"> 
                          <label class="col-xs-6 col-sm-10">JobTitle:</label>
                          <div class="col-xs-15 col-sm-17">   
                            <asp:TextBox ID="txtJob" runat="server" class="form-control" Style="max-width: 300px !important;" placeholder="Enter Your Job"></asp:TextBox>
                          </div>
                        </div>


                      <div class="col-xs-6 col-sm-6"> 
                          <label class="col-xs-6 col-sm-10">Status:</label>
                          <div class="col-xs-15 col-sm-17">   
                            <asp:TextBox ID="txtstatus" runat="server" class="form-control" Style="max-width: 300px !important;" placeholder="Enter Your Status"></asp:TextBox>
                          </div>
                        </div>


                        <%--<div class="col-xs-6 col-sm-6"> 
                          <label class="col-xs-15 col-sm-17">DateAddedTimeStamp:</label>
                          <div class="col-xs-15 col-sm-17">   
                            <asp:TextBox ID="txtDAdd" runat="server" class="form-control" Style="max-width: 300px !important;" placeholder="Enter Your DateAdd"></asp:TextBox>
                          </div>--%>
                        </div>


                        <%--<div class="col-xs-6 col-sm-6"> 
                          <label class="col-xs-15 col-sm-17">LastModifiedTimeStamp:</label>
                          <div class="col-xs-15 col-sm-17">   
                            <asp:TextBox ID="txtLModified" runat="server" class="form-control" Style="max-width: 300px !important;" placeholder="Enter Your LastModify"></asp:TextBox>
                          </div>
                        </div>--%>


                       <%-- <div class="col-xs-6 col-sm-6"> 
                          <label class="col-xs-6 col-sm-10">LastModifiedBy:</label>
                          <div class="col-xs-15 col-sm-17">   
                            <asp:TextBox ID="txtMBy" runat="server" class="form-control" Style="max-width: 300px !important;" placeholder="Enter Your ModifyBy"></asp:TextBox>
                          </div>
                        </div>--%>

                        <div class="col-xs-6 col-sm-6"> 
                          <label class="col-xs-6 col-sm-10">Password:</label>
                          <div class="col-xs-15 col-sm-17">   
                            <asp:TextBox ID="txtPass" runat="server"  TextMode="Password" class="form-control" Style="max-width: 300px !important;" placeholder="Enter a password"></asp:TextBox>
                          </div>
                        </div>


                        <div class="col-xs-6 col-sm-6"> 
                          <label class="col-xs-6 col-sm-10">Confirm Password:</label>
                          <div class="col-xs-15 col-sm-17">   
                            <asp:TextBox ID="txtcPass" runat="server"  TextMode="Password" class="form-control" Style="max-width: 300px !important;" placeholder="Confirm your password"></asp:TextBox>
                          </div>
                        </div>

                      
                     </div>
                        <br />
                        <div class="col-xs-15 col-sm-17 d-flex justify-content-center">                             
                            <asp:Button ID="txtsignup" Class="btn btn-success w-50"  runat="server" Text="SignUP" OnClick="txtsignup_Click" />
                            <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
                        </div>
                 </div>

              </form>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>


        </form>


        </form>


        </form>


        <!---signUp page end--->


     <!-- Footer -->

    <div class ="container">
        <p class ="pull-right"><a href ="#">Back to top</a></p>
    </div>
    </form>
<footer class="text-center text-lg-start bg-light text-muted">
  <!-- Section: Social media -->
  <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
    <!-- Left -->
    <div class="me-5 d-none d-lg-block">
      <span>Get connected with us on social networks:</span>
    </div>
    <!-- Left -->

    <!-- Right -->
    <div>
      <a href="" class="me-4 text-reset">
        <i class="fab fa-facebook-f"></i>
      </a>
      <a href="" class="me-4 text-reset">
        <i class="fab fa-twitter"></i>
      </a>
      <a href="" class="me-4 text-reset">
        <i class="fab fa-google"></i>
      </a>
      <a href="" class="me-4 text-reset">
        <i class="fab fa-instagram"></i>
      </a>
      <a href="" class="me-4 text-reset">
        <i class="fab fa-linkedin"></i>
      </a>
      <a href="" class="me-4 text-reset">
        <i class="fab fa-github"></i>
      </a>
    </div>
    <!-- Right -->
  </section>
  <!-- Section: Social media -->

  <!-- Section: Links  -->
  <section class="">
    <div class="container text-center text-md-start mt-5">
      <!-- Grid row -->
      <div class="row mt-3">
        <!-- Grid column -->
        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
          <!-- Content -->
          <h6 class="text-uppercase fw-bold mb-4">
            <i class="fas fa-gem me-3"></i>Company name
          </h6>
          <p>
            Here you can use rows and columns to organize your footer content. Lorem ipsum
            dolor sit amet, consectetur adipisicing elit.
          </p>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
          <!-- Links -->
          <h6 class="text-uppercase fw-bold mb-4">
            Products
          </h6>
          <p>
            <a href="#!" class="text-reset">Angular</a>
          </p>
          <p>
            <a href="#!" class="text-reset">React</a>
          </p>
          <p>
            <a href="#!" class="text-reset">Vue</a>
          </p>
          <p>
            <a href="#!" class="text-reset">Laravel</a>
          </p>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
          <!-- Links -->
          <h6 class="text-uppercase fw-bold mb-4">
            Useful links
          </h6>
          <p>
            <a href="#!" class="text-reset">Pricing</a>
          </p>
          <p>
            <a href="#!" class="text-reset">Settings</a>
          </p>
          <p>
            <a href="#!" class="text-reset">Orders</a>
          </p>
          <p>
            <a href="#!" class="text-reset">Help</a>
          </p>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
          <!-- Links -->
          <h6 class="text-uppercase fw-bold mb-4">Contact</h6>
          <p><i class="fas fa-home me-3"></i> New York, NY 10012, US</p>
          <p>
            <i class="fas fa-envelope me-3"></i>
            info@example.com
          </p>
          <p><i class="fas fa-phone me-3"></i> + 01 234 567 88</p>
          <p><i class="fas fa-print me-3"></i> + 01 234 567 89</p>
        </div>
        <!-- Grid column -->
      </div>
      <!-- Grid row -->
    </div>
  </section>
  <!-- Section: Links  -->

  <!-- Copyright -->
  <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
    © 2021 Copyright:
    <a class="text-reset fw-bold" href="https://mdbootstrap.com/">MDBootstrap.com</a>
  </div>
  <!-- Copyright -->
</footer>
<!-- Footer end -->


    </form>
</body>
</html>
