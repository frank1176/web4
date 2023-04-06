<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="OrderHistory.aspx.cs" Inherits="Web_Assignment.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link id="css" href="css/MyProfile.css" type="text/css" rel="stylesheet" />
    <link href="css/Track.css" rel="stylesheet" />
    <style type="text/css">
                .auto-style7 {
    width: 18%;
    height: 38%;
    position: absolute;
    left: 190px;
    top: 55px;
}

.auto-style11 {
    width: 16%;
    height: 9%;
    position: absolute;
    left: 191px;
    top: 334px;
}
.auto-style2 {
           
            width: 507px;
    height: 541px;
    position: absolute;
    background-color: white;
    left: 425px;
    top: 29px;
        }
        .auto-style3 {
            width: 100%;
            max-width: 1320px;
            position: relative;
            left: 0px;
            top: 0px;
            height: 667px;
            margin-left: auto;
            margin-right: auto;
            padding-left: var(--bs-gutter-x, .75rem);
            padding-right: var(--bs-gutter-x, .75rem);
        }

        .auto-style8 {
            width: 95%;
            height: 229px;
        }
        .auto-style9 {
            height: 51px;
            width: 208px;
        }

        .auto-style15 {
            width: 208px;
        }
        .auto-style6 {
            text-align: center;
            height: 124px;
        }
        .lb14 {
            color: red;
        }

        .lb14:before {
            color: orange;
        }

        .auto-style18 {
            width: 91%;
        }
        
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="auto-style3">
        <div class="auto-style11">
            <asp:LinkButton ID="lbLogOut" class="lbLogOut" runat="server">Log Out</asp:LinkButton>
        </div>
        <div class="auto-style7">
            
            <table class="auto-style8">
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="lblAccount" class="lbl1 lblAccount" runat="server" Text="My account                                     "></asp:Label>
                    &nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">
            
                        <asp:LinkButton ID="LinkButton1" class="lb lb11" runat="server" PostBackUrl="~/Profile.aspx" >My Profile</asp:LinkButton>
                        
                </tr>
                <tr>
                    <td class="auto-style15">
            
                        <asp:LinkButton ID="LinkButton2" class="lb lb12" runat="server" PostBackUrl="~/Address.aspx">Address book</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">
            
                        <asp:LinkButton ID="LinkButton3" class="lb lb14" runat="server" PostBackUrl="~/OrderHistory.aspx">Order History</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">
            
                        <asp:LinkButton ID="LinkButton4" class="lb lb13" runat="server" PostBackUrl="~/Changepassword.aspx">Change password</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">
            
                        <asp:LinkButton ID="LinkButton5" class="lb lb4" runat="server" PostBackUrl="~/Admin/DashBoard.aspx">Admin</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </div>

        <div class="auto-style2 ">
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
     


    </div>
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
        <br />
        <br />
        <br />
        <br />
        
</div >
</asp:Content>
