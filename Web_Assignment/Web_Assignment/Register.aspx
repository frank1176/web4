<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Web_Assignment.WebForm8" %>
<%@ MasterType VirtualPath="~/Site1.Master" %>
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
            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5 ">Registration</h3>

            <form>
                <div class="row">
                        <div class="form-outline mb-4">
                            <asp:Label ID="lblUserName" runat="server" AssociatedControlID="txtUserName">User Name:</asp:Label>
                        <asp:TextBox ID="txtUserName" class="form-control form-control-lg" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="FirstNameRequired" runat="server" ControlToValidate="txtUserName" ErrorMessage="User name is required." ToolTip="User name is required." Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                    

                    


             <div class="row">
                 <div class="form-outline mb-4">
                     <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                    <asp:TextBox ID="Email" class="form-control form-control-lg" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="E-mail is required." ToolTip="E-mail is required." Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="EmailFormat" runat="server" ErrorMessage="Please enter valid email" ControlToValidate="Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                 </div>
             </div>

             <div class="row">
                 <div class="form-outline mb-4">
                     <asp:Label ID="PhoneLabel" runat="server" AssociatedControlID="Phone">Phone:</asp:Label>
                    <asp:TextBox ID="Phone" class="form-control form-control-lg" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="PhoneRequired" runat="server" ControlToValidate="Phone" ErrorMessage="Phone is required." ToolTip="Phone is required." Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="PhoneFormat" runat="server" ControlToValidate="Phone" Font-Overline="False" ValidationExpression="^(?:\+?6?01)[0-46-9]-*[0-9]{7,8}$" Display="Dynamic" ErrorMessage="Please enter valid phone number" ForeColor="Red"></asp:RegularExpressionValidator>
                     </div>
             </div>


             <div class="row">
                 <div class="form-outline mb-4">
                     <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                     <asp:TextBox ID="Password" class="form-control form-control-lg" runat="server" TextMode="Password"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="PasswordFormat" runat="server" Display="Dynamic" ForeColor="Red" ControlToValidate="Password" ErrorMessage="A password must contain at least 3 of the following: lowercase, uppercase, digits, special characters and at least 8 " ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\da-zA-Z]).{8,}$"></asp:RegularExpressionValidator>
                </div>
             </div>


             <div class="row">
                 <div class="form-outline mb-4">
                     <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                       <asp:TextBox ID="ConfirmPassword" class="form-control form-control-lg" runat="server" TextMode="Password"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required." Display="Dynamic"  ForeColor="Red"></asp:RequiredFieldValidator>

                        <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match." ForeColor="Red"></asp:CompareValidator>
                 </div>
             </div>


             <div class="row">
                 <div class="form-outline">
                     <asp:Label ID="labelquestion" runat="server" AssociatedControlID="DropDownList1">Security Question:</asp:Label>
                </div>
             </div>
             <div class="row">
                 <div class="form-outline mb-4">
                     <asp:DropDownList  ID="DropDownList1" class="form-control form-control-lg" runat="server">
                          <asp:ListItem Selected="True">What is your mother&#39;s maiden name?</asp:ListItem>
                         <asp:ListItem>In what city or town was your first job?</asp:ListItem>
                         <asp:ListItem>What is the name of your favorite childhood friend?</asp:ListItem>
                     </asp:DropDownList>

                </div>
             </div>


             <div class="row">
                 <div class="form-outline mb-4">
                     <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Security Answer:</asp:Label>
                      <asp:TextBox ID="Answer" class="form-control form-control-lg" runat="server"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer" ErrorMessage="Security answer is required." ToolTip="Security answer is required." Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
             </div>

                <div class="row">
                 <div class="form-outline mb-4" align="center" colspan="2" style="color:Red;">
                     <asp:Button ID="btnRegister" class="btn btn-primary btn-lg" runat="server" Text="Register" OnClick="Register_Click" />
                </div>
              
                                 </div>
                </form>
               <div class="row">
                <div class="form-outline mb-4" align="center" ">
                    Already have account.
                   <a href="Login.aspx" >Login</a>
              </div>
             </div>
              



            
          </div>
        </div>
      </div>
    </div>
  </div>
</section>


                
                
              
            
</asp:Content>