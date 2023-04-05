<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Web_Assignment.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
     <link href="css/Home.css" rel="stylesheet" type="text/css" media="all"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Home Page</h1>

    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img class="d-block w-100" src="asset/slide1.jpg" alt="First slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="asset/slide2.jpg" alt="Second slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="asset/slide3.jpg" alt="Third slide">
        </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>


    <div class="menu_class">
      <h2>Menu</h2>

       <a href="#" class="nav-link">view all</a>
    </div>

    <div class="card-deck d-flex flex-column flex-sm-row justify-content-between container-fluid menu_class2 ">

        <div class="card " style="width: 18rem;">
          <img src="asset/arabian_spice_crunch_box_meal_coleslaw.jpg" class="card-img-top " alt="...">
          <div class="card-body">
            <h5 class="card-title">Arabian Spice Crunch Box Meal Coleslaw</h5>
            <a href="#" class="btn btn-danger">More details</a>
          </div>
        </div>


         <div class="card" style="width: 18rem;">
          <img src="asset/2pc_arabian_spice_crunch_coleslaw.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">2pc_arabian_spice_crunch_coleslaw</h5>
            <a href="#" class="btn btn-danger">More details</a>
          </div>
        </div>

        <div class="card" style="width: 18rem;">
          <img src="asset/3pc_arabian_spice_crunch_coleslaw.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">3pc_arabian_spice_crunch_coleslaw</h5>
            <a href="#" class="btn btn-danger">More details</a>
          </div>
        </div>

        <div class="card" style="width: 18rem;">
          <img src="asset/6pc_bucket_kongsi_with_spicy_nuggets.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">6pc_bucket_kongsi_with_spicy_nuggets</h5>
            <a href="#" class="btn btn-danger">More details</a>
          </div>
        </div>

    </div>

 

    <div class="slide_bottom text-center">

        <img src="asset/slide4.jpg" alt="Alternate Text" class="img-fluid"/>

    </div>
    
    
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</asp:Content>
