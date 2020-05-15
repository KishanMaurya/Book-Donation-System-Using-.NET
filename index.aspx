﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="BookDonate.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Donate Book | Page </title>
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
      height: 80vh;
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
          $("#Student").hide();
          $("#NGO").hide();
          $("#Admin").hide();
          //alert("kishan")
          $("#Touch").change(function () {
              var Type = $(this).children("option:selected").val();
              //alert("This is " + Type + "Page !")

              if (Type == 'Student') {
                  $("#Student").show(1000);
                  $("#Admin").hide();
                  $("#NGO").hide();
              }

              else if (Type == 'NGO') {
                  $("#NGO").show(1000);
                  $("#Student").hide();
                  $("#Admin").hide();
              }

              else if (Type == 'Admin') {
                  $("#Admin").show(1000);
                  $("#NGO").hide();
                  $("#Student").hide();
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

<!------------Modal Login-------------->

<div class="modal fade" id="centralModalSm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <!-- Change class .modal-sm to change the size of the modal -->
      <div class="modal-dialog modal-md" role="document">
        <div class="modal-content">
          <div class="modal-header badge blue-gradient color-block">
            <h5 class="modal-title w-100" id="myModalLabel"> Welcome Login</h5>
            <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true" class="text-danger">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <!-- Material input -->
            <form action="#" method="post" runat="server" >
              <div class="md-form input-group">
                
                  <asp:DropDownList ID="Touch" class="mdb-select md-form dropdown-primary border-primary border-top-0 border-left-0 border-right-0 form-control" runat="server">
                        <asp:ListItem value="Select User Type" disabled selected>--Select User Type--</asp:ListItem>  
                        <asp:ListItem value="Student">Student</asp:ListItem>  
                        <asp:ListItem value="NGO">NGO</asp:ListItem>  
                        <asp:ListItem value="Admin">Admin</asp:ListItem>  
                  </asp:DropDownList>
              </div>
              <div class="card shadow-lg" id="Student">
                <div class="card-header  border-0 aqua-gradient">
                  <div class="card-title">
                    <h5 class="pl-3 text-white">Student Login</h5>
                  </div>
                </div>
                <div class="card-body">
                  <div class="md-form input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text md-addon indigo-text" id="inputGroupMaterial-sizing-sm">
                        <i class="fas fa-user info-text"></i>
                      </span>
                    </div>
                    <!--<input type="text" name="name" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroupMaterial-sizing-sm" placeholder="UserName...">-->
                    <asp:TextBox ID="TextBox1" name="name" class="form-control" placeholder="UserName..." 
                          runat="server" ToolTip="User Name"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                          ErrorMessage="UserName is blank.." ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                  </div>
                     

                  
                  <div class="md-form input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text md-addon" id="inputGroupMaterial-sizing-sm">
                        <i class="fas fa-lock indigo-text"></i>
                      </span>
                    </div>
                   <!-- <input type="password" name="password" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroupMaterial-sizing-sm" placeholder="Password...">-->
                    <asp:TextBox ID="TextBox2" name="pass" class="form-control"  placeholder="Password..." runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                          ErrorMessage="***Password is must !.." ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                  </div>
                  

                  <div class="md-form">
                   <!-- <button type="submit" class="btn aqua-gradient btn-md btn-block font-weight-bold" name="register">Login</button>-->
                      <asp:Button ID="Button1" class="btn aqua-gradient btn-md btn-block font-weight-bold" name="register" runat="server" Text="Login" />
                  </div>
                </div>
              </div>
              <div class="card shadow-lg" id="NGO">
                <div class="card-header  border-0 aqua-gradient">
                  <div class="card-title">
                    <h5 class="pl-3 text-white">NGO Login</h5>
                  </div>
                </div>
                <div class="card-body">
                  <div class="md-form input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text md-addon indigo-text" id="inputGroupMaterial-sizing-sm">
                        <i class="fas fa-user info-text"></i>
                      </span>
                    </div>
                   <!-- <input type="text" name="name" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroupMaterial-sizing-sm" placeholder="UserName...">-->
                    <asp:TextBox ID="TextBox3" name="name" class="form-control"  placeholder="UserName..." runat="server"></asp:TextBox>
                      
                  </div>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                          ErrorMessage="UserName is Must.." ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                  
                  <div class="md-form input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text md-addon" id="inputGroupMaterial-sizing-sm">
                        <i class="fas fa-lock indigo-text"></i>
                      </span>
                    </div>
                    <!--<input type="password" name="password" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroupMaterial-sizing-sm" placeholder="Password...">-->
                    <asp:TextBox ID="TextBox4" name="pass" class="form-control" placeholder="Password..." runat="server"></asp:TextBox>
                      
                  </div>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                          ErrorMessage="Password is blank.." ControlToValidate="TextBox4"></asp:RequiredFieldValidator>

                  <div class="md-form">
                    <!--<button type="submit" class="btn aqua-gradient btn-md btn-block font-weight-bold" name="register">Login</button>-->
                      <asp:Button ID="Button2" class="btn aqua-gradient btn-md btn-block font-weight-bold" runat="server" Text="Button" />
                  </div>
                </div>
              </div>
              <div class="card shadow-lg" id="Admin">
                <div class="card-header  border-0 aqua-gradient">
                  <div class="card-title">
                    <h5 class="pl-3 text-white">Admin Login</h5>
                  </div>
                </div>
                <div class="card-body">
                  <div class="md-form input-group ">
                    <div class="input-group-prepend">
                      <span class="input-group-text md-addon indigo-text" id="inputGroupMaterial-sizing-sm">
                        <i class="fas fa-user info-text"></i>
                      </span>
                    </div>
                    <!--<input type="text" name="name" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroupMaterial-sizing-sm" placeholder="UserName...">-->
                    <asp:TextBox ID="TextBox5" name="pass" class="form-control" placeholder="UserName..." runat="server"></asp:TextBox>
                      
                  </div>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                          ErrorMessage="****UserName is blank.." ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                  
                  <div class="md-form input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text md-addon" id="inputGroupMaterial-sizing-sm">
                        <i class="fas fa-lock indigo-text"></i>
                      </span>
                    </div>
                   <!-- <input type="password" name="password" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroupMaterial-sizing-sm" placeholder="Password...">-->
                    <asp:TextBox ID="TextBox6" name="pass" class="form-control"  placeholder="Password..." runat="server"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                          ErrorMessage="***Passord is required..!" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                  </div>
                  <div class="md-form">
                   <!-- <button type="submit" class="btn aqua-gradient btn-md btn-block font-weight-bold" name="register">Login</button>-->
                      <asp:Button ID="Button3" class="btn aqua-gradient btn-md btn-block font-weight-bold" name="register" runat="server" Text="Login" />
                  </div>
                </div>
              </div>
              <!-- Material input -->

              <!---------############################################--------->

             <!---------######################--End Register Page --- ######################--------->


            </form>
          </div>
        </div>
      </div>
    </div>
    <!------user type login form end-modal end---->


    


<!------------- Moadal Login  And Register------------->


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
            <li class="nav-item active">
              <asp:HyperLink class="nav-link active" ID="HyperLink3" runat="server" NavigateUrl="index.aspx">Home<span class="sr-only">(current)</span></asp:HyperLink>
               
            </li>
            <li class="nav-item">
              <asp:HyperLink class="nav-link" ID="HyperLink1" runat="server" Text="About Us" NavigateUrl="aboutus.aspx"></asp:HyperLink> 
            </li>
            <li class="nav-item">
              <asp:HyperLink class="nav-link" ID="HyperLink2" runat="server" Text="Donate" NavigateUrl="donate.aspx"></asp:HyperLink> 
            </li>
            <li class="nav-item">
                <asp:HyperLink ID="HyperLink4" class="nav-link" runat="server" NavigateUrl="request.aspx">Request Page</asp:HyperLink>
            </li>
            <li class="nav-item">
                <asp:HyperLink class="nav-link" ID="HyperLink5" runat="server" NavigateUrl="testimonial.aspx">Testimonial</asp:HyperLink>
            </li>
            <li class="nav-item">
                <asp:HyperLink ID="HyperLink8" class="nav-link" runat="server" NavigateUrl="index.aspx">
                    <h5 class="text-white ml-5 font-weight-bold" id="tagline"><i class="fas fa-book-reader mr-3"></i>Ek Kadam Daksha Ki Or <i class="far fa-hand-point-right ml-2"></i></h5>
                </asp:HyperLink>
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
              <a href="https://twitter.com/" class="nav-link" target="_blank">
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
    <!-- Navbar -->

    <!--Carousel Wrapper-->
    <div id="carousel-example-1z" class="carousel slide carousel-fade" data-ride="carousel">

      <!--Indicators-->
      <ol class="carousel-indicators">
        <li data-target="#carousel-example-1z" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-1z" data-slide-to="1"></li>
        <li data-target="#carousel-example-1z" data-slide-to="2"></li>
         <li data-target="#carousel-example-1z" data-slide-to="3"></li>
          <li data-target="#carousel-example-1z" data-slide-to="4"></li>
           <li data-target="#carousel-example-1z" data-slide-to="5"></li>
      </ol>
      <!--/.Indicators-->

      <!--Slides-->
      <div class="carousel-inner" role="listbox">

        <!--First slide-->
        <div class="carousel-item active">
          <div class="view" style="background-image: url('img/new4.jpg'); background-repeat: no-repeat; background-size: cover;">

            <!-- Mask & flexbox options-->
            <div class="mask rgba-black-light my-5 d-flex justify-content-center align-items-center">

              <!-- Content -->
              <div class="text-center white-text mx-5 wow fadeIn font-weight-bold">
                <h1 class="mb">
                  <strong class="font-weight-bold">Donate Books in One Minutes</strong>
                </h1>
                <h3 class="font-weight-bold">Fill the form we will collect from home</h3>
                <h3 class="font-weight-bold">Share the gift of knowledge</h3>
                <p>
                  
                </p>

                <p class="mb-2 mt-5 d-none d-md-block text-center">
                  <strong class=" font-weight-bold">
                      <button class="btn btn-primary font-weight-bold circle">Donate Near Centre</button>
                      <button class="btn btn-primary font-weight-bold circle">Help</button>
                      <button class="btn btn-primary font-weight-bold circle">Donate Book</button>
                  </strong>
                </p>
                  <h2 class="text-white font-weight-bold text-center mt-4">
                    What We Accept
                  </h2>
                  <div class="row mt-2 mt-5">
                    <div class="col-md-2">
                      <h5 class="font-weight-bold">
                        <i class="fas fa-check-circle"></i>&nbsp;School Books
                      </h5>
                    </div>
                    <div class="col-md-2">
                      <h5 class="font-weight-bold">
                        <i class="fas fa-check-circle"></i>&nbsp;College Books
                      </h5>
                    </div>
                    <div class="col-md-2">
                      <h5 class="font-weight-bold">
                        <i class="fas fa-check-circle"></i>&nbsp;Board Games
                      </h5>
                    </div>
                    <div class="col-md-2">
                      <h5 class="font-weight-bold">
                        <i class="fas fa-check-circle"></i>&nbsp;Stationary Books
                      </h5>
                    </div>
                    <div class="col-md-2">
                      <h5 class="font-weight-bold">
                        <i class="fas fa-check-circle"></i>&nbsp;Story Books
                      </h5>
                    </div>
                    <div class="col-md-2"> 
                    <h5 class="font-weight-bold">
                        <i class="fas fa-check-circle"></i>&nbsp;Others Books
                      </h5> 
                    </div>
                  </div> 
              </div>
              <!-- Content -->

            </div>
            <!-- Mask & flexbox options-->

          </div>
        </div>
        <!--/First slide-->

        <!--Second slide-->
        <div class="carousel-item">
          <div class="view" style="background-image: url('img/new2.jpg'); background-repeat: no-repeat; background-size: cover;" height="650px">

            <!-- Mask & flexbox options-->
            <div class="mask rgba-black-light d-flex justify-content-center align-items-center">

              <!-- Content -->
              <div class="text-center white-text mx-5 wow fadeIn font-weight-bold">
                <h1 class="mb">
                  <strong class="font-weight-bold">Donate Books in One Minutes</strong>
                </h1>
                <h3 class="font-weight-bold">Fill the form we will collect from home</h3>
                <h3 class="font-weight-bold">Share the gift of knowledge</h3>
                <p>
                  
                </p>

                <p class="mb-2 mt-5 d-none d-md-block text-center">
                  <strong class=" font-weight-bold">
                      <button class="btn btn-primary font-weight-bold circle">Donate Near Centre</button>
                       <button class="btn btn-primary font-weight-bold circle">Help</button>
                       <button class="btn btn-primary font-weight-bold circle">Donate Book</button>
                
                  </strong>
                </p>
                  <h2 class="text-white font-weight-bold text-center mt-4">
                    What We Accept
                  </h2>
                  <div class="row mt-2 mt-5">
                    <div class="col-md-2">
                      <h5 class="font-weight-bold">
                        <i class="fas fa-check-circle"></i>&nbsp;School Books
                      </h5>
                    </div>
                    <div class="col-md-2">
                      <h5 class="font-weight-bold">
                        <i class="fas fa-check-circle"></i>&nbsp;College Books
                      </h5>
                    </div>
                    <div class="col-md-2">
                      <h5 class="font-weight-bold">
                        <i class="fas fa-check-circle"></i>&nbsp;Board Games
                      </h5>
                    </div>
                    <div class="col-md-2">
                      <h5 class="font-weight-bold">
                        <i class="fas fa-check-circle"></i>&nbsp;Stationary Books
                      </h5>
                    </div>
                    <div class="col-md-2">
                      <h5 class="font-weight-bold">
                        <i class="fas fa-check-circle"></i>&nbsp;Story Books
                      </h5>
                    </div>
                    <div class="col-md-2"> 
                    <h5 class="font-weight-bold">
                        <i class="fas fa-check-circle"></i>&nbsp;Others Books
                      </h5> 
                    </div>
                  </div> 
              </div>
              <!-- Content -->

            </div>
            <!-- Mask & flexbox options-->

          </div>
        </div>
        <!--/Second slide-->

        <!--Third slide-->
        <div class="carousel-item">
          <div class="view" style="background-image: url('img/new3.jpg'); background-repeat: no-repeat; background-size: cover;" height="650px">

            <!-- Mask & flexbox options-->
            <div class="mask rgba-black-light d-flex justify-content-center align-items-center">

              <!-- Content -->
              <div class="text-center white-text mx-5 wow fadeIn font-weight-bold">
                <h1 class="mb">
                  <strong class="font-weight-bold">Donate Books in One Minutes</strong>
                </h1>
                <h3 class="font-weight-bold">Fill the form we will collect from home</h3>
                <h3 class="font-weight-bold">Share the gift of knowledge</h3>
                <p>
                  
                </p>

                <p class="mb-2 mt-5 d-none d-md-block text-center">
                  <strong class=" font-weight-bold">
                      <button class="btn btn-primary font-weight-bold circle">Donate Near Centre</button>
                       <button class="btn btn-primary font-weight-bold circle">Help</button>
                       <button class="btn btn-primary font-weight-bold circle">Donate Book</button>
                
                  </strong>
                </p>
                  <h2 class="text-white font-weight-bold text-center mt-4">
                    What We Accept
                  </h2>
                  <div class="row mt-2 mt-5">
                    <div class="col-md-2">
                      <h5 class="font-weight-bold">
                        <i class="fas fa-check-circle"></i>&nbsp;School Books
                      </h5>
                    </div>
                    <div class="col-md-2">
                      <h5 class="font-weight-bold">
                        <i class="fas fa-check-circle"></i>&nbsp;College Books
                      </h5>
                    </div>
                    <div class="col-md-2">
                      <h5 class="font-weight-bold">
                        <i class="fas fa-check-circle"></i>&nbsp;Board Games
                      </h5>
                    </div>
                    <div class="col-md-2">
                      <h5 class="font-weight-bold">
                        <i class="fas fa-check-circle"></i>&nbsp;Stationary Books
                      </h5>
                    </div>
                    <div class="col-md-2">
                      <h5 class="font-weight-bold">
                        <i class="fas fa-check-circle"></i>&nbsp;Story Books
                      </h5>
                    </div>
                    <div class="col-md-2"> 
                    <h5 class="font-weight-bold">
                        <i class="fas fa-check-circle"></i>&nbsp;Others Books
                      </h5> 
                    </div>
                  </div> 
              </div>
              <!-- Content -->

            </div>
            <!-- Mask & flexbox options-->

          </div>
        </div>

         <!--Third slide-->
        <div class="carousel-item">
          <div class="view" style="background-image: url('img/new4.jpg'); background-repeat: no-repeat; background-size: cover;" height="650px">

            <!-- Mask & flexbox options-->
            <div class="mask rgba-black-light d-flex justify-content-center align-items-center">

              <!-- Content -->
              <div class="text-center white-text mx-5 wow fadeIn font-weight-bold">
                <h1 class="mb">
                  <strong class="font-weight-bold">Donate Books in One Minutes</strong>
                </h1>
                <h3 class="font-weight-bold">Fill the form we will collect from home</h3>
                <h3 class="font-weight-bold">Share the gift of knowledge</h3>
                <p>
                  
                </p>

                <p class="mb-2 mt-5 d-none d-md-block text-center">
                  <strong class=" font-weight-bold">
                      <button class="btn btn-primary font-weight-bold circle">Donate Near Centre</button>
                       <button class="btn btn-primary font-weight-bold circle">Help</button>
                       <button class="btn btn-primary font-weight-bold circle">Donate Book</button>
                
                  </strong>
                </p>
                  <h2 class="text-white font-weight-bold text-center mt-4">
                    What We Accept
                  </h2>
                  <div class="row mt-2 mt-5">
                    <div class="col-md-2">
                      <h5 class="font-weight-bold">
                        <i class="fas fa-check-circle"></i>&nbsp;School Books
                      </h5>
                    </div>
                    <div class="col-md-2">
                      <h5 class="font-weight-bold">
                        <i class="fas fa-check-circle"></i>&nbsp;College Books
                      </h5>
                    </div>
                    <div class="col-md-2">
                      <h5 class="font-weight-bold">
                        <i class="fas fa-check-circle"></i>&nbsp;Board Games
                      </h5>
                    </div>
                    <div class="col-md-2">
                      <h5 class="font-weight-bold">
                        <i class="fas fa-check-circle"></i>&nbsp;Stationary Books
                      </h5>
                    </div>
                    <div class="col-md-2">
                      <h5 class="font-weight-bold">
                        <i class="fas fa-check-circle"></i>&nbsp;Story Books
                      </h5>
                    </div>
                    <div class="col-md-2"> 
                    <h5 class="font-weight-bold">
                        <i class="fas fa-check-circle"></i>&nbsp;Others Books
                      </h5> 
                    </div>
                  </div> 
              </div>
              <!-- Content -->

            </div>
            <!-- Mask & flexbox options-->

          </div>
        </div>

         <!--Third slide-->
        <div class="carousel-item">
          <div class="view" style="background-image: url('img/new35.jpg'); background-repeat: no-repeat; background-size: cover;" height="650px">

            <!-- Mask & flexbox options-->
            <div class="mask rgba-black-light d-flex justify-content-center align-items-center">

              <!-- Content -->
              <div class="text-center white-text mx-5 wow fadeIn font-weight-bold">
                <h1 class="mb">
                  <strong class="font-weight-bold">Donate Books in One Minutes</strong>
                </h1>
                <h3 class="font-weight-bold">Fill the form we will collect from home</h3>
                <h3 class="font-weight-bold">Share the gift of knowledge</h3>
                <p>
                  
                </p>

                <p class="mb-2 mt-5 d-none d-md-block text-center">
                  <strong class=" font-weight-bold">
                      <button class="btn btn-primary font-weight-bold circle">Donate Near Centre</button>
                       <button class="btn btn-primary font-weight-bold circle">Help</button>
                       <button class="btn btn-primary font-weight-bold circle">Donate Book</button>
                
                  </strong>
                </p>
                  <h2 class="text-white font-weight-bold text-center mt-4">
                    What We Accept
                  </h2>
                  <div class="row mt-2 mt-5">
                    <div class="col-md-2">
                      <h5 class="font-weight-bold">
                        <i class="fas fa-check-circle"></i>&nbsp;School Books
                      </h5>
                    </div>
                    <div class="col-md-2">
                      <h5 class="font-weight-bold">
                        <i class="fas fa-check-circle"></i>&nbsp;College Books
                      </h5>
                    </div>
                    <div class="col-md-2">
                      <h5 class="font-weight-bold">
                        <i class="fas fa-check-circle"></i>&nbsp;Board Games
                      </h5>
                    </div>
                    <div class="col-md-2">
                      <h5 class="font-weight-bold">
                        <i class="fas fa-check-circle"></i>&nbsp;Stationary Books
                      </h5>
                    </div>
                    <div class="col-md-2">
                      <h5 class="font-weight-bold">
                        <i class="fas fa-check-circle"></i>&nbsp;Story Books
                      </h5>
                    </div>
                    <div class="col-md-2"> 
                    <h5 class="font-weight-bold">
                        <i class="fas fa-check-circle"></i>&nbsp;Others Books
                      </h5> 
                    </div>
                  </div> 
              </div>
              <!-- Content -->

            </div>
            <!-- Mask & flexbox options-->

          </div>
        </div> <!--Third slide-->
        <div class="carousel-item">
          <div class="view" style="background-image: url('img/new6.jpg'); background-repeat: no-repeat; background-size: cover;" height="650px">

            <!-- Mask & flexbox options-->
            <div class="mask rgba-black-light d-flex justify-content-center align-items-center">

              <!-- Content -->
             <div class="text-center white-text mx-5 wow fadeIn font-weight-bold">
                <h1 class="mb">
                  <strong class="font-weight-bold">Donate Books in One Minutes</strong>
                </h1>
                <h3 class="font-weight-bold">Fill the form we will collect from home</h3>
                <h3 class="font-weight-bold">Share the gift of knowledge</h3>
                <p>
                  
                </p>

                <p class="mb-2 mt-5 d-none d-md-block text-center">
                  <strong class=" font-weight-bold">
                      <button class="btn btn-primary font-weight-bold circle">Donate Near Centre</button>
                       <button class="btn btn-primary font-weight-bold circle">Help</button>
                       <button class="btn btn-primary font-weight-bold circle">Donate Book</button>
                
                  </strong>
                </p>
                  <h2 class="text-white font-weight-bold text-center mt-4">
                    What We Accept
                  </h2>
                  <div class="row mt-2 mt-5">
                    <div class="col-md-2">
                      <h5 class="font-weight-bold">
                        <i class="fas fa-check-circle"></i>&nbsp;School Books
                      </h5>
                    </div>
                    <div class="col-md-2">
                      <h5 class="font-weight-bold">
                        <i class="fas fa-check-circle"></i>&nbsp;College Books
                      </h5>
                    </div>
                    <div class="col-md-2">
                      <h5 class="font-weight-bold">
                        <i class="fas fa-check-circle"></i>&nbsp;Board Games
                      </h5>
                    </div>
                    <div class="col-md-2">
                      <h5 class="font-weight-bold">
                        <i class="fas fa-check-circle"></i>&nbsp;Stationary Books
                      </h5>
                    </div>
                    <div class="col-md-2">
                      <h5 class="font-weight-bold">
                        <i class="fas fa-check-circle"></i>&nbsp;Story Books
                      </h5>
                    </div>
                    <div class="col-md-2"> 
                    <h5 class="font-weight-bold">
                        <i class="fas fa-check-circle"></i>&nbsp;Others Books
                      </h5> 
                    </div>
                  </div> 
              </div>
              <!-- Content -->

            </div>
            <!-- Mask & flexbox options-->

          </div>
        </div>
        <!--/Third slide-->

      </div>
      <!--/.Slides-->

      <!--Controls-->
      <a class="carousel-control-prev" href="#carousel-example-1z" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carousel-example-1z" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
      <!--/.Controls-->

    </div>
    <!--/.Carousel Wrapper-->

  </header>

  <!--Main layout-->
  <main>
    <div class="container">

      <!--Section: Main info-->
      
      <!--Section: Main features & Quick Start-->

    
      <!--Section: More-->
      <section>
        
        <h2 class="text-center mt-4 font-weight-bold text-primary">AN INITIATIVE BY</h2>
        <div class="row">
          <div class="col-md-12 text-center">
            <img src="img/large1.png" alt="" width="200" height="130px" />
            <h3 class="text-dark">India's First Managed Home Tuition App</h3>
          </div>
        </div>

        <h2 class="text-center mt-4 font-weight-bold text-primary"><i class="far fa-star mr-1"></i>Monthly Book  Donor <i class="far fa-star"></i></h2>
        <div class="row justify-content-center">
          <div class="col-md-10 text-center">
            <div class="card">
              <div class="card-body">
                <table id="dtMaterialDesignExample" class="table table-hover table-bordered table-sm">
                  <thead>
                    <tr>
                      <th>Name</th>
                      <th>No. of books donated</th>
                      <th>Date</th>
                      <th>City</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>Rakesh Chaudhary</td>
                      <td>17</td>
                      <td>21th Sep 2019</td>
                      <td>Muzzaferpur</td>
                    </tr>
                    <tr>
                      <td>Mansi Agrawal</td>
                      <td>16</td>
                      <td>30th Aug 2019</td>
                      <td>Kanpur</td>
                    </tr>
                    <tr>
                      <td>Kunal Sharma</td>
                      <td>14</td>
                      <td>10th Sep 2019</td>
                      <td>Kanpur</td>
                    </tr>
                    <tr>
                      <td>Kishan Maurya</td>
                      <td>13</td>
                      <td>24th Sep 2019</td>
                      <td>Varanasi</td>
                    </tr>
                    <tr>
                      <td>Vishwajeet Chavan</td>
                      <td>12</td>
                      <td>24th Sep 2019</td>
                      <td>Nagpur</td>
                    </tr>
                    <tr>
                      <td>Pooja Srivastava</td>
                      <td>10</td>
                      <td>20th Sep 2019</td>
                      <td>Kanpur</td>
                    </tr>
                  </tbody>
                  <tfoot>
                    <tr>
                     <th>Name</th>
                      <th>No. of books donated</th>
                      <th>Date</th>
                      <th>City</th>
                    </tr>
                  </tfoot>
                </table>
              </div>
            </div>
          </div>
        </div>





        <h2 class="my-5 h3 text-center">View Donate Books </h2>

        <!--First row-->
        <div class="row features-small mt-5 wow fadeIn ml-5">

          <!--Grid column-->
          <div class="col-xl-3 col-lg-6">
            <!--Grid row-->
           <div class="row">
              <div class="col-12 mb-2">
               <div class="card">

                  <!-- Card image -->
                  <div class="view overlay">
                    <img class="card-img-top" src="https://mdbootstrap.com/img/Mockups/Lightbox/Thumbnail/img%20(67).jpg" alt="Card image cap">
                    <a href="#!">
                      <div class="mask rgba-white-slight"></div>
                    </a>
                  </div>

                  <!-- Card content -->
                  <div class="card-body">

                    <!-- Title -->
                    <h4 class="card-title">Physics</h4>
                    <!-- Text -->
                    <p class="card-text"></p>
                    <ul class="list-unstyled">
                      <li>Name - Kunal Sharma</li>
                      <li>Contact No :989659865</li>
                      <li>Wathsaap No :989659865</li>
                      <li>Email Id : Cyberkingkunal@gmail.com</li>
                      <li>Location : Pune</li>
                    </ul>
                    <!-- Button -->
                    <a href="#" class="btn btn-primary font-weight-bold circle btn-block btn-sm btn-rounded">See Here</a>

                  </div>

                </div>
              </div>
            </div>
            <!--/Grid row-->
          </div>
          <!--/Grid column-->

          <!--Grid column-->
          <div class="col-xl-3 col-lg-6">
             <div class="row">
              <div class="col-12 mb-2">
               <div class="card">

                    <!-- Card image -->
                    <div class="view overlay">
                      <img class="card-img-top" src="https://mdbootstrap.com/img/Mockups/Lightbox/Thumbnail/img%20(67).jpg" alt="Card image cap">
                      <a href="#!">
                        <div class="mask rgba-white-slight"></div>
                      </a>
                    </div>

                    <!-- Card content -->
                    <div class="card-body">

                      <!-- Title -->
                      <h4 class="card-title">Cartoon Story</h4>
                      <!-- Text -->
                      <ul class="list-unstyled">
                      <li>Name - Kishan Maurya</li>
                      <li>Contact No :989659865</li>
                      <li>Wathsaap No :989659865</li>
                      <li>Email Id : kkmaurya.0095@gmail.com</li>
                      <li>Location : Pune</li>
                    </ul>
                      <!-- Button -->
                      <a href="#" class="btn btn-primary font-weight-bold btn-rounded circle btn-block btn-sm">See Here</a>

                    </div>

                  </div>
              </div>
            </div>
            <!--/Grid row-->
          </div>
          <!--/Grid column-->

          <!--Grid column-->
          <div class="col-xl-3 col-lg-6">
            <!--Grid row-->
            <div class="row">
              <div class="col-12 mb-2">
               <div class="card">

                  <!-- Card image -->
                  <div class="view overlay">
                    <img class="card-img-top" src="https://mdbootstrap.com/img/Mockups/Lightbox/Thumbnail/img%20(67).jpg" alt="Card image cap">
                    <a href="#!">
                      <div class="mask rgba-white-slight"></div>
                    </a>
                  </div>

                  <!-- Card content -->
                  <div class="card-body">

                    <!-- Title -->
                    <h4 class="card-title">Tom & Jerry </h4>
                    <!-- Text -->
                    <ul class="list-unstyled">
                      <li>Name - Rakesh Chaudhary</li>
                      <li>Contact No :989659865</li>
                      <li>Wathsaap No :989659865</li>
                      <li>Email Id : rakesh789@gmail.com</li>
                      <li>Location : Pune</li>
                    </ul>
                    <!-- Button -->
                    <a href="#" class="btn btn-primary font-weight-bold btn-rounded circle btn-block btn-sm">See Here</a>

                  </div>

                </div>
              </div>
            </div>
            <!--/Grid row-->
          </div>
          <!--/Grid column-->

          <!--Grid column-->
          <div class="col-xl-3 col-lg-6">
            <!--Grid row-->
             <div class="row">
              <div class="col-12 mb-2">
               <div class="card">

                    <!-- Card image -->
                    <div class="view overlay">
                      <img class="card-img-top" src="https://mdbootstrap.com/img/Mockups/Lightbox/Thumbnail/img%20(67).jpg" alt="Card image cap">
                      <a href="#!">
                        <div class="mask rgba-white-slight"></div>
                      </a>
                    </div>

                    <!-- Card content -->
                    <div class="card-body">

                      <!-- Title -->
                      <h4 class="card-title">12th Biology</h4>
                      <!-- Text -->
                      <ul class="list-unstyled">
                      <li>Name - Mansi Agrwal</li>
                      <li>Contact No :989659865</li>
                      <li>Wathsaap No :989659865</li>
                      <li>Email Id : mansiangel@gmail.com</li>
                      <li>Location : Pune</li>
                    </ul>
                      <!-- Button -->
                      <a href="#" class="btn btn-primary font-weight-bold btn-rounded btn-block size btn-block circle btn-sm">See Here</a>

                    </div>

                  </div>
              </div>
            </div>
            <!--/Grid row-->
          </div>
          <!--/Grid column-->

        </div>
        <!--/First row-->

        <!--Second row-->
        <div class="row features-small mt-4 wow fadeIn ml-5">

          <!--Grid column-->
          <div class="col-xl-3 col-lg-6">
            <!--Grid row-->
            <div class="row">
              <div class="col-12 mb-2">
               <div class="card">

                  <!-- Card image -->
                  <div class="view overlay">
                    <img class="card-img-top" src="https://mdbootstrap.com/img/Mockups/Lightbox/Thumbnail/img%20(67).jpg" alt="Card image cap">
                    <a href="#!">
                      <div class="mask rgba-white-slight"></div>
                    </a>
                  </div>

                  <!-- Card content -->
                  <div class="card-body">

                    <!-- Title -->
                    <h4 class="card-title">IIT Chemistry</h4>
                    <!-- Text -->
                    <ul class="list-unstyled">
                      <li>Name - Pooja Srivastava</li>
                      <li>Contact No :989659865</li>
                      <li>Wathsaap No :989659865</li>
                      <li>Email Id : poojasrivasta@gmail.com</li>
                      <li>Location : Pune</li>
                    </ul>
                    <!-- Button -->
                    <a href="#" class="btn btn-primary font-weight-bold btn-rounded circle btn-sm btn-block btn-rounded">See Here</a>

                  </div>

                </div>
              </div>
            </div>
            <!--/Grid row-->
          </div>
          <!--/Grid column-->

          <!--Grid column-->
          <div class="col-xl-3 col-lg-6">
            <!--Grid row-->
             <div class="row">
              <div class="col-12 mb-2">
               <div class="card">

                    <!-- Card image -->
                    <div class="view overlay">
                      <img class="card-img-top" src="https://mdbootstrap.com/img/Mockups/Lightbox/Thumbnail/img%20(67).jpg" alt="Card image cap">
                      <a href="#!">
                        <div class="mask rgba-white-slight"></div>
                      </a>
                    </div>

                    <!-- Card content -->
                    <div class="card-body">

                      <!-- Title -->
                      <h4 class="card-title">12th Maths</h4>
                      <!-- Text -->
                      <ul class="list-unstyled">
                      <li>Name - Raunak Honrav</li>
                      <li>Contact No :989659865</li>
                      <li>Wathsaap No :989659865</li>
                      <li>Email Id : rounaksuccess@gmail.com</li>
                      <li>Location : Pune</li>
                    </ul>
                      <!-- Button -->
                      <a href="#" class="btn btn-primary font-weight-bold btn-block btn-sm circle btn-rounded">See Here</a>

                    </div>

                  </div>
              </div>
            </div>
            <!--/Grid row-->
          </div>
          <!--/Grid column-->

          <!--Grid column-->
          <div class="col-xl-3 col-lg-6">
            <!--Grid row-->
           <div class="row">
              <div class="col-12 mb-2">
              <div class="card">

                  <!-- Card image -->
                  <div class="view overlay">
                    <img class="card-img-top" src="https://mdbootstrap.com/img/Mockups/Lightbox/Thumbnail/img%20(67).jpg" alt="Card image cap">
                    <a href="#!">
                      <div class="mask rgba-white-slight"></div>
                    </a>
                  </div>

                  <!-- Card content -->
                  <div class="card-body">

                    <!-- Title -->
                    <h4 class="card-title">12th English</h4>
                    <!-- Text -->
                    <ul class="list-unstyled">
                      <li>Name - Vishwajeet Chavan</li>
                      <li>Contact No :989659865</li>
                      <li>Wathsaap No :989659865</li>
                      <li>Email Id : vishwachavan@gmail.com</li>
                      <li>Location : Pune</li>
                    </ul>
                    <!-- Button -->
                    <a href="#" class="btn btn-primary font-weight-bold btn-rounded btn-sm btn-block circle">See Here</a>

                  </div>

                </div>
              </div>
            </div>
            <!--/Grid row-->
          </div>
          <!--/Grid column-->

          <!--Grid column-->
          <div class="col-xl-3 col-lg-6">
            <!--Grid row-->
             <div class="row">
              <div class="col-12 mb-2">
               <div class="card">

                  <!-- Card image -->
                  <div class="view overlay">
                    <img class="card-img-top" src="https://mdbootstrap.com/img/Mockups/Lightbox/Thumbnail/img%20(67).jpg" alt="Card image cap">
                    <a href="#!">
                      <div class="mask rgba-white-slight"></div>
                    </a>
                  </div>

                  <!-- Card content -->
                  <div class="card-body">

                    <!-- Title -->
                    <h4 class="card-title">12 Econamics</h4>
                    <!-- Text -->
                    <ul class="list-unstyled">
                      <li>Name - Smriti Tiwari</li>
                      <li>Contact No :989659865</li>
                      <li>Wathsaap No :989659865</li>
                      <li>Email Id : tiwarismrati@gmail.com</li>
                      <li>Location : Pune</li>
                    </ul>
                    <!-- Button -->
                    <a href="#" class="btn btn-primary font-weight-bold btn-rounded circle btn-block btn-sm">See Here</a>

                  </div>

                </div>
              </div>
            </div>
            <!--/Grid row-->
          </div>
          <!--/Grid column-->

        </div>
        <!--/Second row-->

      </section>
      <!--Section: More-->

    </div>
  </main>
  <!--Main layout-->

  <!--Footer-->
  <footer class="page-footer text-center font-small mt-4 wow fadeIn  blue-gradient">


    <div class="row" style="border-bottom: 1px solid white;">
      <div class="col-md-12 text-left mt-4">
        <h2 class="text-white ml-5 font-weight-bold"  id="tagline"><i class="fas fa-book-reader mr-4"></i>Ek Kadam Daksha Ki Or <i class="far fa-hand-point-right ml-3"></i></h2>
      </div>
    </div>


    <div class="row justify-content-center">
        <div class="col-md-2">
            <ul class="col-md-2 list-unstyled mt-5 font-weight-bold">
              <li><h4 class="text-white font-weight-bold">Fundraise</h4></li>
              <li><a href="/campaign/start_campaign_ngo.php">Fundraising for NGOs</a></li>
              <li><a href="/campaign/start_campaign_personal.php">Personal Causes</a></li>
              <li><a href="/campaign/crowdfunding-for-education.php">Crowdfunding for Education</a></li>
              <li><a href="/">Crowdfunding</a></li>
              <li><a href="/">Crowdfunding India</a></li>
            </ul>
        </div>
        <div class="col-md-2">
          <ul class="col-md-2 list-unstyled mt-5 font-weight-bold">
              <li><h4 class="text-white font-weight-bold">How it works</h4></li>
              <li><a href="/how_it_works/fundraising-ideas-for-ngos.php">NGOS</a></li>
              <li><a href="/how_it_works/fundraising-ideas-for-corporates.php">Corporates</a></li>
              <li><a href="/how_it_works/how-fundraising-works.php">Individuals</a></li>
            </ul>
        </div>
        <div class="col-md-2 list-unstyled">
          <ul class="col-md-2 font-weight-bold text-white list-unstyled mt-5">
            <li><h4 class="font-weight-bold">About Us</h4></li>
            <li><a href="/about/about-us.php">Team Ketto</a></li>
            <li><a href="/about/our-partners.php">Our Partners</a></li>
            <li><a href="/about/careers.php">Careers</a></li>
            <li><a href="/about/pressclub.php">Press Club</a></li>
            <li><a href="http://blog.ketto.org">Blog</a></li>
          </ul>
        </div>
        <div class="col-md-2">
          <ul class="col-md-2 font-weight-bold text-white mt-5 list-unstyled">
            <li><h4 class="text-white font-weight-bold">Support</h4></li>
            <li><a href="/support/faqs.php">Help Center</a></li>
            <li><a href="/support/fundraising-tips-ideas.php">Fundraising Tips</a></li>
            <li><a href="/support/campaign-video.php">Fundraiser Video</a></li>
            <li><a href="/support/handbook.php">Project Handbook</a></li>
            <li><a href="/support/plans-and-pricing.php">Plans &amp; Pricing</a></li>
            <!-- <li><a href="/support/payouts.php">Payouts</a></li> -->
            <li><a href="/support/contact-us.php">Contact Us</a></li>
            <li><a href="/trust-and-safety.php">Trust &amp; Safety</a></li>
          </ul>
        </div>
        <div class="col-md-2 mt-5">
          <ul class="list-unstyled font-weight-bold text-white">
        <li><h4 class="text-white font-weight-bold">Follow Us</h4></li>

        <ul class="col-md-6 row">
          <li>
            <a target="_blank" href="http://www.facebook.com/ketto.org" class="social-fb footer-link">
              <span class="fa-stack fa-lg">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
              </span>Facebook
            </a>
          </li>
          <li>
            <a target="_blank" href="http://www.twitter.com/ketto" class="social-twitter footer-link">
              <span class="fa-stack fa-lg">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
              </span>Twitter
            </a>
          </li>
          <li>
            <a target="_blank" href="http://www.linkedin.com/company/ketto-online-ventures-private-limited" class="social-linkedin footer-link">
              <span class="fa-stack fa-lg">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-linkedin fa-stack-1x fa-inverse"></i>
              </span>Linkedin
            </a>
          </li>

        </ul>
        </div>
    </div>
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

