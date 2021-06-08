<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="orphanagemanagement.Payment" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Payment</title>
    <link href="css\bootstrap.min.css" rel="stylesheet" />
      <style>
    .jumbotron
         {
             background-image: url("images/cardimg1.png");
             opacity:0.7;
             
         }
     </style>

</head>
<body>
    <form id="form1" runat="server">
              <div>
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="Home.aspx">Happy Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
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
          <a class="dropdown-item" href="Login.aspx">Login</a>
          
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
        
  </div>
</nav>
</div>
 <br />
        <br />
        <div class="jumbotron container" style="width: 68%">
    <div class="container">
  <div class="form-row">
    <div class="form-group col-md-6">
      Name
      <asp:TextBox ID="TextBox1" type="Text" Class="form-control" runat="server"></asp:TextBox>
    </div>
    <div class="form-group col-md-6">
      Email
      <asp:TextBox ID="TextBox2" type="Email" Class="form-control" runat="server"></asp:TextBox>
    </div>
  </div>
  <div class="form-group">
    Mobile No
    <asp:TextBox ID="TextBox3" type="Text" Class="form-control" runat="server"></asp:TextBox>
  </div>
  <div class="form-group">
    Address
    <asp:TextBox ID="TextBox4" type="Text" Class="form-control" runat="server"></asp:TextBox>
  </div>

      <div class="form-group">
    Donate Clothes
    <asp:TextBox ID="TextBox5" type="Text" Class="form-control" runat="server" placeholder="Enter types of clothes."></asp:TextBox>
  </div>
    

    <div class="form-group">
    Donate Money
    <asp:TextBox ID="TextBox6" type="Text" Class="form-control" runat="server" placeholder="Enter what you want to donate."></asp:TextBox>
  </div>
    <div class="form-group">
    Donate Others
    <asp:TextBox ID="TextBox7" type="Text" Class="form-control" runat="server" placeholder="Enter what you want to donate."></asp:TextBox>
  </div>
    
  </div>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button1" runat="server" Text="Donate Money" Class="btn btn-primary" Font-Bold="True" OnClick="Button1_Click" />
  

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
              <asp:Button ID="Button2" runat="server" Class="btn btn-primary" Font-Bold="True" Text="Donate Clothes" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Button ID="Button3" runat="server" Class="btn btn-primary" Font-Bold="True" OnClick="Button3_Click" Text="Donate Others" />
   
        </div>
    
      </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
