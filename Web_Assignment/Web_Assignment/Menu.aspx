<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Web_Assignment.WebForm2" %>
<%@ MasterType VirtualPath="~/Site1.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Menu</title>
    <link href="css/Menu.css" rel="stylesheet" />
    
   <!-- <style>
.menu_class2 {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
}

.menu_class2 .card {
    width: calc(25% - 15px); /* 4 cards per row with 15px gap */
    margin-bottom: 30px;
}
@media (max-width: 992px) {
    .menu_class2 .card {
        width: calc(33.33% - 15px); /* 3 cards per row with 15px gap */
    }
}

@media (max-width: 768px) {
    .menu_class2 .card {
        width: calc(50% - 15px); /* 2 cards per row with 15px gap */
    }
}

@media (max-width: 576px) {
    .menu_class2 .card {
        width: 100%; /* 1 card per row with no gap */
    }
}
</style> -->
     <style>
      /* target the menu items */
      .menu-item {
        width: 25%; /* set the width to 25% to display 4 items in a row */
        box-sizing: border-box; /* include padding and border in the width calculation */
        float: left; /* float the items left to align them in a row */
        padding: 10px; /* add some padding to separate the items */
      }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <div class="menu_class">
      <h2>FAMILY BUCKETS</h2>

       <a href="#" class="nav-link">view all</a>
    </div>

        <div style="display: flex; flex-wrap: wrap;" class="card-deck d-flex flex-column flex-sm-row justify-content-between container-fluid menu_class2">
            <asp:Repeater ID="cartRepeater" runat="server">
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                    <div class="card" style="width: 18rem; display: flex; flex-direction: column;">
                        <img src="asset/<%# Eval("product_image") %>" class="card-img-top" alt="...">
                        <div class="card-body" style="display: flex; flex-direction: column; justify-content: space-between;">
                            <h5 class="card-title"><%# Eval("ProductName") %></h5>
                            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl='<%# "~/Product.aspx?ProductID=" + Eval("ProductID") %>' CssClass="btn btn-danger">More details</asp:LinkButton>
                        </div>
                    </div>
                </ItemTemplate>
                <FooterTemplate></FooterTemplate>
            </asp:Repeater>
        </div>


    <!--FAMILY BUCKETS-->
            <div class="menu_class">
      <h2>BOX MEALS</h2>

       <a href="#" class="nav-link">view all</a>
    </div>

        <div style="display: flex; flex-wrap: wrap;" class="card-deck d-flex flex-column flex-sm-row justify-content-between container-fluid menu_class2">
            <asp:Repeater ID="Repeater2" runat="server">
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                    <div class="card" style="width: 18rem; display: flex; flex-direction: column;">
                        <img src="asset/<%# Eval("product_image") %>" class="card-img-top" alt="...">
                        <div class="card-body" style="display: flex; flex-direction: column; justify-content: space-between;">
                            <h5 class="card-title"><%# Eval("ProductName") %></h5>
                            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl='<%# "~/Product.aspx?ProductID=" + Eval("ProductID") %>' CssClass="btn btn-danger">More details</asp:LinkButton>
                        </div>
                    </div>
                </ItemTemplate>
                <FooterTemplate></FooterTemplate>
            </asp:Repeater>
        </div>


    <!--BOX MEALS-->

           <div class="menu_class">
      <h2>CHICKEN</h2>

       <a href="#" class="nav-link">view all</a>
    </div>

    <div style="display: flex; flex-wrap: wrap;" class="card-deck d-flex flex-column flex-sm-row justify-content-between container-fluid menu_class2">
            <asp:Repeater ID="Repeater3" runat="server">
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                    <div class="card" style="width: 18rem; display: flex; flex-direction: column;">
                        <img src="asset/<%# Eval("product_image") %>" class="card-img-top" alt="...">
                        <div class="card-body" style="display: flex; flex-direction: column; justify-content: space-between;">
                            <h5 class="card-title"><%# Eval("ProductName") %></h5>
                            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl='<%# "~/Product.aspx?ProductID=" + Eval("ProductID") %>' CssClass="btn btn-danger">More details</asp:LinkButton>
                        </div>
                    </div>
                </ItemTemplate>
                <FooterTemplate></FooterTemplate>
            </asp:Repeater>
        </div>

    

    <!--CHICKEN-->
            <div class="menu_class">
      <h2>BEVERAGES</h2>

       <a href="#" class="nav-link">view all</a>
    </div>

    <div style="display: flex; flex-wrap: wrap;" class="card-deck d-flex flex-column flex-sm-row justify-content-between container-fluid menu_class2">
            <asp:Repeater ID="Repeater4" runat="server">
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                    <div class="card" style="width: 18rem; display: flex; flex-direction: column; ">
                        <img src="asset/<%# Eval("product_image") %>" class="card-img-top" alt="...">
                        <div class="card-body" style="display: flex; flex-direction: column; justify-content: space-between;">
                            <h5 class="card-title"><%# Eval("ProductName") %></h5>
                            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl='<%# "~/Product.aspx?ProductID=" + Eval("ProductID") %>' CssClass="btn btn-danger">More details</asp:LinkButton>
                        </div>
                    </div>
                </ItemTemplate>
                <FooterTemplate></FooterTemplate>
            </asp:Repeater>
        </div>

    <div class="card-deck d-flex flex-column flex-sm-row container-fluid menu_class2 ">

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



    </div>

    
</asp:Content>
