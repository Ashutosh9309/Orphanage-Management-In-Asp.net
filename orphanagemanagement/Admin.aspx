<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="orphanagemanagement.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Contact</title>
    <link href="css\bootstrap.min.css" rel="stylesheet" />
    
</head>
<body>
    <form id="form1" runat="server">
      <div>
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="Home.aspx">Happy Homes</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="Home.aspx">Home <span class="sr-only">(current)</span></a>
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
        <li class="nav-item ">
        <a class="nav-link" href="Payment.aspx">Donate</a>
      </li>
     </ul>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Label ID="Label1" runat="server" class="text-danger" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button1" runat="server" Class="btn btn-danger" Text="Logout" OnClick="Button1_Click" />
        
  
  </div>
</nav>

</div>
        <br />

    <div class="container">
    <a href="DonarRequest.aspx">
  <h1 class="btn btn-primary" >Donation Request</h1>
     </a>
    <a href="User_Detail.aspx">
    <h1 class="btn btn-primary">User Detail </h1>
    
     </a>
        <a href="Volunteer_Detail.aspx">
    
    <h1 class="btn btn-primary">Volunteer Detail </h1>
     </a>

    <a href="Add-del-child.aspx">
    
    <h1 class="btn btn-primary">Add Child</h1>
     </a>
     <a href="delete-child.aspx">
    
    <h1 class="btn btn-primary">Delete Child</h1>
     </a>

        <a href="Update-child.aspx">
    
    <h1 class="btn btn-primary">Update Child</h1>
     </a>

        </div>
 
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
