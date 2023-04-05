<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Web_Assignment.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <title>Product</title>
    
    <head>
        
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Fonts -->
    <link href="css/style.css" rel="stylesheet">
    <meta name="robots" content="noindex,follow" />

  </head>

  <body>
      <span style="margin-left:8%; margin-top:10%; color: gray;"><i>Home > Menu > 3-pc Arabian Spice Crunch Combo</i></span>
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
          <div style="margin-top: 20px; width:98%;">
        <span><b>Choose Your Drink </b>  <i>(pick1)</i></span><br><br>
        
        <input class="btnr" type="radio" id="fname" name="fname" value="Coca-Cola (M)" checked>
        <label for="fname">Coca-Cola (M)</label>  <br><hr />

        <input class="btnr" type="radio" id="fname" name="fname" value="Coca-Cola Zero Sugar (M)">
        <label for="fname">Coca-Cola Zero Sugar (M)</label><br><hr />

        <input class="btnr" type="radio" id="fname" name="fname" value="Sprite (M)">
        <label for="fname">Sprite (M)</label><br><hr />

        <input class="btnr" type="radio" id="fname" name="fname" value="Fanta Orange (M)">
        <label for="fname">Fanta Orange (M)</label><br><hr />

        <input class="btnr" type="radio" id="fname" name="fname" value="Coca-Cola (L)">
        <label for="fname">Coca-Cola (L)</label> <span style="float:right;">+RM 1.20</span> <br><hr />

        <input class="btnr" type="radio" id="fname" name="fname" value="Coca-Cola Zero Sugar (L)">
        <label for="fname">Coca-Cola Zero Sugar (L)</label> <span style="float:right;">+RM 1.20</span> <br> <hr />

        <input class="btnr" type="radio" id="fname" name="fname" value="Sprite (L)">
        <label for="fname">Sprite (L)</label> <span style="float:right;">+RM 1.20</span> <br> <hr />

        <input class="btnr" type="radio" id="fname" name="fname" value="Fanta Orange (L)">
        <label for="fname">Fanta Orange (L)</label> <span style="float:right;">+RM 1.20</span> <br> <hr />

        <input class="btnr" type="radio" id="fname" name="fname" value="Ice Milo (M)">
        <label for="fname">Ice Milo (M)</label> <span style="float:right;">+RM 2.20</span> <br> <hr />
       
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
              <button style="border-radius: 50%; width:8%; background-color:white;"> - </button>
              <button style="width: 75%; border-radius: 25px; background-color:white;">1</button>
              <button style="border-radius: 50%; width:8%; background-color:white;"> + </button>
            </div>
            <div>
              <button style="width: 95%; height: 50px; border-radius: 20px; margin-top:10px; background-color:white;">Add To Cart - RM24.99</button>
            </div>

          
          </div>
        </div>

       
    
    </main>
       
    
  </body>
</asp:Content>