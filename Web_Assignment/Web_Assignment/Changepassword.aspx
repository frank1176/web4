<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage1.master" AutoEventWireup="true" CodeBehind="Changepassword.aspx.cs" Inherits="Web_Assignment.WebForm9" %>
<%@ MasterType VirtualPath="~/NestedMasterPage1.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <div class="col-md-9">
		    <div class="card">
		        <div class="card-body">
		            <div class="row">
		                <div class="col-md-12">
		                    <h4>Change Password</h4>
		                    <hr>
		                </div>
		            </div>
		            <div class="row">
		                <div class="col-md-12">
		                    <form>
                              <div class="form-group row mb-4">
                                <label for="username" class="col-4 col-form-label">Current Password</label> 
                                <div class="col-8">
                                  <asp:TextBox ID="Password" class="form-control form-control-lg" runat="server" placeholder="Current Password"  TextMode="Password"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ErrorMessage="Password is required" Display="Dynamic" ForeColor="Red" ControlToValidate="Password"></asp:RequiredFieldValidator>
                                
                                </div>
                              </div>
                              <div class="form-group row mb-4">
                                <label for="name" class="col-4 col-form-label">New Password</label> 
                                <div class="col-8">
                                  <asp:TextBox ID="NewPassword" class="form-control form-control-lg" runat="server" placeholder="New Password"  TextMode="Password" ></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" ErrorMessage="New Password is required" Display="Dynamic" ForeColor="Red" ControlToValidate="NewPassword"></asp:RequiredFieldValidator>
                                  <asp:RegularExpressionValidator ID="PasswordFormat" runat="server" Display="Dynamic" ForeColor="Red" ControlToValidate="NewPassword" ErrorMessage="A password must contain at least 3 of the following: lowercase, uppercase, digits, special characters and at least 8 " ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\da-zA-Z]).{8,}$"></asp:RegularExpressionValidator>
                                </div>
                              </div>
                              <div class="form-group row mb-4">
                                <label for="name" class="col-4 col-form-label">Confirm New Password</label> 
                                <div class="col-8">
                                  <asp:TextBox ID="CNewPassword" class="form-control form-control-lg" runat="server" placeholder="Confirm New Password"  TextMode="Password" ></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="CNewPasswordRequired" runat="server" ErrorMessage="ConfirmNew Password is required" Display="Dynamic" ForeColor="Red" ControlToValidate="NewPassword"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="NewPassword" ControlToValidate="CNewPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match." ForeColor="Red"></asp:CompareValidator>
                                </div>
                              </div>

                              <div class="form-group row mb-4">
                                <div class="offset-4 col-8">
                                    <asp:Button ID="Button1"  class="btn btn-primary" runat="server" Text="Change Password" OnClick="Button1_Click" />
                                </div>
                              </div>
                            </form>
		                </div>
		            </div>
		            
		        </div>
		    </div>
		</div>
</asp:Content>


