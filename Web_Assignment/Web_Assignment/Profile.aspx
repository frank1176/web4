
<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage1.master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Web_Assignment.WebForm11" %>
<%@ MasterType VirtualPath="~/NestedMasterPage1.master" %>
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
                                  <input id="username" name="username" placeholder="Username" class="form-control here" required="required" type="text">
                                </div>
                              </div>
                              
                              <div class="form-group row mb-4">
                             
                              <div class="form-group row mb-4">
                                <label for="email" class="col-4 col-form-label">Email*</label> 
                                <div class="col-8">
                                  <input id="email" name="email" placeholder="Email" class="form-control here" required="required" type="text">
                                </div>
                              </div>
                              <div class="form-group row mb-4">
                                <label for="website" class="col-4 col-form-label">Contact</label> 
                                <div class="col-8">
                                  <input id="website" name="website" placeholder="website" class="form-control here" type="text">
                                </div>
                              </div>
                          
                              <div class="form-group row mb-4">
                                <div class="offset-4 col-8">
                                  <!--<button name="submit" type="submit" class="btn btn-primary">Update My Profile</button>-->
                                </div>
                              </div>
                            </form>
		                </div>
		            </div>
		            
		        </div>
		    </div>
		</div>
</asp:Content>


