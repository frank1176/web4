﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Forgot2.aspx.cs" Inherits="Web_Assignment.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <link id="css1" href="css/Forgot.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 97px;
        }
        .auto-style2 {
            height: 43px;
        }
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
                        <asp:Label ID="lblQ" runat="server" Text="Security Question" CssClass="lblQ"></asp:Label>
                    </td>
                </tr>
                <tr >
                    <td class="auto-style5">
                        &nbsp;

                        <asp:Label ID="lblSecQ" runat="server" CssClass="lblSecQ" Text="lblSecQ"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtSecAns" runat="server" placeholder="Security Answer" Height="41px" Width="320px" CssClass="txtSecAns" ForeColor="DimGray"></asp:TextBox><br/>
                         <asp:RequiredFieldValidator ID="SecAnsRequired" runat="server" ErrorMessage="Security Answer is required" Display="Dynamic" ForeColor="Red" ControlToValidate="txtSecAns"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Next" CssClass="auto-style7" Height="40px" Width="302px" OnClick="Button1_Click" />
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
