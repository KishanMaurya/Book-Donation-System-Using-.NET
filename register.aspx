<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="BookDonate.register" %>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Material Design Bootstrap</title>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
  <!-- Bootstrap core CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- Material Design Bootstrap -->
  <link href="css/mdb.min.css" rel="stylesheet">
  <!-- Your custom styles (optional) -->
  <link href="css/style.min.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Pacifico&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <style type="text/css">
    html,
    body,
    header,
    .carousel {
      height: 10 vh;
    }

    @media (max-width: 740px) {

      html,
      body,
      header,
      .carousel {
        height: 100vh;
      }
    }

    @media (min-width: 800px) and (max-width: 850px) {

      html,
      body,
      header,
      .carousel {
        height: 100vh;
      }
    }

    @media (min-width: 800px) and (max-width: 850px) {
      .navbar:not(.top-nav-collapse) {
        background: #929FBA !important;
      }
    }
    
    .circle{
      border-radius: 25px;
    }
    
    #tagline{
        font-family: 'Pacifico', cursive;
    }
    
  </style>
  <script>
      $(document).ready(function () {
          $("#Mentor").hide();
          $("#Student").hide();
          $("#Admin").hide();
          //alert("kishan")
          $("#Touch").change(function () {
              var Type = $(this).children("option:selected").val();
              //alert("This is "+Type+"Page !")

              if (Type == 'Mentor') {
                  $("#Mentor").show(1000);
                  $("#Admin").hide();
                  $("#Student").hide();
              }
              else if (Type == 'Student') {
                  $("#Student").show(1000);
                  $("#Mentor").hide();
                  $("#Admin").hide();
              }
              else if (Type == 'Admin') {
                  $("#Admin").show(1000);
                  $("#Student").hide();
                  $("#Mentor").hide();
              }
              else {
                  alert("mis-match type")
              }
          });
      });
    </script>
    <script>
        $(document).ready(function () {
            $('.mdb-select').materialSelect();
        });
    </script>
</head>

<body>


<div class="modal fade" id="centralModalSm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <!-- Change class .modal-sm to change the size of the modal -->
      <div class="modal-dialog modal-md" role="document">
        <div class="modal-content">
          <div class="modal-header badge blue-gradient color-block">
            <h4 class="modal-title w-100" id="myModalLabel"> Welcome Login</h4>
            <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true" class="text-danger">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <!-- Material input -->
            <form action="#" method="post" >
              <div class="md-form input-group input-group-lg mb-3">
                <select id="Touch" class="mdb-select md-form dropdown-primary border-primary border-top-0 border-left-0 border-right-0 form-control">
                  <option value="Select User Type" disabled selected>--Select User Type--</option>
                  <option value="Mentor">Mentor</option>
                  <option value="Student">Student</option>
                  <option value="Admin">Admin</option>
                </select>
              </div>
              <div class="card shadow-lg" id="Mentor">
                <div class="card-header  border-0 aqua-gradient">
                  <div class="card-title">
                    <h3 class="pl-3 text-white">Mentor Login</h3>
                  </div>
                </div>
                <div class="card-body">
                  <div class="md-form input-group input-group-lg">
                    <div class="input-group-prepend">
                      <span class="input-group-text md-addon indigo-text" id="inputGroupMaterial-sizing-sm">
                        <i class="fas fa-user info-text"></i>
                      </span>
                    </div>
                    <input type="text" name="name" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroupMaterial-sizing-sm" placeholder="UserName...">
                  </div>
                  
                  <div class="md-form input-group input-group-lg mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text md-addon" id="inputGroupMaterial-sizing-sm">
                        <i class="fas fa-lock indigo-text"></i>
                      </span>
                    </div>
                    <input type="password" name="password" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroupMaterial-sizing-sm" placeholder="Password...">
                  </div>
                  <div class="md-form">
                    <button type="submit" class="btn aqua-gradient btn-md btn-block font-weight-bold" name="register">Login</button>
                  </div>
                </div>
              </div>
              <div class="card shadow-lg" id="Student">
                <div class="card-header  border-0 aqua-gradient">
                  <div class="card-title">
                    <h3 class="pl-3 text-white">Student</h3>
                  </div>
                </div>
                <div class="card-body">
                  <div class="md-form input-group input-group-lg">
                    <div class="input-group-prepend">
                      <span class="input-group-text md-addon indigo-text" id="inputGroupMaterial-sizing-sm">
                        <i class="fas fa-user info-text"></i>
                      </span>
                    </div>
                    <input type="text" name="name" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroupMaterial-sizing-sm" placeholder="UserName...">
                  </div>
                  
                  <div class="md-form input-group input-group-lg mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text md-addon" id="inputGroupMaterial-sizing-sm">
                        <i class="fas fa-lock indigo-text"></i>
                      </span>
                    </div>
                    <input type="password" name="password" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroupMaterial-sizing-sm" placeholder="Password...">
                  </div>
                  <div class="md-form">
                    <button type="submit" class="btn aqua-gradient btn-md btn-block font-weight-bold" name="register">Login</button>
                  </div>
                </div>
              </div>
              <div class="card shadow-lg" id="Admin">
                <div class="card-header  border-0 aqua-gradient">
                  <div class="card-title">
                    <h3 class="pl-3 text-white">Admin User</h3>
                  </div>
                </div>
                <div class="card-body">
                  <div class="md-form input-group input-group-lg">
                    <div class="input-group-prepend">
                      <span class="input-group-text md-addon indigo-text" id="inputGroupMaterial-sizing-sm">
                        <i class="fas fa-user info-text"></i>
                      </span>
                    </div>
                    <input type="text" name="name" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroupMaterial-sizing-sm" placeholder="UserName...">
                  </div>
                  
                  <div class="md-form input-group input-group-lg mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text md-addon" id="inputGroupMaterial-sizing-sm">
                        <i class="fas fa-lock indigo-text"></i>
                      </span>
                    </div>
                    <input type="password" name="password" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroupMaterial-sizing-sm" placeholder="Password...">
                  </div>
                  <div class="md-form">
                    <button type="submit" class="btn aqua-gradient btn-md btn-block font-weight-bold" name="register">Login</button>
                  </div>
                </div>
              </div>
              <!-- Material input -->
            </form>
          </div>
          <div class="modal-footer">
            <h6>
            <strong>If You Are  New User Please Click Here -></strong> <button class="btn btn-primary font-weight-bold btn-md" data-toggle="modal" data-target="#centralModalSm1">Register</button>
            </h6>
          </div>
        </div>
      </div>
    </div>

    




  <header>

    <!-- Navbar -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark blue-gradient scrolling-navbar font-weight-bold">
      <div class="container">

        <!-- Brand -->
       <asp:HyperLink class="navbar-brand" ID="HyperLink6" runat="server" NavigateUrl="index.aspx">
        <strong><img src="img/book2.png" width="80px" height="40px" alt=""></strong>
        </asp:HyperLink>

        <!-- Collapse -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Links -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent">

          <!-- Left -->
          <ul class="navbar-nav mr-auto">
            <li class="nav-item">
              <asp:HyperLink class="nav-link" ID="HyperLink3" runat="server" NavigateUrl="index.aspx">Home<span class="sr-only">(current)</span></asp:HyperLink>
               
            </li>
            <li class="nav-item">
              <asp:HyperLink class="nav-link" ID="HyperLink1" runat="server" Text="About Us" NavigateUrl="aboutus.aspx"></asp:HyperLink> 
            </li>
            <li class="nav-item active">
              <asp:HyperLink class="nav-link" ID="HyperLink2" runat="server" Text="Donate" NavigateUrl="donate.aspx">Donate<span class="sr-only">(current)</span></asp:HyperLink> 
            </li>
            <li class="nav-item">
                <asp:HyperLink ID="HyperLink4" class="nav-link" runat="server" NavigateUrl="request.aspx">Request Page</asp:HyperLink>
            </li>
            <li class="nav-item">
                <asp:HyperLink class="nav-link" ID="HyperLink5" runat="server" NavigateUrl="testimonial.aspx">Testimonial</asp:HyperLink>
            </li>
          </ul>

          <!-- Right -->

          <ul class="navbar-nav nav-flex-icons">
            <li class="nav-item">
              <a href="https://www.facebook.com/mdbootstrap" class="nav-link" target="_blank">
                <i class="fab fa-facebook-f"></i>
              </a>
            </li>
            <li class="nav-item">
              <a href="https://twitter.com/MDBootstrap" class="nav-link" target="_blank">
                <i class="fab fa-twitter"></i>
              </a>
            </li>
            <li class="nav-item">
              <button class="btn btn-indigo btn-sm  font-weight-bold" data-toggle="modal" data-target="#centralModalSm">Login</button>
            </li>
          </ul>

        </div>

      </div>
    </nav>

  </header>
  <!--------check ------------>
    <script type="text/javascript">

        $(document).ready(function () {
            $(".TextBox10").keyup(validate);
        });

        function validate() {
            var pass1 = $(".TextBox4").val();
            var pass1 = $(".TextBox10").val();
            if (pass1 === pass2) {
                $("#validate-status").text("valid");
            } else {
                $("#validate-status").text("Invalid");
            }
        }
</script>
  <!--Main layout-->
  <main style="margin-top:100px !important;">
    <div class="container">

      <!--Section: Main info-->
      <section class="mt-5 wow fadeIn">

        <!--Grid row-->
        <div class="row justify-content-center">

          <!--Grid column-->
              <div class="col-md-10 mb-4">
                <p class="text-center" id="#validate-status"></p>
                <form id="form1" runat="server">
                  <div class="card shadow-lg">
                    <div class="card-header blue-gradient text-center">
                      <div class="card-title">
                        <h3 class="text-white">
                         Register
                        </h3>
                      </div>
                    </div>
                    <div class="card-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="md-form input-group input-group-lg">
                                 <asp:DropDownList ID="DropDownList1" class="mdb-select md-form dropdown-primary border-primary border-top-0 border-left-0 border-right-0 form-control" runat="server">
                                    <asp:ListItem value="Select User Type" disabled selected>--Select User Type--</asp:ListItem>  
                                    <asp:ListItem value="College/Society">College/Society</asp:ListItem>  
                                    <asp:ListItem value="NGO">NGO</asp:ListItem>  
                                 </asp:DropDownList>
                              </div>
                        </div>
                    </div>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="md-form input-group input-group-lg">
                              <div class="input-group-prepend">
                                <span class="input-group-text md-addon indigo-text" id="inputGroupMaterial-sizing-sm">
                                  <i class="fas fa-user info-text"></i>
                                </span>
                              </div>
                              <asp:TextBox ID="TextBox1" class="form-control" placeholder="Full Name..." runat="server"></asp:TextBox>
                          </div>

                          <div class="md-form input-group input-group-lg">
                            <div class="input-group-prepend">
                              <span class="input-group-text md-addon indigo-text">
                                <i class="fas fa-envelope info-text"></i>
                              </span>
                            </div>
                           <asp:TextBox ID="TextBox2" class="form-control" placeholder="Email..." runat="server"></asp:TextBox>
                          </div>


                          <div class="md-form input-group input-group-lg">
                            <div class="input-group-prepend">
                              <span class="input-group-text md-addon indigo-text">
                                <i class="fas fa-phone info-text"></i>
                              </span>
                            </div>
                            <asp:TextBox ID="TextBox3" class="form-control" placeholder="Phone..." runat="server"></asp:TextBox>
                        </div>


                        <div class="md-form input-group input-group-lg">
                            <div class="input-group-prepend">
                              <span class="input-group-text md-addon indigo-text">
                                <i class="fas fa-lock info-text"></i>
                              </span>
                            </div>
                            <asp:TextBox ID="TextBox4" class="form-control" placeholder="Password..." runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                      </div>
                      

                      <div class="md-form input-group input-group-lg mb-3">
                          <div class="input-group-prepend">
                            <span class="input-group-text md-addon">
                              <i class="fas fa-book indigo-text"></i>
                            </span>
                          </div>
                         <asp:TextBox ID="TextBox5" class="form-control" placeholder="Current Address..." runat="server"></asp:TextBox>
                      </div>
                      
                    </div>
                    <div class="col-md-6">
                      <div class="md-form input-group input-group-lg">
                        <div class="input-group-prepend">
                          <span class="input-group-text md-addon indigo-text">
                            <i class="fas fa-location-arrow info-text"></i>
                          </span>
                        </div>
                        <asp:TextBox ID="TextBox6" class="form-control" placeholder="City..." runat="server"></asp:TextBox>
                      </div>
                      <div class="md-form input-group input-group-lg">
                        <div class="input-group-prepend">
                          <span class="input-group-text md-addon indigo-text">
                            <i class="fas fa-location-arrow info-text"></i>
                          </span>
                        </div>
                       <asp:TextBox ID="TextBox7" class="form-control" placeholder="State..." runat="server"></asp:TextBox>
                      </div>

                      <div class="md-form input-group input-group-lg">
                      <div class="input-group-prepend">
                        <span class="input-group-text md-addon indigo-text">
                          <i class="fas fa-globe-europe info-text"></i>
                        </span>
                      </div>
                      <asp:TextBox ID="TextBox8" class="form-control" placeholder="Country..." runat="server"></asp:TextBox>
                    </div>

                    <div class="md-form input-group input-group-lg">
                      <div class="input-group-prepend">
                        <span class="input-group-text md-addon indigo-text">
                          <i class="fas fa-map-pin info-text"></i>
                        </span>
                      </div>
                     <asp:TextBox ID="TextBox9" class="form-control" placeholder="Pincode..." runat="server"></asp:TextBox>
                  </div>

                  <div class="md-form input-group input-group-lg mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text md-addon">
                        <i class="fas fa-lock indigo-text"></i>
                      </span>
                    </div>
                    <asp:TextBox ID="TextBox10" class="form-control" placeholder="Re-password..." runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" ControlToCompare="TextBox4" ControlToValidate="TextBox10"></asp:CompareValidator>
                  </div>
                </div>
              </div>
            </div>
            <div class="card-footer">
              <div class="md-form text-right">
                   <asp:Button ID="Button1" class="btn aqua-gradient btn-md btn-block font-weight-bold" runat="server" Text="register" onclick="Button1_Click"></asp:Button>
              </div>
            </div>
          </div>
        </form>
            
          </div>
          <!--Grid column-->

        </div>
        <!--Grid row-->

      </section>
      <!--Section: Main info-->

     
      <section>

        <h2 class="my-5 h3 text-center"></h2>

        <!--First row-->
        <div class="row features-small mt-5 wow fadeIn">

          
         

        </div>
        <!--/Second row-->

      </section>
      <!--Section: More-->

    </div>
  </main>
  <!--Main layout-->

  <!--Footer-->
  <footer class="page-footer text-center font-small mt-4 wow fadeIn  blue-gradient">

    <!--Call to action-->
    <div class="pt-4">
      <a class="btn btn-primary" href="" 
        role="button">Donate Book
        <i class="fas fa-download ml-2"></i>
      </a>
      <a class="btn btn-primary" href="" role="button">Start Donate 
        <i class="fas fa-graduation-cap ml-2"></i>
      </a>
    </div>
    <!--/.Call to action-->

    <hr class="my-4">

    <!-- Social icons -->
    <div class="pb-4">
      <a href="https://www.facebook.com/mdbootstrap" target="_blank">
        <i class="fab fa-facebook-f mr-3"></i>
      </a>

      <a href="https://twitter.com/MDBootstrap" target="_blank">
        <i class="fab fa-twitter mr-3"></i>
      </a>

      <a href="https://www.youtube.com/watch?v=7MUISDJ5ZZ4" target="_blank">
        <i class="fab fa-youtube mr-3"></i>
      </a>

      <a href="https://plus.google.com/u/0/b/107863090883699620484" target="_blank">
        <i class="fab fa-google-plus-g mr-3"></i>
      </a>

      <a href="https://dribbble.com/mdbootstrap" target="_blank">
        <i class="fab fa-dribbble mr-3"></i>
      </a>

      <a href="https://pinterest.com/mdbootstrap" target="_blank">
        <i class="fab fa-pinterest mr-3"></i>
      </a>

      <a href="https://github.com/mdbootstrap/bootstrap-material-design" target="_blank">
        <i class="fab fa-github mr-3"></i>
      </a>

      <a href="http://codepen.io/mdbootstrap/" target="_blank">
        <i class="fab fa-codepen mr-3"></i>
      </a>
    </div>
    <!-- Social icons -->

    <!--Copyright-->
    <div class="footer-copyright py-3">
      © 2019 Copyright:
      <a href="donate.html" target="_blank"> DonateBook.com </a>
    </div>
    <!--/.Copyright-->

  </footer>
  <!--/.Footer-->

  <!-- SCRIPTS -->
  <script type="text/javascript">
    (function () {
        var options = {
            whatsapp: "9598608579", // WhatsApp number
            call_to_action: "Connect With Us", // Call to action
            position: "left", // Position may be 'right' or 'left'
        };
        var proto = document.location.protocol, host = "whatshelp.io", url = proto + "//static." + host;
        var s = document.createElement('script'); s.type = 'text/javascript'; s.async = true; s.src = url + '/widget-send-button/js/init.js';
        s.onload = function () { WhWidgetSendButton.init(host, proto, options); };
        var x = document.getElementsByTagName('script')[0]; x.parentNode.insertBefore(s, x);
    })();
</script>


<!-- WhatsHelp.io widget -->
<script type="text/javascript">
    (function () {
        var options = {
            email: "kkmaurya.0095@gmail.com", // Email
            call_to_action: "Chat", // Call to action
            position: "right", // Position may be 'right' or 'left'
        };
        var proto = document.location.protocol, host = "whatshelp.io", url = proto + "//static." + host;
        var s = document.createElement('script'); s.type = 'text/javascript'; s.async = true; s.src = url + '/widget-send-button/js/init.js';
        s.onload = function () { WhWidgetSendButton.init(host, proto, options); };
        var x = document.getElementsByTagName('script')[0]; x.parentNode.insertBefore(s, x);
    })();
</script>
<!-- /WhatsHelp.io widget -->
  <!-- JQuery -->
  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="js/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="js/mdb.min.js"></script>
  <!-- Initializations -->
  <script type="text/javascript">
      // Animations initialization
      new WOW().init();

  </script>
</body>

</html>
