<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Web_Assignment.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <title>Product</title>
    Product Pagex
    <head>
        
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Tutorial</title>
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500" rel="stylesheet">
    <!-- CSS -->
    <link href="css/style.css" rel="stylesheet">
    <meta name="robots" content="noindex,follow" />

  </head>

  <body>
    <main class="container">
        

      <!-- Left Column / Headphones Image -->
      <div class="left-column">

        <img data-image="red" class="active" src="asset/arabian_spice_crunch_box_meal_coleslaw.jpg" alt="">
       <!-- <div class="form-check">
  <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
  <label class="form-check-label" for="flexRadioDefault1">
    Default radio
  </label>
</div> <br /><br />
<div class="form-check">
  <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
  <label class="form-check-label" for="flexRadioDefault2">
    Default checked radio
  </label>
</div>   -->
          <div >
        Choose Your Drink (pick1)<br><br>
        
        <input type="radio" id="fname" name="fname" value="John">
        <label for="fname">Coca-Cola (M)</label><br><br>

        <input type="radio" id="fname" name="fname" value="John">
        <label for="fname">Coca-Cola Zero Sugar (M)</label><br><br>

        <input type="radio" id="fname" name="fname" value="John">
        <label for="fname">Sprite (M)</label><br><br>

        <input type="radio" id="fname" name="fname" value="John">
        <label for="fname">Fanta Orange (M)</label><br><br>

        <input type="radio" id="fname" name="fname" value="John">
        <label for="fname">Coca-Cola (L)</label><br><br>

        <input type="radio" id="fname" name="fname" value="John">
        <label for="fname">Coca-Cola Zero Sugar (L)</label><br><br>

        <input type="radio" id="fname" name="fname" value="John">
        <label for="fname">Sprite (L)</label><br><br>

        <input type="radio" id="fname" name="fname" value="John">
        <label for="fname">Fanta Orange (L)</label><br><br>

        <input type="radio" id="fname" name="fname" value="John">
        <label for="fname">Ice Milo (M)</label><br><br>
        <p style="float:right">fijcoe</p>
    </div>
      
    </div>
    


      <!-- Right Column -->
      <div class="right-column">

        <!-- Product Description -->
        <div class="product-description">

          <h3>3-pc Arabian Spice Crunch Combo</h3>
          <p>3 Arabian Spice Crunch<br>
            1 Whipped Potato (4oz)<br>
            1 Coleslaw (4oz)<br>
            1 Coca-Cola (M)</p>
        </div>

        <!-- Product Configuration -->
        <div class="product-configuration">

          <!-- Cable Configuration -->
          <div class="cable-config">

            <div class="cable-choose">
              <button> - </button>
              <button style="width: 65%; border-radius: 25px; " disabled>1</button>
              <button> + </button>
            </div>
            <div>
              <button style="width: 95%; height: 50px; border-radius: 20px;">Add To Cart - RM24.99</button>
            </div>

          
          </div>
        </div>

       
    
    </main>
       
    
  </body>
</asp:Content>