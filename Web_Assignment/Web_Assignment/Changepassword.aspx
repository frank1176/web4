<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Changepassword.aspx.cs" Inherits="Web_Assignment.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <link id="css" href="css/MyProfile.css" type="text/css" rel="stylesheet" />
        <link id="css1" href="css/changepassword.css" type="text/css" rel="stylesheet" />
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
            
                        <asp:LinkButton ID="LinkButton1" class="lb lb11" runat="server" >My Profile</asp:LinkButton>
                        
                </tr>
                <tr>
                    <td class="auto-style15">
            
                        <asp:LinkButton ID="LinkButton2" class="lb lb12" runat="server">Address book</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">
            
                        <asp:LinkButton ID="LinkButton3" class="lb lb13" runat="server">Order History</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">
            
                        <asp:LinkButton ID="LinkButton4" class="lb lb14" runat="server">Change password</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </div>

        <div class="auto-style2 ">
            <table class="auto-style18">
                <tr>
                    <td class="title ">
                        <asp:Label ID="lblAddressBook"  runat="server" Text="Change Password" CssClass="lbl1 lblTitle"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td >
                        <asp:Label ID="lblCum" runat="server" Text="Current Password" CssClass="lbl "></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="center" >
                        <asp:TextBox ID="txtCur" runat="server" CssClass="txtC" Height="36px" Width="420px" ForeColor="DimGray"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblNew" runat="server" Text="New Password" CssClass="lbl"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="center">
                        <asp:TextBox ID="txtNew" runat="server" CssClass="txtC" Height="36px" Width="420px" ForeColor="DimGray"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl" runat="server" Text="Comfirm new password" CssClass="lbl" ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="center">
                        <asp:TextBox ID="txtCom" runat="server" CssClass=" txtC" Height="36px" Width="420px" ForeColor="DimGray"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
            <asp:Button ID="btnChange" runat="server" Text="Change Password" CssClass="btn" />
                    </td>
                </tr>
            </table>
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
