<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Web_Assignment.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
      <link href="css/Cart.css" rel="stylesheet" type="text/css" media="all"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <h1>Cart Page</h1>
    
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
             <!-- Address -->
            
               <div class="card mb-4">
          <div class="card-body">
              <div class="row">
            <p><strong>Delivery Address</strong></p>


            <p class="mb-0">Kiongho address</p>
                  <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#Address">
 Change Address
</button>

<!-- The Modal -->
<div class="modal" id="Address">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Modal Heading</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        Modal body..
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>


                  </div>
        </div>
       </div>    
                
            <!-- Address -->
          <div class="card-body">
            <!-- Single item -->
            <div class="row">
              <div class="col-lg-3 col-md-12 mb-4 mb-lg-0">
                <!-- Image -->
                <div class="bg-image hover-overlay hover-zoom ripple rounded" data-mdb-ripple-color="light">
                  <img src= "asset/3pc_arabian_spice_crunch_coleslaw.jpg"
                    class="w-100" alt="Blue Jeans Jacket" />
                  <a href="#!">
                    <div class="mask" style="background-color: rgba(251, 251, 251, 0.2)"></div>
                  </a>
                </div>
                <!-- Image -->
              </div>

              <div class="col-lg-5 col-md-6 mb-4 mb-lg-0">
                <!-- Data -->
                <p><strong>3pc_arabian_spice_crunch</strong></p>
                <p>6 piece chicken</p>
                <p>Size: M</p>
                <button type="button" class="btn btn-primary btn-sm me-1 mb-2" data-mdb-toggle="tooltip"
                  title="Remove item">
                  <i class="fas fa-edit"></i>
                    <asp:HyperLink ID="HyperLink1" runat="server">Edit Item</asp:HyperLink>
                </button>
                <button type="button" class="btn btn-danger btn-sm mb-2" data-mdb-toggle="tooltip"
                  title="Move to the wish list">
                  <i class="fas fa-trash"></i>
                    <asp:HyperLink ID="HyperLink2" runat="server">Remove Item</asp:HyperLink>
                </button>
                <!-- Data -->
              </div>

              <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                <!-- Quantity -->
                <div class="d-flex mb-2" style="max-width: 300px">
                  <button class="btn btn-link px-3 me-4"
                    onclick="this.parentNode.querySelector('input[type=number]').stepDown()">
                    <i class="fas fa-minus"></i>
                  </button>

                 
                    <input id="form2" min="1" name="quantity" value="1" type="number" class="form-control" />
                    <label class="form-label" for="form2"></label>
                 

                  <button class="btn btn-link px-3 ms-2"
                    onclick="this.parentNode.querySelector('input[type=number]').stepUp()">
                    <i class="fas fa-plus"></i>

                  </button>


                   

                </div>
                <!-- Quantity -->

                <!-- Price -->
                <p class="text-start text-md-center">
                  <strong>$17.99</strong>
                </p>
                <!-- Price -->
              </div>
            </div>
            <!-- Single item -->

            <hr class="my-4" />

            <!-- Single item -->
            <div class="row">
              <div class="col-lg-3 col-md-12 mb-4 mb-lg-0">
                <!-- Image -->
                <div class="bg-image hover-overlay hover-zoom ripple rounded" data-mdb-ripple-color="light">
                  <img src="asset/2pc_arabian_spice_crunch_coleslaw.jpg"
                    class="w-100" />
                  <a href="#!">
                    <div class="mask" style="background-color: rgba(251, 251, 251, 0.2)"></div>
                  </a>
                </div>
                <!-- Image -->
              </div>

              <div class="col-lg-5 col-md-6 mb-4 mb-lg-0">
                <!-- Data -->
                <p><strong>2-pieces chicken</strong></p>
                <p>Donut x 1 </p>
                <p>Burger x 1</p>
                  <p>Coca-cola x 1</p>
                <button type="button" class="btn btn-primary btn-sm me-1 mb-2" data-mdb-toggle="tooltip"
                  title="Remove item">
                  <i class="fas fa-edit"></i>
                    <asp:HyperLink ID="HyperLink3" runat="server">Edit Item</asp:HyperLink>
                </button>
                <button type="button" class="btn btn-danger btn-sm mb-2" data-mdb-toggle="tooltip"
                  title="Move to the wish list">
                   
                  <i class="fas fa-trash"></i>
                     <asp:HyperLink ID="HyperLink4" runat="server">Remove Item</asp:HyperLink>
                </button>
                <!-- Data -->
              </div>

              <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                <!-- Quantity -->
                <div class="d-flex mb-4" style="max-width: 300px">
                    <button class="btn btn-link px-3 me-4"
                    onclick="this.parentNode.querySelector('input[type=number]').stepDown()">
                    <i class="fas fa-minus"></i>
                  </button>

                 
                    <input id="form1" min="1" name="quantity" value="1" type="number" class="form-control" />
                    <label class="form-label" for="form1"></label>
                 

                  <button class="btn btn-link px-3 ms-2"
                    onclick="this.parentNode.querySelector('input[type=number]').stepUp()">
                    <i class="fas fa-plus"></i>

                  </button>
                </div>
                <!-- Quantity -->

                <!-- Price -->
                <p class="text-start text-md-center">
                  <strong>$17.99</strong>
                </p>
                <!-- Price -->
              </div>
            </div>
            <!-- Single item -->
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
              <li
                class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0">
                Products
                <span>RM53.98</span>
              </li>
                 <li
                class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0">
                Products2
                <span>RM0.00</span>
              </li>
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
                <span><strong>RM57.98</strong></span>
              </li>
            </ul>
               
            <button type="button" class="btn btn-primary btn-lg btn-block" onclick="document.location='CheckOut.aspx'">
             Review Payment & Address
            </button>
                   
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

    </asp:Content>

