<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Web_Assignment.WebForm7" %>
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
                    <asp:TextBox ID="Gmail" class="form-control form-control-lg" runat="server" placeholder="Gmail"></asp:TextBox>
                    
                  </div>

                  

              </div>

              <div class="row">
  

                  <div class="form-outline mb-4">
                      <asp:TextBox ID="Password" class="form-control form-control-lg" runat="server" placeholder="Password"></asp:TextBox>
                  </div>


                
              </div>
                <asp:CheckBox ID="cbRmbMe" class="cbRmbMe" runat="server" Text="Remember me"  />
        <asp:LinkButton ID="lbForgotPswd" class="lbForgotPswd" runat="server" PostBackUrl="~/ForgotPassword.aspx" >Forgot Password?</asp:LinkButton>


              <div class="auto-style2 center mt-4">
                <asp:Button ID="login" class="btn btn-primary btn-lg" runat="server" Text="Login" OnClick="login_Click"/>
              </div>

            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</asp:Content>
