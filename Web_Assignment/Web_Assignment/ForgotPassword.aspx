﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Web_Assignment.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link id="css1" href="css/Forgot.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
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
                        <asp:Label ID="Label1" runat="server" Text="Please enter your email address."></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" align="center">
                        <asp:TextBox ID="txtEmail" class="form-control here" runat="server" placeholder="Email" ForeColor="DimGray" Height="41px" Width="320px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="EmailFormat" runat="server" ErrorMessage="Please enter valid email" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Send" class="btn btn-primary" Height="40px" Width="302px"  OnClick="Button1_Click" />
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
