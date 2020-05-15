<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aboutus.aspx.cs" Inherits="BookDonate.aboutus" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Pacifico&display=swap" rel="stylesheet">
  <style type="text/css">
    html,
    body,
    header,
    .carousel {
      height: 50vh;
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

    <div class="modal fade" id="centralModalSm1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <!-- Change class .modal-sm to change the size of the modal -->
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header badge blue-gradient color-block">
            <h4 class="modal-title w-100" id="myModalLabel"> Welcome Register</h4>
            <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true" class="text-white">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <!-- Material input -->
            <form action="#" method="post">
              <div class="card shadow-lg">
                <div class="card-body">
                  <div class="row">
                    <div class="col-md-6">

                      <div class="md-form input-group input-group-lg">
                          <div class="input-group-prepend">
                            <span class="input-group-text md-addon indigo-text" id="inputGroupMaterial-sizing-sm">
                              <i class="fas fa-user info-text"></i>
                            </span>
                          </div>
                          <input type="text" name="username" class="form-control"  placeholder="Full Name...">
                      </div>


                      <div class="md-form input-group input-group-lg">
                        <div class="input-group-prepend">
                          <span class="input-group-text md-addon indigo-text" id="inputGroupMaterial-sizing-sm">
                            <i class="fas fa-envelope info-text"></i>
                          </span>
                        </div>
                        <input type="text" name="email" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroupMaterial-sizing-sm" placeholder="Email...">
                      </div>


                      <div class="md-form input-group input-group-lg">
                        <div class="input-group-prepend">
                          <span class="input-group-text md-addon indigo-text" id="inputGroupMaterial-sizing-sm">
                            <i class="fas fa-phone info-text"></i>
                          </span>
                        </div>
                        <input type="text" name="phone" class="form-control" placeholder="Phone...">
                    </div>


                    <div class="md-form input-group input-group-lg">
                        <div class="input-group-prepend">
                          <span class="input-group-text md-addon indigo-text" id="inputGroupMaterial-sizing-sm">
                            <i class="fas fa-lock info-text"></i>
                          </span>
                        </div>
                        <input type="text" name="password" class="form-control"  placeholder="Password...">
                  </div>
                  
                  <div class="md-form input-group input-group-lg mb-3">
                      <div class="input-group-prepend">
                        <span class="input-group-text md-addon" id="inputGroupMaterial-sizing-sm">
                          <i class="fas fa-book indigo-text"></i>
                        </span>
                      </div>
                      <input type="password" name="address" class="form-control"  placeholder="Current Adress...">
                  </div>
                  
                </div>
                <div class="col-md-6">
                  <div class="md-form input-group input-group-lg">
                    <div class="input-group-prepend">
                      <span class="input-group-text md-addon indigo-text" id="inputGroupMaterial-sizing-sm">
                        <i class="fas fa-location-arrow info-text"></i>
                      </span>
                    </div>
                    <input type="text" name="city" class="form-control"  placeholder="City...">
                  </div>
                  <div class="md-form input-group input-group-lg">
                    <div class="input-group-prepend">
                      <span class="input-group-text md-addon indigo-text" id="inputGroupMaterial-sizing-sm">
                        <i class="fas fa-location-arrow info-text"></i>
                      </span>
                    </div>
                    <input type="text" name="State" class="form-control" placeholder="State...">
                  </div>

                  <div class="md-form input-group input-group-lg">
                  <div class="input-group-prepend">
                    <span class="input-group-text md-addon indigo-text" id="inputGroupMaterial-sizing-sm">
                      <i class="fas fa-globe-europe info-text"></i>
                    </span>
                  </div>
                  <input type="text" name="country" class="form-control"  placeholder="Country...">
                </div>

                <div class="md-form input-group input-group-lg">
                  <div class="input-group-prepend">
                    <span class="input-group-text md-addon indigo-text" id="inputGroupMaterial-sizing-sm">
                      <i class="fas fa-map-pin info-text"></i>
                    </span>
                  </div>
                  <input type="text" name="name" class="form-control" placeholder="PinCode...">
              </div>

              <div class="md-form input-group input-group-lg mb-3">
                <div class="input-group-prepend">
                  <span class="input-group-text md-addon" id="inputGroupMaterial-sizing-sm">
                    <i class="fas fa-lock indigo-text"></i>
                  </span>
                </div>
                <input type="password" name="repass" class="form-control" placeholder="Re -Password...">
              </div>
            </div>
          </div>
        </div>
        <div class="card-footer">
          <div class="md-form">
            <button type="submit" class="btn aqua-gradient btn-md btn-block font-weight-bold" name="register">Login</button>
          </div>
        </div>
      </div>
    </form>
  </div>
  <div class="modal-footer">
    <h6>
    <strong>If You Are Exits User Please Click Here -></strong> <button class="btn btn-primary font-weight-bold btn-md" data-toggle="modal" data-target="#centralModalSm">Login</button>
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
              <asp:HyperLink class="nav-link" ID="HyperLink3" runat="server" NavigateUrl="index.aspx">Home</asp:HyperLink>
               
            </li>
            <li class="nav-item active">
              <asp:HyperLink class="nav-link" ID="HyperLink1" runat="server" Text="About Us" NavigateUrl="aboutus.aspx">About Us<span class="sr-only">(current)</span></asp:HyperLink> 
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
    <!-- Navbar -->

    <!--Carousel Wrapper-->
    <div id="carousel-example-1z" class="carousel slide carousel-fade" data-ride="carousel">

      <!--Indicators-->
      <ol class="carousel-indicators">
        <li data-target="#carousel-example-1z" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-1z" data-slide-to="1"></li>
        <li data-target="#carousel-example-1z" data-slide-to="2"></li>
      </ol>
      <!--/.Indicators-->

      <!--Slides-->
      <div class="carousel-inner" role="listbox">

        <!--First slide-->
        <div class="carousel-item active">
          <div class="view" style="background-image: url('img/a5.jpg'); background-repeat: no-repeat; background-size: cover;">

            <!-- Mask & flexbox options-->
            <div class="mask rgba-black-light my-5 d-flex justify-content-center align-items-center">

              <!-- Content -->
              <div class="text-center white-text mx-5 wow fadeIn">
                <h1 class="mb-4">
                   <strong> About Us </strong>
                </h1>

                <p>
                  <strong></strong>
                </p>

                <p class="mb-4 d-none d-md-block">
                  <strong>T</strong>
                </p>

                
              </div>
              <!-- Content -->

            </div>
            <!-- Mask & flexbox options-->

          </div>
        </div>
        <!--/First slide-->

        <!--Second slide-->
        <div class="carousel-item">
          <div class="view" style="background-image: url('img/a1.jpg'); background-repeat: no-repeat; background-size: cover;">

            <!-- Mask & flexbox options-->
            <div class="mask rgba-black-light d-flex justify-content-center align-items-center">

              <!-- Content -->
              <div class="text-center white-text mx-5 wow fadeIn my-5">
                <h1 class="my-5">
                   <strong> About Us </strong>
                </h1>

                <p>
                  <strong></strong>
                </p>

                <p class="mb-4 d-none d-md-block">
                  <strong></strong>
                </p>

                
              </div>
              <!-- Content -->

            </div>
            <!-- Mask & flexbox options-->

          </div>
        </div>
        <!--/Second slide-->

        <!--Third slide-->
        <div class="carousel-item">
          <div class="view" style="background-image: url('img/a1.jpg'); background-repeat: no-repeat; background-size: cover;">

            <!-- Mask & flexbox options-->
            <div class="mask rgba-black-light d-flex justify-content-center align-items-center">

              <!-- Content -->
              <div class="text-center white-text mx-5 wow fadeIn">
                <h1 class="mb-4">
                 <strong> About Us </strong>
                </h1>

                <p>
                  <strong>Best & free guide of responsive web design</strong>
                </p>

                <p class="mb-4 d-none d-md-block">
                  <strong></strong>
                </p>

                
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
        <nav class="mt-5 sticky-top navbar-fixed">
          <div class="nav nav-tabs" id="nav-tab" role="tablist">
                <a class="nav-item nav-link active font-weight-bold" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab"
              aria-controls="nav-home" aria-selected="true">About us</a>
                <a class="nav-item nav-link font-weight-bold" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab"
              aria-controls="nav-profile" aria-selected="false">Privacy And Policy</a>
                <a class="nav-item nav-link font-weight-bold" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab"
              aria-controls="nav-contact" aria-selected="false">Contact</a>
              <a class="nav-item nav-link font-weight-bold" id="A1" data-toggle="tab" href="#nav-contact" role="tab"
              aria-controls="nav-contact" aria-selected="false">Terms & Conditions</a>
          </div>
        </nav>
        <div class="tab-content" id="nav-tabContent">
	          <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
	              <div class="card shadow-lg">
	                <div class="card-body">
		                  <section class="mt-5 wow fadeIn">

        <!--Grid row-->
        <div class="row justify-content-center">

          <!--Grid column-->
              <div class="col-md-3 mb-4">
                
                  <div class="card card-cascade">

  <!-- Card image -->
                      <div class="view view-cascade overlay mb-4">
                        <img class="card-img-top" src="img/kishan1.jpg" alt="Card image cap">
                        <a>
                          <div class="mask rgba-white-slight"></div>
                        </a>
                      </div>

                      <!-- Card content -->
                      <div class="card-body card-body-cascade text-center mb-3">

                        <!-- Title -->
                        <h4 class="card-title"><strong>Kishan Maurya</strong></h4>
                        <!-- Subtitle -->
                        <h6 class="font-weight-bold indigo-text py-2">PHP FullStack Developer</h6>
                        <!-- Text -->
                        <p class="card-text">
                        </p>

                        <!-- Facebook -->
                        <a type="button" class="btn-floating btn-small btn-fb mb-4"><i class="fab fa-facebook"></i></a>
                        <!-- Twitter -->
                        <a type="button" class="btn-floating btn-small btn-tw mb-4"><i class="fab fa-twitter"></i></a>
                        <!-- Google + -->
                        <a type="button" class="btn-floating btn-small mb-4 btn-dribbble"><i class="fab fa-dribbble"></i></a>

                      </div>

                    </div>
            
               </div>
               <div class="col-md-6 mb-4">
                
                  <div class="card card-cascade">
                    <div class="view view-cascade overlay">
                        <img class="card-img-top" src="img/book.jpg" alt="Card image cap">
                        <a>
                          <div class="mask rgba-white-slight"></div>
                        </a>
                      </div>

                      <div class="card-body card-body-cascade text-center">

                       
                        <p class="card-text">
                          <strong>
                           <strong class="text-primary font-weight-bold">“Daksha-ek kadam shiksha ki or “</strong>  is an online donation system that allows different users to register and help those in need,
                            Not only individual users but the NGO can also register themselves where they can ask for help that may help enhancing the education system.
                            The donation involves different categories of books, stationary and money. The donation is entirely one to end which means that there is no involvement of third parties.
                            Donate-a-Book is an initiative by Pratham Books to help bridge the gap between those who want to help children read and those who need books for children. Together we will build a Reading India by making storybooks accessible to thousands of children and spread the joy of reading.Pratham Books was founded with the mission of putting “a book in every child’s hand”. To this end, we’ve spent a decade creating exciting, engaging stories for children, in Indian languages, and creating access to them, all across the length and breadth of India. Along the way, we came to realise that there are thousands of people who would love to help children read, but are unaware of how to do so.This led to the idea of a crowd-funding initiative – this initiative! That would make it easy to help India’s children read. All a donor needs to do is pick an NGO, librarian, or a Reading Champion they would like to support, and with a few clicks send them a set of books that a group of children can discover, read, and enjoy!Our sole aim is to see more Indian children read, and that is why every rupee donated on this platform goes towards the books, and ensuring they reach the children for whom they are meant.At Donate-a-Book we connect those who need children's books across India, with those who can help get these books to them.
                          </strong>
                        </p>

                        <!-- Facebook -->
                        <a type="button" class="btn-floating btn-small btn-fb"><i class="fab fa-facebook"></i></a>
                        <!-- Twitter -->
                        <a type="button" class="btn-floating btn-small btn-tw"><i class="fab fa-twitter"></i></a>
                        <!-- Google + -->
                        <a type="button" class="btn-floating btn-small btn-dribbble"><i class="fab fa-dribbble"></i></a>

                      </div>
                  </div>
            
               </div>
               <div class="col-md-3 mb-4">
                
                  <div class="card card-cascade">

  <!-- Card image -->
                      <div class="view view-cascade overlay">
                        <img class="card-img-top" src="img/ma1.jpg" height="250px" alt="Card image cap">
                        <a>
                          <div class="mask rgba-white-slight"></div>
                        </a>
                      </div>

                      <!-- Card content -->
                      <div class="card-body card-body-cascade text-center">

                        <!-- Title -->
                        <h4 class="card-title"><strong>Mansi Agarwal</strong></h4>
                        <!-- Subtitle -->
                        <h6 class="font-weight-bold indigo-text py-2">IOT Developer</h6>
                        <!-- Text -->
                        <p class="card-text">
                        </p>

                        <!-- Facebook -->
                        <a type="button" class="btn-floating btn-small btn-fb"><i class="fab fa-facebook-f"></i></a>
                        <!-- Twitter -->
                        <a type="button" class="btn-floating btn-small btn-tw"><i class="fab fa-twitter"></i></a>
                        <!-- Google + -->
                        <a type="button" class="btn-floating btn-small btn-dribbble"><i class="fab fa-dribbble"></i></a>

                      </div>

                    </div>
            
               </div>
          <!--Grid column-->

        </div>
        <!--Grid row-->

      </section>



	                </div>
                </div>  
	        </div>
	          <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                <div class="card shadow-lg">
	                <div class="card-header">
		                <div class="card-title">
			                <h3 class="text-dark font-weight-bold">Our Policy - :</h3>
		                </div>
	                </div>
	                <div class="card-body">
                         <p>
                              At Donate-a-Book , we respect your privacy. We want to ensure that you get the information, content, and experiences that matter most to you. We are committed to protecting the privacy of our donors , campaigners , customers, volunteers, and other supporters.This document is a written agreement and an electronic record and valid and enforceable electronic agreement / contract under Information Technology Act, 2000 (as applicable in Republic of India) and rules thereunder as applicable and the amended provisions pertaining to electronic records in various statutes under applicable Indian laws. This electronic record is generated by a computer system and does not require any physical or digital signatures. Your usage of the website shall be your deemed acceptance of this Privacy Policy and all the modifications and updates thereto.</p>
		                <h5 class="text-dark font-weight-bold">Introduction</h5>
		                <p>We do not publish, sell or rent your personal information to third parties for their marketing purposes without your consent, which includes your acceptance of this Privacy Policy. Please read this Privacy Policy carefully, to learn more about the ways in which we use and protect your personal information. If you do not agree with the contents of this policy, please do not use or access our website.This Privacy Policy covers the information, DONATE-A-BOOK under the umbrella of PRATHAM BOOKS ("Platform" and/or "We") collects from the user(s) ("User(s)" and/or "You") whether or not registered with. donateabook.org.in ("Website" including any successor website) and includes the Services – the term as defined in the Terms and Conditions). This Privacy Policy should be read in conjunction and together with the Terms and Conditions of the website.</p>

                        <h5 class="font-weight-bold text-dark">Scope</h5>
		                <p>This Privacy Policy applies to all personal data processed by full-time and part-time employees, volunteers when acting on behalf of Pratham Books, contractors and partners doing business on behalf of Pratham Books, as well as all legal entities, all operating locations in all countries, and all business processes conducted by Pratham Books.</p>

                        <h5 class="font-weight-bold text-dark">What Information We Collect</h5>
		                <p>During your registration or usage of the website, you may provide and/or we may access, capture or store various sensitive personal information, personal information or general information or data with respect to your activities or usage on the website. We may install cookies or other similar data collection software in your computer system for such purposes and you hereby consent to the same.Certain information or data which you may provide includes:</p>

                       <ul class="unstyled">
	                        <li>A.Name</li>
	                        <li>B.Gender</li>
	                        <li>C.Address</li>
	                        <li>D.State , City , Country</li>
	                        <li>E.Language Preference</li>
	                        <li>F.PAN CARD Number</li>
	                        <li>G.Credit Card / Debit Card / Netbanking details</li>
	                        <li>H. Contact Details i.e. mobile number or other telecommunication number</li>
	                        <li>I.Email User identification for accessing features and services of the website</li>
	                        <li>J.Password(s) associated with the above user identification</li>
                        </ul>

                        <h5 class="text-dark font-weight-bold">
			                What’s Private
		                </h5>
		                <p class="text-dark">
			                This data will not be publicly displayed or revealed to other users:
		                </p>
                         <ul class="unstyled">
	                        <li>A.Any payment information you provide</li>
	                        <li>B.Your password details</li>
	                        <li>C.Your IP address</li>
	                        <li>D.Your phone number</li>
	                        <li>E.Communications you send to us (for example, when you ask for support, send us questions or comments, or report a problem)</li>
                        </ul>

                        <h5 class="text-dark font-weight-bold">
			                Correct, current and updated information
		                </h5>
		                <p class="text-dark">
			                You represent to us that the information or data you provide to us on the website from time to time is and shall be correct, current and updated and you have all the rights, permissions and consents to provide such information or data to us. Your providing the information or data to us and our consequent storage, collection, usage, transfer, access or processing of the same shall not be in violation of any third party agreement, laws, charter documents, judgments, orders and decrees.
		                </p>

                        <h5 class="text-dark font-weight-bold">
			                Information for which we are not responsible
		                </h5>
		                <p class="text-dark">
			                While using the website, you may provide sensitive personal information, or other general information about yourself or in connection with yourself to third parties. The website may have webpages, cookies, files, software, data or other information or communication links that are originated, created or posted by third parties (including advertisers, content or other partners or users) that can or has the capabilities of collecting, storing or using your data / information. We are not responsible for such data or information collected, stored or used by third parties even if such third parties uses the website to collect, store or use such data or information.
		                </p>

                        <h5 class="text-dark font-weight-bold">
			                    How we protect your information
		                </h5>
		                <p class="text-dark">
			                    We use reasonable security measures, at the minimum, those mandated under the Information Technology Act, 2000, as amended and read with Information Technology (Reasonable Security Practices and Procedures and Sensitive Personal Data or Information) Rules, 2011, to safeguard and protect your data and information. However, you may note that we may collect, store and process your information or data in computer resource, computer system or computer network which may not be owned or controlled by us and may be situated outside the Republic of India. You acknowledge that governmental or law enforcement authorities in the countries where your data or information is stored may have the right to decrypt, collect, monitor or access your data or information whose actions are completely out of our control. We don’t take any responsibilities for such actions.We utilise up-to-date security measures and policies for the protection of our website and to help avoid unauthorised access or corruption. Unfortunately, it is not possible to guarantee total security of information held and data and information transmitted via the internet may not be secure, may be routed incorrectly and/or is susceptible to interception by unauthorised parties. Therefore, the confidentiality and security of data and information provided by electronic means cannot be guaranteed and personal or sensitive information should not be provided unless you can satisfy yourself that you are using tried and tested encryption or secure communications software. However, every reasonable effort will be made to keep our website secure and to avoid unauthorised access or corruption. Use of the internet is not wholly secure and data and information provided via the internet can end up in the hands of unauthorised third parties despite best efforts to ensure security at all times. In providing any data or information to us by electronic means, you are agreeing to the transfer, storing and processing of information which could unknowingly be intercepted by an unauthorised person.Our website may, from time to time, contain links to and from other websites. If you follow a link to any of those websites, please note that you do so entirely at your own sole risk and responsibility. We do not accept any responsibility or liability for, nor do we make any representation in respect of, or endorse the content or material of, the external websites in any links provided. We would strongly urge you to exercise caution before you submit any personal data to or information to any of those websites.
		                </p>

                        <h5 class="text-dark font-weight-bold">
			                Use of information
		                </h5>
		                <p class="text-dark">
			                The data we collect is only used for the following:</p>
                            <ul>
                                <li>
                               <li> a) To allow for interaction | We use personal information such as name, physical address, telephone number, email address, and company/institution to engage in interactions with you, including contacting you about your donation, campaign, membership.</li>
                               <li> b) To provide support or other services | We may use your personal information to provide you with support or other services that you have ordered or requested. We may also use your personal information to respond directly to your requests for information, including registrations for newsletters or other specific requests, or pass your contact information to the appropriate Pratham Books/ Donate-a-Book contact for further follow-up related to your interests.</li>
                               <li> c) To provide information based on your needs and respond to your requests | We may use your personal information to provide you with notices of new campaigns on the platform, service developments, etc.</li>
                                <li>d) To confirm compliance | We may use this information to confirm compliance with licensing and other Terms and Conditions and may share it with your company/institution, as applicable.</li>
                                <li>e) To select content, improve quality, and facilitate use of the website | We may use your personal information, including the information gathered as a result of site navigation and electronic protocols and cookies (including third-party cookies), to help create and personalize website content, improve website quality, evaluate page response rates, conduct usability testing, and facilitate your use of the websites (for example, to facilitate navigation and the login process, avoid duplicate data entry, enhance security, keep track of shopping cart additions, and preserve donation / campaign information between sessions).</li>
                                <li>f) To assess usage of Donate-a-Book’s services | We may track your usage of the website services to determine your level of usage, and those usage statistics may be made available to Pratham Books’ content licensors and your company/institution, as and if applicable.</li>
                                <li>g) To protect Donate-a-Book content and services | We may use your information to prevent potentially illegal activities and to enforce our Terms and Conditions. We also use a variety of technological systems to detect and address anomalous activity and to screen content to prevent abuse, such as spam. These efforts may, on occasion, result in a temporary or permanent suspension or termination of some functions for some users.</li>
                                <li>h) To get feedback or input from you | In order to deliver services of the most interest to our registered users and visitors, from time to time, we may ask registered users, members, volunteers, and website visitors to provide us input and feedback (for example through surveys, usability studies, focus groups).</l>
                                <li>i) To engage with third parties | We may use third parties that we refer to as internal service providers to facilitate or outsource one or more aspects of service operations that we provide to you on the website (e.g., search technology, discussion boards, technical service providers, affiliate) and therefore, we may provide some of your information or data directly to these internal service providers. These internal service providers are subject to confidentiality agreements with us and other legal restrictions that prohibit their use of the information we provide them for any other purpose except to facilitate the specific website-related operations. In some instances, the internal service provider may collect information directly from you (such as for website surveys or for co-branded services). In these cases, you will be notified of the involvement of the internal service provider, and all additional information you provide them and their additional uses will be strictly up to you. If you provide additional information to an internal service provider directly, then their use of your personal information is governed by their applicable privacy policy, if any.</li>
                               <li> j) We use the information collected in a manner that is consistent with this Privacy Policy. If you start a campaign, we may reach out to you to provide helpful tips or advice in connection with your campaign. If you provide information for a certain reason, we may use the information in connection with the reason for which it was provided. For instance, if you contact us by email, we will use the information you provide to answer your question or resolve your problem. Also, if you provide information about yourself, or have provided (or otherwise permitted the Services to access) any third party data , we will use your information and any such third party data to provide you with access to such services and to monitor your use of such services. For the purposes of the GDPR, we may use your information in the above ways as this is necessary for us to fulfill our obligations under our contract with you or in order to take steps at your request prior to entering into a contract.</li>
		                
                                </li>
                            </ul>

                            <h5 class="text-dark font-weight-bold">
			                    Retention and Withdrawal
		                    </h5>
		                    <p class="text-dark">
			                       You can control the information we have about you and how we use it in several ways.For registered users/ members: We retain your personal information only for contractual and legal reasons (for example, we are legally required to keep certain information on record for tax reasons). If you are a registered user, you can review, revise and correct the personal data that you have provided to us by contacting privacy@prathambooks.orgFor newsletter subscriber: We only retain your name and email address as long as your subscription with us is active. You can unsubscribe at any time.
		                    </p>

                            <h5 class="text-dark font-weight-bold">
			                    Age of consent
		                    </h5>
		                    <p class="text-dark">
			                    Donate-a-Book and Pratham Books do not knowingly collect data from or about children under 16 without the permission of parent(s)/guardian(s). If we learn that we have collected personal information from a child under 16, we will delete that information as quickly as possible. If you believe that we might have any information from or about a child under age 16, please contact us.
		                    </p>

                            <h5 class="text-dark font-weight-bold">
			                    Data security
		                    </h5>
		                    <p class="text-dark">
			                    We use a variety of methods such as firewalls, intrusion detection software and manual security procedures to secure your data against loss or damage and to help protect the accuracy and security of Personal Data and to prevent unauthorized access or improper use. If you think that the Website or any Personal Data is not secure or that there has been unauthorized access to the website or your personal data, please contact privacy@prathambooks.org immediately.
		                    </p>
	                </div>
                </div>
	          </div>
	          <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
                    <div class="card shadow-lg">
	                    <div class="card-header">
		                    <div class="card-title">
			                    <h3 class="text-dark">
				                    Contact
			                    </h3>
		                    </div>
	                    </div>
	                    <div class="card-body">
		                    <div class="row">
			                    <div class="col-md-6">
				                    <h5 class="font-weight-bold text-dark">
					                    Ek Kadam Diksha Ki Ore
				                    </h5>
				                    <ul class="list-unstyled ml-5">
					                    <li>Head Office</li>
					                    <li>House No. 621, Second Floor,</li>
					                    <li>5th Main, OMBR Layout,</li>
					                    <li>SantTukkaram Nagar,Pimpri Pune – 411018,</li>
					                    <li>Pune India</li>
					                    <li>Tel - +91-9598608579, +91-8960804011</li>
				                    </ul>
			                    </div>
			                    <div class="col-md-6">
				                    <ul class="list-unstyled ml-5 mt-4">
					                    <li><i class="fab fa-firefox"></i> <strong>  Website : </strong>www.bookdonate.com</li>
					                    <li><i class="fas fa-cart-arrow-down"></i><strong>  E-Stopre : </strong>www.Storebookdonate.com</li>
					                    <li><i class="fas fa-envelope"></i><strong>  Email : </strong> kkmaurya.0095@gmail.com</li>
					                    <li><i class="fas fa-blog"></i><strong>  Blog : </strong>blog.bookdonate.comn</li>
					                    <li><i class="fab fa-facebook-f"></i><strong>  Facebook : </strong>https://kishanmaurya-90909.com</li>
					                    <li><i class="fab fa-twitter"></i><strong>  Twitter:</strong> https://twitter.com/prathambooks</li>
				                    </ul>
			                    </div>
		                    </div>
	                    </div>
                        <div class="card-footer">
	                        <h5 class="text-center">
		                        <asp:HyperLink class="btn btn-primary" data-target="" ID="HyperLink7" runat="server" NavigateUrl="index.aspx">Book Donate</asp:HyperLink>
	                        </h5>
                        </div>
                    </div>
	          </div>
        </div>
      <!--Section: Main info-->
      
      <!--Section: Main info-->

     
      <section>

        <h2 class="my-5 h3 text-center"></h2>

        <!--First row-->
        <div class="row features-small mt-5 wow fadeIn">

          <!--Grid column-->
          
          <!--/Grid column-->

         
          <!--/Grid column-->

          <!--Grid column-->
         

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
  <!-- SCRIPTS -->
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
