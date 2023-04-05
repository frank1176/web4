<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm9.aspx.cs" Inherits="Web_Assignment.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link id="css" href="css/MyProfile.css" type="text/css" rel="stylesheet" />

    <style type="text/css">
        
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
        .auto-style4 {
            width: 100%;
            height: 140px;
        }
        .auto-style5 {
            width: 242px;
        }
        .auto-style6 {
            text-align: center;
            height: 124px;
        }

        .auto-style8 {
            width: 95%;
            height: 229px;
        }
        .auto-style9 {
            height: 51px;
            width: 208px;
        }

        .auto-style12 {
            width: 256px;
        }
        .auto-style13 {
            text-align: center;
            width: 256px;
        }

        .auto-style15 {
            width: 208px;
        }

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
            
                        <asp:LinkButton ID="LinkButton1" class="lb lb1" runat="server">My Profile</asp:LinkButton>
                        
                </tr>
                <tr>
                    <td class="auto-style15">
            
                        <asp:LinkButton ID="LinkButton2" class="lb lb2" runat="server">Address book</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">
            
                        <asp:LinkButton ID="LinkButton3" class="lb lb3" runat="server">Order History</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">
            
                        <asp:LinkButton ID="LinkButton4" class="lb lb4" runat="server">Change password</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">
            
                        <asp:LinkButton ID="LinkButton5" class="lb lb4" runat="server" PostBackUrl="~/Admin/DashBoard.aspx">Admin</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </div>

        <div class="auto-style2">
            <table class="auto-style4">
                <tr>
                    <td colspan="2" class="title">
                        <asp:Label ID="lblTitle" class="lbl1 lblTitle" runat="server" Text="My Profile"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lblFname" class="lbl lblFname" runat="server" Text="First Name"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="lblLname" class="lbl lblLname" runat="server" Text="Last Name"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5 center" >
                        <asp:TextBox ID="txtFname" class="txt txtFname" runat="server" Height="36px" Width="205px" ForeColor="DimGray"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtLname" class="txt txtLname" runat="server" Height="35px" Width="205px" ForeColor="DimGray"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblPhone" class="lbl lblPhone"  runat="server" Text="Phone Number"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="center">
                        <asp:TextBox ID="txtPhone" class="txt txtPhone" runat="server" Height="36px" Width="460px" ForeColor="DimGray"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblEmail" class="lbl lblEmail" runat="server" Text="Email"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="center">
                        <asp:TextBox ID="txtEmail" class="txt txtEmail" runat="server" Height="36px" Width="460px" ForeColor="DimGray"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style6">
                        <asp:Button ID="btnSave" class="btn" runat="server" Text="Save" Width="294px" />
                    </td>
                </tr>
            </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        
</div >
            
     </div>
</asp:Content>
