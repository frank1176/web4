
<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage1.master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Web_Assignment.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
       <div class="col-md-9">
		    <div class="card">
		        <div class="card-body">
		            <div class="row">
		                <div class="col-md-12">
		                    <h4>My Profile</h4>
		                    <hr>
		                </div>
		            </div>
		            <div class="row">
		                <div class="col-md-12">
		                    <form>
                              <div class="form-group row mb-4">
                                <label for="username" class="col-4 col-form-label">User Name*</label> 
                                <div class="col-8">
                                    <asp:TextBox ID="txtUsername" runat="server" class="form-control here"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UsernameRequired" runat="server" ErrorMessage="Username is required" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
                             
                                </div>
                              </div>
                              
       
                             
              
                             
                              <div class="form-group row mb-4">
                                <label for="email" class="col-4 col-form-label">Email*</label> 
                                <div class="col-8">
                                  <asp:TextBox ID="txtEmail" placeholder="Email" class="form-control here" runat="server"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username is required" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
                             
                                    
                                </div>
                              </div>
                              <div class="form-group row mb-4">
                                <label for="phone" class="col-4 col-form-label">Contact Number</label> 
                                <div class="col-8">
                                  <asp:TextBox ID="txtPhone" placeholder="Phone" class="form-control here" runat="server"></asp:TextBox>
                                </div>
                              </div>
                          
                            <div class="form-group row mb-4">
                                <div class="offset-4 col-8">
                                <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Update My Profile" OnClick="Button1_Click" />
                              
                            </div>
                            </div>
                                <asp:TextBox ID="txt" runat="server"></asp:TextBox>
                            </form>
		                </div>
		            </div>
		            
		        </div>
		    </div>
		</div>
</asp:Content>


