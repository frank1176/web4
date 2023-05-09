<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Web_Assignment.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <link id="css" href="css/register.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        .auto-style3 {
            height: 705px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<section class="auto-style3 gradient-custom">
  <div class="container py-5 h-100 ">
    <div class="row justify-content-center align-items-center h-100">
      <div class="col-12 col-lg-9 col-xl-7">
        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
          <div class="card-body p-4 p-md-5">
            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5 ">Registration a</h3>

            <form>
                <div class="row">
                    <div class="col-md-6 mb-4">
                        <div class="form-outline">
                            <asp:Label ID="lblUserName" runat="server" AssociatedControlID="txtUserName">User Name:</asp:Label>
                        <asp:TextBox ID="txtUserName" class="form-control form-control-lg" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="FirstNameRequired" runat="server" ControlToValidate="txtUserName" ErrorMessage="User name is required." ToolTip="User name is required." Display="Dynamic">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                    
                 </div>
                    


             <div class="row">
                 <div class="form-outline mb-4">
                     <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                    <asp:TextBox ID="Email" class="form-control form-control-lg" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="E-mail is required." ToolTip="E-mail is required." Display="Dynamic">*</asp:RequiredFieldValidator>
                   
                 </div>
             </div>

             <div class="row">
                 <div class="form-outline mb-4">
                     <asp:Label ID="PhoneLabel" runat="server" AssociatedControlID="Phone">Phone:</asp:Label>
                    <asp:TextBox ID="Phone" class="form-control form-control-lg" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="PhoneRequired" runat="server" ControlToValidate="Phone" ErrorMessage="Phone is required." ToolTip="Phone is required." Display="Dynamic">*</asp:RequiredFieldValidator>
                    
                     </div>
             </div>


             <div class="row">
                 <div class="form-outline mb-4">
                     <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                     <asp:TextBox ID="Password" class="form-control form-control-lg" runat="server" TextMode="Password"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." Display="Dynamic">*</asp:RequiredFieldValidator>
                </div>
             </div>


             <div class="row">
                 <div class="form-outline mb-4">
                     <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                       <asp:TextBox ID="ConfirmPassword" class="form-control form-control-lg" runat="server" TextMode="Password"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required." Display="Dynamic">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match."></asp:CompareValidator>
                 </div>
             </div>


             <div class="row">
                 <div class="form-outline mb-4">
                     <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">Security Question:</asp:Label>
                      <asp:TextBox ID="Question" class="form-control form-control-lg" runat="server"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question" ErrorMessage="Security question is required." ToolTip="Security question is required." Display="Dynamic">*</asp:RequiredFieldValidator>
                </div>
             </div>


             <div class="row">
                 <div class="form-outline mb-4">
                     <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Security Answer:</asp:Label>
                      <asp:TextBox ID="Answer" class="form-control form-control-lg" runat="server"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer" ErrorMessage="Security answer is required." ToolTip="Security answer is required." Display="Dynamic">*</asp:RequiredFieldValidator>
                </div>
             </div>


                <div class="row">
                 <div class="form-outline mb-4" align="center" colspan="2" style="color:Red;">
                     <asp:Button ID="login" class="btn btn-primary btn-lg" runat="server" Text="Login" OnClick="login_Click" />
                </div>
             </div>
                </form>
              



            
          </div>
        </div>
      </div>
    </div>
  </div>
</section>


                
                
              
            
</asp:Content>