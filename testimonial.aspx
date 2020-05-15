<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testimonial.aspx.cs" Inherits="BookDonate.testimonial" %>

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
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
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

    <script>
        $(document).ready(function () {
            $('#example').DataTable();
        });
  </script>


</head>

<body>
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
              <asp:HyperLink class="nav-link active" ID="HyperLink3" runat="server" NavigateUrl="index.aspx">Home</asp:HyperLink>
               
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
            <li class="nav-item active">
                <asp:HyperLink class="nav-link" ID="HyperLink5" runat="server" NavigateUrl="testimonial.aspx">Testimonial<span class="sr-only">(current)</span></asp:HyperLink>
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
                  <strong>Testimonials</strong>
                </h1>
                
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
               <h1 class="mb-4">
                 <strong>Testimonials</strong>
                </h1>
                
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
                  <strong>Testimonials</strong>
                </h1>
                
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
      <section class="mt-5 wow fadeIn">

        <!--Grid row-->
        <div class="row justify-content-center">

          <!--Grid column-->

              <div class="col-md-10 mb-2">
                <!-- Section: Testimonials v.2 -->
<!-- Section: Testimonials v.1 -->
<section class="text-center my-5 p-1">

  <!-- Section heading -->
  <h2 class="h1-responsive font-weight-bold my-5">Testimonials</h2>
  <!-- Section description -->
  <p class="dark-grey-text w-responsive mx-auto mb-5"></p>

  <!-- Grid row -->
  <div class="row">

    <!--Grid column-->
    <div class="col-lg-4 col-md-12 mb-lg-0 mb-4">
      <!--Card-->
      <div class="card testimonial-card">
        <!--Background color-->
        <div class="card-up info-color"></div>
        <!--Avatar-->
        <div class="avatar mx-auto white">
          <img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(9).jpg" class="rounded-circle img-fluid">
        </div>
        <div class="card-body">
          <!--Name-->
          <h4 class="font-weight-bold mb-4">Kunal Sharma</h4>
          <hr>
          <!--Quotation-->
          <p class="dark-grey-text mt-4"><i class="fas fa-quote-left pr-2">Neque cupiditate assumenda in
            maiores repudiandae mollitia architecto</i></p>
        </div>
      </div>
      <!--Card-->
    </div>
    <!--Grid column-->

    <!--Grid column-->
    <div class="col-lg-4 col-md-6 mb-md-0 mb-4">
      <!--Card-->
      <div class="card testimonial-card">
        <!--Background color-->
        <div class="card-up blue-gradient">
        </div>
        <!--Avatar-->
        <div class="avatar mx-auto white">
          <img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(20).jpg" class="rounded-circle img-fluid">
        </div>
        <div class="card-body">
          <!--Name-->
          <h4 class="font-weight-bold mb-4">Rakesh Chaudhary</h4>
          <hr>
          <!--Quotation-->
          <p class="dark-grey-text mt-4"><i class="fas fa-quote-left pr-2"></i>Neque cupiditate assumenda in
            maiores repudiandae mollitia architecto.</p>
        </div>
      </div>
      <!--Card-->
    </div>
    <!--Grid column-->

    <!--Grid column-->
    <div class="col-lg-4 col-md-6">
      <!--Card-->
      <div class="card testimonial-card">
        <!--Background color-->
        <div class="card-up indigo"></div>
        <!--Avatar-->
        <div class="avatar mx-auto white">
          <img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(10).jpg" class="rounded-circle img-fluid">
        </div>
        <div class="card-body">
          <!--Name-->
          <h4 class="font-weight-bold mb-4">Maria Kate</h4>
          <hr>
          <!--Quotation-->
          <p class="dark-grey-text mt-4"><i class="fas fa-quote-left pr-2"></i>Delectus impedit saepe officiis
            ab aliquam repellat rem unde ducimus.</p>
        </div>
      </div>
      <!--Card-->
    </div>
    <!--Grid column-->

  </div>
  <!-- Grid row -->

</section>
<!-- Section: Testimonials v.1 -->
<section class="text-center my-5 p-1">
  <!-- Grid row -->
  <div class="row">

    <!--Grid column-->
    <div class="col-lg-4 col-md-12 mb-lg-0 mb-4">
      <!--Card-->
      <div class="card testimonial-card">
        <!--Background color-->
        <div class="card-up info-color"></div>
        <!--Avatar-->
        <div class="avatar mx-auto white">
          <img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(9).jpg" class="rounded-circle img-fluid">
        </div>
        <div class="card-body">
          <!--Name-->
          <h4 class="font-weight-bold mb-4">John Doe</h4>
          <hr>
          <!--Quotation-->
          <p class="dark-grey-text mt-4"><i class="fas fa-quote-left pr-2"></i>Lorem ipsum dolor sit amet eos
            adipisci, consectetur adipisicing elit.</p>
        </div>
      </div>
      <!--Card-->
    </div>
    <!--Grid column-->

    <!--Grid column-->
    <div class="col-lg-4 col-md-6 mb-md-0 mb-4">
      <!--Card-->
      <div class="card testimonial-card">
        <!--Background color-->
        <div class="card-up blue-gradient">
        </div>
        <!--Avatar-->
        <div class="avatar mx-auto white">
          <img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(20).jpg" class="rounded-circle img-fluid">
        </div>
        <div class="card-body">
          <!--Name-->
          <h4 class="font-weight-bold mb-4">Anna Aston</h4>
          <hr>
          <!--Quotation-->
          <p class="dark-grey-text mt-4"><i class="fas fa-quote-left pr-2"></i>Neque cupiditate assumenda in
            maiores repudiandae mollitia architecto.</p>
        </div>
      </div>
      <!--Card-->
    </div>
    <!--Grid column-->

    <!--Grid column-->
    <div class="col-lg-4 col-md-6">
      <!--Card-->
      <div class="card testimonial-card">
        <!--Background color-->
        <div class="card-up indigo"></div>
        <!--Avatar-->
        <div class="avatar mx-auto white">
          <img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(10).jpg" class="rounded-circle img-fluid">
        </div>
        <div class="card-body">
          <!--Name-->
          <h4 class="font-weight-bold mb-4">Maria Kate</h4>
          <hr>
          <!--Quotation-->
          <p class="dark-grey-text mt-4"><i class="fas fa-quote-left pr-2"></i>Delectus impedit saepe officiis
            ab aliquam repellat rem unde ducimus.</p>
        </div>
      </div>
      <!--Card-->
    </div>
    <!--Grid column-->

  </div>
  <!-- Grid row -->

</section>
<!-- Section: Testimonials v.1 -->
<!-- Section: Testimonials v.1 -->
<!-- Section: Testimonials v.2 -->
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

