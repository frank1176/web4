<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Delivery.aspx.cs" Inherits="Web_Assignment.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="css/Track.css" rel="stylesheet" type="text/css" media="all"/>

  
 
    <title>Delivery Order Tracking</title>
    <!-- Load Bootstrap CSS -->
   
 
       <div class="container">
      <h1 class="text-center mb-4">Order Status</h1>
      <div class="card mt-4">
        <div class="card-body bg-light">
          <h5 class="card-title">Order #123456</h5>
          <p class="card-text">Your order is being processed and will be delivered soon.</p>
          <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#orderDetailsModal">View Order Details</button>
        </div>
      </div>
   
    </div>
    
    <!-- Order Details Modal -->
    <div class="modal fade" id="orderDetailsModal" tabindex="-1" aria-labelledby="orderDetailsModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="orderDetailsModalLabel">Order #123456 Details</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <p><strong>Order Date:</strong> March 30, 2023</p>
            <p><strong>Product Name:</strong> Product, Product 2</p>
            <p><strong>Delivery Address:</strong> Kiong Ho Address</p>
            <p><strong>Order Total:</strong> RM57.98</p>
            <p><strong>Payment Method:</strong> Credit Card</p>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          </div>
        </div>
      </div>
    </div>

       <div class="container">
      <h1 class="text-center mb-4">My Account</h1>
      <h3>Order History</h3>
      <table class="table">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Order Number</th>
            <th scope="col">Order Date</th>
            <th scope="col">Order Status</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row">1</th>
            <td>123456</td>
            <td>March 28, 2023</td>
            <td>Processing</td>
          </tr>
          <tr>
            <th scope="row">2</th>
            <td>789012</td>
            <td>March 20, 2023</td>
            <td>Completed</td>
          </tr>
          <tr>
            <th scope="row">3</th>
            <td>345678</td>
            <td>March 10, 2023</td>
            <td>Completed</td>
          </tr>
        </tbody>
      </table>
      <div class="text-center mt-4">
        <a href="Home.aspx" class="btn btn-primary" onclick="document.location='Home.aspx'">Back to Home</a>
      </div>


    </div>

    <!-- Load Bootstrap JS and jQuery -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</asp:Content>
