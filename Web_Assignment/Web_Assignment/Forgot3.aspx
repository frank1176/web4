<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Forgot3.aspx.cs" Inherits="Web_Assignment.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link id="css1" href="css/Forgot.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        .auto-style3 {
            height: 68px;
        }
                .auto-style3 {
            height: 1px;
        }
        .auto-style4 {
            height: 41px;
        }
        .auto-style5 {
            height: 56px;
        }
        .auto-style6 {
            margin-top: 40px;
            width: 100%;
            height: 303px;
        }
        .auto-style7 {
            display: inline-block;
            font-weight: 600;
            line-height: 1.5;
            color: white;
            text-align: center;
            text-decoration: none;
            vertical-align: middle;
            cursor: pointer;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
            font-size: 16px;
            border-radius: 20px;
            transition: none;
            font-family: "Inria Sans";
            border-style: none;
            border-color: inherit;
            border-width: medium;
            margin-bottom: 15px;
            background-color: #ED1C24;
        }
        .auto-style8 {
            height: 107px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div>
            <table class="auto-style6">
                <tr >
                    <td class="auto-style3"><h2 class="auto-style4">Forgot Password</h2></td>
                </tr>
                <tr >
                    <td class="auto-style5">
                        <asp:Label ID="lblQ" runat="server" Text="Reset password" CssClass="lblQ"></asp:Label>
                    </td>
                </tr>
                <tr >
                    <td class="auto-style5" align="center">
                        <asp:TextBox ID="Newpassword" runat="server" placeholder="New Password" Height="41px" Width="320px" class="form-control here" ForeColor="DimGray" TextMode="Password" ></asp:TextBox><br/>
                        <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" ErrorMessage="New Password is required" Display="Dynamic" ForeColor="Red" ControlToValidate="Newpassword"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="PasswordFormat" runat="server" Display="Dynamic" ForeColor="Red" ControlToValidate="Newpassword" ErrorMessage="A password must contain at least 3 of the following: lowercase, uppercase, digits, special characters and at least 8 " ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\da-zA-Z]).{8,}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" align="center">
                        <asp:TextBox ID="CNewPassword" runat="server" placeholder="Confirm New Password" Height="41px" Width="320px" class="form-control here" ForeColor="DimGray" TextMode="Password"></asp:TextBox><br/>
                        <asp:RequiredFieldValidator ID="CNewPasswordRequired" runat="server" ErrorMessage="ConfirmNew Password is required" Display="Dynamic" ForeColor="Red" ControlToValidate="Newpassword"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="NewPassword" ControlToValidate="CNewPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match." ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Reset" CssClass="auto-style7" Height="40px" Width="302px" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        </div>
</asp:Content>
