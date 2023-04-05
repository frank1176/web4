<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Address.aspx.cs" Inherits="Web_Assignment.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <link id="css" href="css/MyProfile.css" type="text/css" rel="stylesheet" />
        <link id="css1" href="css/Address.css" type="text/css" rel="stylesheet" />
       <style type="text/css">
                .auto-style7 {
    width: 18%;
    height: 38%;
    position: relative;
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
        .auto-style16 {
               height: 38px;
        }
        .auto-style6 {
            text-align: center;
            height: 124px;
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
            
                        <asp:LinkButton ID="LinkButton1" class="lb lb11" runat="server" OnClick="LinkButton1_Click">My Profile</asp:LinkButton>
                        
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
            <table style="width:100%;">
                <tr>
                    <td colspan="2" class="title ">
                        <asp:Label ID="lblAddressBook"  runat="server" Text="Address Book" CssClass="lbl1 lblTitle"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" >
                        <asp:Label ID="lblName" runat="server" Text="Name" CssClass="lbl lblName"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="center" >
                        <asp:TextBox ID="txtName" runat="server" CssClass="txt" Height="36px" Width="460px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblAddress" runat="server" Text="Address" CssClass="lbl"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="center">
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="txt" Height="36px" Width="460px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblCity" runat="server" Text="City" CssClass="lbl" ></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Postcode" runat="server" Text="Postcode" CssClass="lbl"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="center">
                        <asp:TextBox ID="txtCity" runat="server" CssClass="txt" Height="36px" Width="205px"></asp:TextBox>
                    </td>
                    <td class="center">
                        <asp:TextBox ID="txtPostcode" runat="server" CssClass="txt" Height="36px" Width="205px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblNote" runat="server" Text="Note to rider" CssClass="lbl" ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="center">
                        <asp:TextBox ID="txtNote" runat="server" CssClass="txt" Height="36px" Width="460px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style6">
            <asp:Button ID="btnSave" runat="server" Text="Save Address" CssClass="btn" />
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
