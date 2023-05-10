<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Web_Assignment.WebForm7" %>
<%@ MasterType VirtualPath="~/Site1.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link id="css" href="css/register.css" type="text/css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <section class="auto-style3 gradient-custom">
  <div class="container py-5 h-100 ">
    <div class="row justify-content-center align-items-center h-100">
      <div class="col-12 col-lg-9 col-xl-7">
        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
          <div class="card-body p-4 p-md-5">
            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5 ">Log In </h3>
            <form>

              <div class="row">


                  <div class="form-outline mb-4">
                    <asp:TextBox ID="Email" class="form-control form-control-lg" runat="server" placeholder="Email"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ErrorMessage="Email is required" Display="Dynamic" ForeColor="Red" ControlToValidate="Email"></asp:RequiredFieldValidator>
                  </div>

                  

              </div>

              <div class="row">
  

                  <div class="form-outline mb-4">
                      <asp:TextBox ID="Password" class="form-control form-control-lg" runat="server" placeholder="Password"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ErrorMessage="Password is required" Display="Dynamic" ForeColor="Red" ControlToValidate="Password"></asp:RequiredFieldValidator>
                  </div>
                  <div class="row mb-4">
                      <asp:Label ID="Error" runat="server" Text="" ForeColor="Red" EnableViewState="True"></asp:Label>
                  </div>

                
              </div>
                   <div class="row">
                    <div class="col-md-6 mb-4">
                        <div class="form-outline">
                            <asp:CheckBox ID="cbRmbMe" class="cbRmbMe" runat="server" Text="Remember me"   />
                
                    </div>
                </div>
                    <div class="col-md-6 mb-4" align="right">
                        <div class="form-outline">
                            <a href="ForgotPassword.aspx" style="color:red" >Forgot Password?</a>
                    </div>
                </div>
                 </div>
               
        


              <div class="auto-style2 center mb-4">
                <asp:Button ID="login" class="btn btn-primary btn-lg" runat="server" Text="Login" OnClick="login_Click"/>
              </div>


            </form>
               <div class="auto-style2 center mt-4">
                    Do not have account?
                   <a href="Register.aspx" >Register</a>
              </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</asp:Content>


