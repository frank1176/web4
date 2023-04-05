<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Web_Assignment.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="auto-style16" >
    <h2 class="center" >Create an account</h2>

       
        <br />

        <div class="margin"  >
            <table class="auto-style4">
                <tr>
                    <td colspan="2" class="auto-style17 center" >
                        Please enter personal information to create your account to get more discount.</td>
                </tr>
                <tr>
                    <td class="auto-style5 center" >
                        <asp:TextBox ID="txtFname" class="txt txtFname" runat="server" Height="36px" Width="205px" ForeColor="DimGray" placeholder="First Name"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtLname" class="txt txtLname" runat="server" Height="35px" Width="205px" ForeColor="DimGray" placeholder="Last Name"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" class="center">
                        <asp:TextBox ID="txtPhone" class="txt txtPhone" runat="server" Height="36px" Width="425px" ForeColor="DimGray" placeholder="Phone"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" class="center">
                        <asp:TextBox ID="txtEmail" class="txt txtEmail" runat="server" Height="36px" Width="426px" ForeColor="DimGray" placeholder="Phone"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style6 center">
                        <asp:Button ID="btnCreate" class="btn" runat="server" Text="Create Account" Width="294px" />
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
            
        <br />
        <br />
        <br />
        <br />
        </div>
</asp:Content>
