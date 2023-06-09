﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Web_Assignment.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%@ MasterType VirtualPath="~/Site1.Master" %>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
      <link href="css/Cart.css" rel="stylesheet" type="text/css" media="all"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <title>Cart Page</title>
    
<section class="h-100 gradient-custom">
  <div class="container py-5">
    <div class="row d-flex justify-content-center my-4">
      <div class="col-md-8">
        <div class="card mb-4">
          <div class="card-header py-3">
              <div class="row">
          <div class="col">  <h4 class="mb-0">Cart - 2 items</h4></div>
              <div class="col-md-2"> <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Menu.aspx" BorderColor="#FF3300">Add more item</asp:HyperLink></div>
             </div>
          </div>
           
          <div class="card-body">
    <asp:Repeater ID="cartRepeater" runat="server" OnItemCommand="cartRepeater_ItemCommand">
    
               <HeaderTemplate>
                 
             </HeaderTemplate>
                     <ItemTemplate>
            <!-- Single item -->
            <div class="row">
              <div class="col-lg-3 col-md-12 mb-4 mb-lg-0">
                    
                  
                <!-- Image -->
                <div class="bg-image hover-overlay hover-zoom ripple rounded" data-mdb-ripple-color="light">
                  <img src= "asset/<%# Eval("product_image") %>"
                    class="w-100"/>
                  <a href="#!">
                    <div class="mask" style="background-color: rgba(251, 251, 251, 0.2)"></div>
                  </a>
                </div>
                <!-- Image -->
              </div>

              <div class="col-lg-5 col-md-6 mb-4 mb-lg-0">
                <!-- Data -->
                <p><strong><%# Eval("ProductName") %></strong></p>

                  
                <ul>
            <%# Eval("Description")
                .ToString()
                .Split(new char[] { '@', '#', '$' }, StringSplitOptions.RemoveEmptyEntries)
                .Select(s => $"<li>{s}</li>")
                .Aggregate((s1, s2) => s1 + s2) %>
        </ul>
                <asp:Button ID="BtnEdit" runat="server" Text="Edit Item" class="btn btn-primary btn-sm mb-2" CommandArgument='<%# Eval("ProductID") %>'/>
                  
                <asp:Button ID="BtnRemove" runat="server" Text="Remove Item"  class="btn btn-danger btn-sm mb-2" data-mdb-toggle="tooltip" CommandName="RemoveCartItem" CommandArgument='<%# Eval("ProductID") %>' onClick="BtnRemove_Click"/>

                
                <!-- Data -->
              </div>

              <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                <!-- Quantity -->
                <div class="d-flex mb-2" style="max-width: 300px">
                   
                 <asp:Button ID="BtnMinus" runat="server" Text="-" style="width: 25%; text-align: center;height: 30px; border-radius: 40px; margin-top:10px; background-color:cornflowerblue;" CommandArgument='<%# Eval("ProductID") %>' CommandName="Minus" />
            

        

                    <asp:TextBox ID="quantityTextBox" runat="server" style="width: 75%; height: 30px; border-radius: 40px;  margin-top:10px;background-color:white; text-align:center;" Text='<%# Eval("quantity") %>' Enabled="False" ></asp:TextBox>

             
                 <asp:Button ID="BtnPlus" runat="server" Text="+" style="width: 25%; text-align: center;height: 30px; border-radius: 40px; margin-top:10px; background-color:cornflowerblue;" CommandArgument='<%# Eval("ProductID") %>' CommandName="Plus"/>
              
      

                   



                </div>
                <!-- Quantity -->

                <!-- Price -->
                <p class="text-start text-md-center">
                  <strong><%# Eval("UnitPrice") %></strong>
                </p>
                <!-- Price -->
                 
                 
              </div>
            </div>
                     
                           <hr class="my-4" />
                         </ItemTemplate>

           
        
                   <FooterTemplate>
                        
                       
                      
                  </FooterTemplate>
                 
  </asp:Repeater>

           

          
          </div>
        </div>
     

        <div class="card mb-4 mb-lg-0">
          <div class="card-body">
            <p><strong>We accept</strong></p>
               <img class="me-2" width="45px"
              src="asset/cash.png"
              alt="Cash" />
            <img class="me-2" width="45px"
              src="https://mdbcdn.b-cdn.net/wp-content/plugins/woocommerce-gateway-stripe/assets/images/visa.svg"
              alt="VisaCard" />
            <img class="me-2" width="45px"
              src="asset/tng.png"
              alt="Touch N Go" />
            <img class="me-2" width="45px"
              src="https://mdbcdn.b-cdn.net/wp-content/plugins/woocommerce-gateway-stripe/assets/images/mastercard.svg"
              alt="Mastercard" />
            
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card mb-4">
          <div class="card-header py-3">
            <h5 class="mb-0">Total</h5>
          </div>
          <div class="card-body">
            <ul class="list-group list-group-flush">
                <asp:Repeater ID="productRepeater" runat="server" OnItemCommand="cartRepeater_ItemCommand">
                <ItemTemplate>
                    <li
                class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0">
                <%# Eval("ProductName") %> (Qty: <%# Eval("quantity") %>)
                <span>   <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("totalPrice", "{0:C2}") %>'></asp:Label>

                </span>
              </li>
                 </ItemTemplate>
           
                 
  </asp:Repeater>
                 
              <li class="list-group-item d-flex justify-content-between align-items-center px-0">
                Delivery Fee
                <span>RM4.00</span>
              </li>
              <li
                class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 mb-3">
                <div>
                  <strong>Total Amount</strong>
                  <strong>
                    <p class="mb-0">(incl. SST)</p>
                  </strong>
                </div>
                <span><strong>
                    <asp:Label ID="lblSubtotal" runat="server" Text="LabelSubtotal"></asp:Label></strong></span>
              </li>
            </ul>
               
            <asp:Button runat="server" ID="btnReview" class="btn btn-primary btn-lg btn-block" Text="Review Payment & Address" PostBackUrl="~/CheckOut.aspx" onclick="btnReview_Click"/>
                   
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

    </asp:Content>

