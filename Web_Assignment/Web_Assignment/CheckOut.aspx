<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="Web_Assignment.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
      <link href="css/Cart.css" rel="stylesheet" type="text/css" media="all"/>
    
    
<section class="h-100 gradient-custom">
    <div class="container py-5">
        <div class="row d-flex justify-content-center my-4">
            <div class="col-md-8">
                <div class="card mb-4">
                    <div class="card-header py-3">
                        <div class="row">
                            <div class="col">
                                <h4 class="mb-0"><strong>Check Out</strong></h4>
                            </div>
                        </div>
                    </div>
                    <!-- Address -->

                    <div class="card mb-4">
                        <div class="card-body">
                            <div class="row">
                                <p><strong>Delivery Address</strong></p>


                                <p class="mb-0">Kiongho address</p>
                                <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#Address">
                                    Open modal
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
                            <p><strong>Add Your Details</strong></p>
                            <form class="row g-3">
                                <div class="col-md-6">
                                    <label for="inputFname" class="form-label">First Name</label>
                                    <input type="text" class="form-control" id="inputinputFname" placeholder="E.g John">
                                </div>
                                <div class="col-md-6">
                                    <label for="inputLname" class="form-label">Last Name</label>
                                    <input type="text" class="form-control" id="inputLName" placeholder="E.g Wick">
                                </div>
                                <div class="col-12">
                                    <label for="inputEmail" class="form-label">Email</label>
                                    <input type="email" class="form-control" id="inputEmail" placeholder="E.g example@gmail.com">
                                </div>
                                <div class="col-12">
                                    <label for="inputNumber" class="form-label">Mobile Number</label>
                                    <input type="tel" class="form-control" id="inputAddress2" placeholder="E.g : 012-345-6789" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" required>
                                </div>
                             
                      
                            </form>
                        </div>

                    </div>
                  
                </div>

                   <div class="card mb-4">
                    <div class="card-body">
                        <p><strong>Remark</strong></p>
                       <textarea class="form-control" rows="5" id="comment" name="text" style="background-color:#F1F1F1" placeholder="E.g Extra Tomato sauce, Extra Chili Sauce"></textarea>

                    </div>


                </div>


                <div class="card mb-4 mb-lg-0">
                    <div class="card-body">
                        
                        <p><strong>Payment Method</strong></p>

                       
                        <form>


  <div class="mb-3">
    <label for="payment-method" class="form-label">Payment Method</label>
    <div class="form-check">
      <input class="form-check-input" type="radio" name="payment-method" id="credit-card" value="credit-card" checked>
      <label class="form-check-label" for="credit-card">
        Credit Card
      </label>
    </div>
    <div class="form-check">
      <input class="form-check-input" type="radio" name="payment-method" id="cash" value="cash">
      <label class="form-check-label" for="cash">
        Cash
      </label>
    </div>
    <div class="form-check">
      <input class="form-check-input" type="radio" name="payment-method" id="TNG" value="TNG">
      <label class="form-check-label" for="TNG">
        TouchNGo
      </label>
    </div>
  </div>

  <div id="credit-card-details">
   <div class="card-body">
                            <div class="form-group">
                            <label for="cc-number" class="control-label">Card Number</label>
                            <input id="cc-number" type="tel" class="input-lg form-control cc-number" autocomplete="cc-number" placeholder="&bull;&bull;&bull;&bull; &bull;&bull;&bull;&bull; &bull;&bull;&bull;&bull; &bull;&bull;&bull;&bull;" required>
                          </div>

                          <div class="row">

                            <div class="col-md-6">
                                 <div class="form-group">
                                    <label for="cc-exp" class="control-label">Card Expiry</label>
                                    <input id="cc-exp" type="tel" class="input-lg form-control cc-exp" autocomplete="cc-exp" placeholder="&bull;&bull; / &bull;&bull;" required>
                                  </div>

                                
                            </div>

                             <div class="col-md-6">
                               <div class="form-group">
                                <label for="cc-cvc" class="control-label">Card CVC</label>
                                <input id="cc-cvc" type="tel" class="input-lg form-control cc-cvc" autocomplete="off" placeholder="&bull;&bull;&bull;&bull;" required>
                              </div>
                            </div>
                              
                          </div>

      
                          <div class="form-group">
                            <label for="numeric" class="control-label">Card Holder Nae</label>
                            <input  type="text" class="input-lg form-control">
                          </div>

                        
        </div>
  </div>

  <div id="cash-details" class="d-none">
    <p>Pay with Cash</p>
  </div>

  <div id="TNG-details" class="d-none">
    <p>Pay with TouchNGo</p>
  </div>
                            <script src="css/Payment.js"> </script>
  
                            
</form>


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
                                class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0">Products
                <span>RM53.98</span>
                            </li>
                            <li
                                class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0">Products2
                <span>RM0.00</span>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center px-0">Deivery Fee
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



                        <button type="button" class="btn btn-primary btn-lg btn-block" data-bs-toggle="modal" data-bs-target="#Receipt">
                                    Check Out
                                </button>
<!--example-->
 <!-- The Modal -->
                               <div class="modal" id="Receipt" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body ">
                <div class="text-right"> <i class="fa fa-close close" data-dismiss="modal"></i> </div>
                
                <div class="px-4 py-5">

                    <h5 class="text-uppercase">Account Name</h5>



                <h4 class="mt-5 theme-color mb-5">Thanks for your order</h4>

                <span class="theme-color">Payment Summary</span>
                <div class="mb-3">
                    <hr class="new1">
                </div>

                <div class="d-flex justify-content-between">
                    <span class="font-weight-bold">Product(Qty:1)</span>
                    <span class="text-muted">$53.98</span>
                </div>

                   <div class="d-flex justify-content-between">
                    <span class="font-weight-bold">Product2(Qty:1)</span>
                    <span class="text-muted">$1750.00</span>
                </div>

                <div class="d-flex justify-content-between">
                    <small>Delivery Fee</small>
                    <small>$4.00</small>
                </div>


                <div class="d-flex justify-content-between">
                    <small>Tax</small>
                    <small>$0.00</small>
                </div>
                
                <div class="d-flex justify-content-between mt-3">
                    <span class="font-weight-bold">Total</span>
                    <span class="font-weight-bold theme-color">$57.98</span>
                </div>  



                <div class="text-center mt-5">


                    <button class="btn btn-primary" onclick="document.location='Delivery.aspx'">Track your order</button>
                    


                </div>                   

                </div>


            </div>
        </div>
    </div>
</div>

                       
<!--example-->

            </div>
                </div>
                </div>
            </div>
        </div>
    
</section>
</asp:Content>
