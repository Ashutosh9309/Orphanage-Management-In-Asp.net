<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home2.aspx.cs" Inherits="orphanagemanagement.Home2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Home</title>
    <link href="css\bootstrap.min.css" rel="stylesheet" />
    <link href="font-Awesome/css/all.css" rel="stylesheet" />

    </head>
<body>
    <form id="form1" runat="server">
      <div>
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="Home2.aspx">Happy Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse  " id="navbarNav">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="Home2.aspx">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Volunteer
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="Volunteer_Registration.aspx">Register</a>
          <a class="dropdown-item" href="Volunteer_Login.aspx">Login</a>
          
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="AboutUs.aspx">About Us</a>
      </li>
         <li class="nav-item">
        <a class="nav-link" href="Contact.aspx">Contact</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="Payment.aspx">Donate</a>
      </li>
        </ul>
    
      <asp:Label ID="Label1" runat="server" CssClass="alert-success" Font-Bold="True"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button1" runat="server" Text="Logout" Class="btn btn-danger" OnClick="Button1_Click" />
      
  </div>
</nav>
 </div>
   
        <div class="jumbotron text-center align-text-top" style="background-color:#00F3FF"> 
            <h2 class="text-info">Happy Home</h2>
               </div>
        <div id="carouselExampleIndicators" class="carousel slide " data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/image1.jpg" class="d-block w-100" alt="..." height="600" width="520">
    </div>
    <div class="carousel-item">
      <img src="images/img2.jpg" class="d-block w-100" alt="..." height="600" width="520">
    </div>
    <div class="carousel-item">
      <img src="images/img3.jpg" class="d-block w-100" alt="..." height="600" width="520">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
        <br />

 <div class="card mb-12">
  <div class="row no-gutters">
    <div class="col-md-6">
      <img src="images/cardimg1.png" class="card-img" alt="...">
    </div>
    <div class="col-md-6">
      <div class="card-body">
        <h5 class="card-title">WELCOME TO THE FAMILY!</h5><br />
        <p class="card-text text-justify">So take a look around our website; meet the team, see what we do. We would love to get to know you more, learn about how you heard of our organization and also hear any thoughts or ideas that you might have. If you are interested in volunteering or donating, please click the appropriate buttons below. We cannot do this work alone so we’re glad you’re here. Welcome to the family!.</p>
     
      </div>
    </div>
  </div>
</div>
 <div class="card mb-12">
  <div class="row no-gutters">
    <div class="col-md-6">
      <div class="card-body">
        <h5 class="card-title">OUR ORPHAN CHILDREN!</h5><br />
        <p class="card-text text-justify">Please take some time to sit and browse through the rest of our orphanages website, we do our best to update it regularly. There is plenty of information to see that we hope will bring you closer to understanding us, our orphans, our goals and our dreams. If you are looking for volunteering information or volunteer work with our orphans please take a look at our visitors information section!.</p>
      </div>
    </div>
      <div class="col-md-6">
      <img src="images/cardimg2.jpg" class="card-img" alt="...">
    </div>
  </div>
</div>
<br />

    <div class="card-deck">
  <div class="card">
    <img src="images/myimg.jpg" class="card-img-top" alt="..."> 
  </div>
  <div class="card">
    <img src="images/myimg2.jpg" class="card-img-top" alt="...">
  </div>
   <div class="card">
    <img src="images/myimg3.jpg" class="card-img-top" alt="...">
  </div>
  </div>
<br />

      
        <!-- Footer -->
<footer class="page-footer font-small unique-color-dark">

  <div style="background-color: #6351ce;">
    <div class="container">

      <!-- Grid row-->
      <div class="row py-4 d-flex align-items-center">

        <!-- Grid column -->
        <div class="col-md-6 col-lg-5 text-center text-md-left mb-4 mb-md-0">
          <h6 class="mb-0">Get connected with us on social networks!</h6>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-6 col-lg-7 text-center text-md-right">

          <!-- Facebook -->
           <a class="fb-ic" href="https://www.facebook.com/neerav.patil.1">
            <i class="fab fa-facebook-f fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
          </a>
          <!-- Twitter -->
          <a class="tw-ic" href="https://twitter.com/ViJaiswar?s=08">
            <i class="fab fa-twitter fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
          </a>
          
          
          <!--Instagram-->
          <a class="ins-ic" href="https://instagram.com/son_of_patil?neerav.patil.1">
            <i class="fab fa-instagram fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
          </a>

        </div>
        <!-- Grid column -->

      </div>
      <!-- Grid row-->

    </div>
  </div>

  <!-- Footer Links -->
  <div class="container text-center text-md-left mt-5">

    <!-- Grid row -->
    <div class="row mt-3">

      <!-- Grid column -->
      <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">

        <!-- Content -->
        <h6 class="text-uppercase font-weight-bold">Organisation name</h6>
        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <p>
            Happy Homes
          </p>

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
     
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">

        <!-- Links -->
        <h6 class="text-uppercase font-weight-bold">Useful links</h6>
        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
       
          <p>
          <a href="Home.aspx">Home</a>
        </p>
       
          
          <p>
          <a href="Contact.aspx">Contact</a>
        </p>
        <p>
          <a href="AboutUs.aspx">About Us</a>
        </p>
       
      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">

        <!-- Links -->
        <h6 class="text-uppercase font-weight-bold">Contact</h6>
        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <p>
          <i class="fas fa-home mr-3"></i> 636/3 D.H.PATIL Bungalow, Chinchipada, Ambernath, West</p>
        <p>
          <i class="fas fa-envelope mr-3"></i> neeravpatil@gmail.com</p>
        <p>
          <i class="fas fa-phone mr-3"></i> + 91 99219 43785</p>
        <p>
          <i class="fas fa-print mr-3"></i> + 91 234 567 89</p>

      </div>
      <!-- Grid column -->

    </div>
    <!-- Grid row -->

  </div>
  <!-- Footer Links -->

  <!-- Copyright -->


  <div class="footer-copyright text-center py-3">© 2020 Copyright:
    <a href="Home.aspx">Happy Homes</a>
  </div>
  <!-- Copyright -->

</footer>
<!-- Footer -->

    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
