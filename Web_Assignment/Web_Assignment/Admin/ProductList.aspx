<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="Web_Assignment.Admin.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
   Product List<br>
   
    
    
    <div class="input-group ">
          <div class="form-outline">
           
          </div>
         
          
        
     </div>
    
   
    <div class="d-flex justify-content-between">
        <div>
            <input type="search" id="form1" class="form-control" placeholder="Search" /> 
           <button type="button" class="btn btn-primary">
            <i class="fas fa-search"></i>
          </button>
        </div>
        <div>
             <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-success" PostBackUrl="~/Admin/AddProduct.aspx">Add Product</asp:LinkButton>
        </div>
    </div>

    <div class="container-fluid">
        <table class="table table-striped table-borderless">
          <thead>
            <tr>
              <th scope="col">Product ID</th>
              <th scope="col">Product Name</th>
              <th scope="col">Product Details</th>
              <th scope="col">Unit Price</th>
              <th scope="col">Category</th>
              <th scope="col">Action</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <th scope="row">1</th>
              <td> 
                  <p>
                     <asp:Image ID="Image1" runat="server" ImageUrl="~/asset/2pc_arabian_spice_crunch_coleslaw.jpg" width="50" Height="50"/>
                    <span>2pc_arabian_spice_crunch_coleslaw</span>
                  </p>
                  
              </td>
              <td>
                  <p>2 Arabian Spice Crunch,
                    1 Whipped Potato (4oz),
                    1 Coleslaw (4oz),
                    1 Coca-Cola (M).</p>
                    
              </td>
              <td>RM19.49</td>
              <td>Chicken</td>
              <td class="d-flex">
                  <asp:Button ID="Button1" runat="server" Text="Edit" class="btn btn-primary" PostBackUrl="~/Admin/UpdateProduct.aspx" />
                  <asp:Button ID="Button4" runat="server" Text="Button" class="btn btn-primary" />
                </td>
            </tr>
            <tr>
              <th scope="row">2</th>
              <td>
                  <img src="../asset/2pc_arabian_spice_crunch_coleslaw.jpg" width="50" height="50" />
                  <span>2pc_arabian_spice_crunch_coleslaw</span>
          
              </td>
              <td>
                    2 Arabian Spice Crunch,
                    1 Whipped Potato (4oz),
                    1 Coleslaw (4oz),
                    1 Coca-Cola (M).
              </td>
              <td>RM19.49</td>
              <td>Chicken</td>
              <td class="d-flex">
                  <asp:Button ID="Button2" runat="server" Text="Edit" class="btn btn-primary" PostBackUrl="~/Admin/UpdateProduct.aspx" />
                  <asp:Button ID="Button5" runat="server" Text="Button" class="btn btn-primary" />
                </td>
            </tr>
            <tr>
              <th scope="row">3</th>
              <td>
                  <img src="../asset/2pc_arabian_spice_crunch_coleslaw.jpg" width="50" height="50" />
                  <span>2pc_arabian_spice_crunch_coleslaw</span>
          
              </td>
              <td>
                    2 Arabian Spice Crunch,
                    1 Whipped Potato (4oz),
                    1 Coleslaw (4oz),
                    1 Coca-Cola (M).
              </td>
              <td>RM19.49</td>
              <td>Chicken</td>
              <td class="auto-style1 d-flex">
                  <asp:Button ID="Button3" runat="server" Text="Edit" class="btn btn-primary" PostBackUrl="~/Admin/UpdateProduct.aspx" />
                  <asp:Button ID="Button6" runat="server" Text="Button" class="btn btn-primary" />
              </td>

            </tr>
          </tbody>
        </table>
    </div>
    
</asp:Content>
