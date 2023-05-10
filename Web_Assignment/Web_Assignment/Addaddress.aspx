
<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage1.master" AutoEventWireup="true" CodeBehind="Addaddress.aspx.cs" Inherits="Web_Assignment.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
       <div class="col-md-9">
		    <div class="card">
		        <div class="card-body">
		            <div class="row">
		                <div class="col-md-12">
		                    <h4>Add Address</h4>
		                    <hr>
		                </div>
		            </div>
		            <div class="row">
		                <div class="col-md-12">
		                    <form>
                              <div class="form-group row mb-4">
                                <label for="username" class="col-4 col-form-label">Label*</label> 
                                <div class="col-8">
                                    <asp:TextBox ID="txtLabel"  placeholder="Label" class="form-control here" runat="server"></asp:TextBox>
                                </div>
                              </div>
                              <div class="form-group row mb-4">
                                <label for="name" class="col-4 col-form-label">Address</label> 
                                <div class="col-8">
                                   <asp:TextBox ID="txtAddress"  placeholder="Address" class="form-control here" runat="server"></asp:TextBox>
                                </div>
                              </div>
                              <div class="form-group row mb-4">
                                <label for="lastname" class="col-4 col-form-label">City</label> 
                                <div class="col-8">
                                  <asp:TextBox ID="txtCity"  placeholder="City" class="form-control here" runat="server"></asp:TextBox>
                                </div>
                              </div>
                              <div class="form-group row mb-4">
                                <label for="text" class="col-4 col-form-label">State</label> 
                                <div class="col-8">
                                <asp:TextBox ID="txtState"  placeholder="State" class="form-control here" runat="server"></asp:TextBox>
                                </div>
                              </div>
                              <div class="form-group row mb-4">
                                <label for="select" class="col-4 col-form-label">Postcode</label> 
                                <div class="col-8">
                                  <asp:TextBox ID="txtPostcode"  placeholder="Postcode" class="form-control here" runat="server"></asp:TextBox>
                                </div>
                              </div>
                              <div class="form-group row mb-4">
                                <label for="email" class="col-4 col-form-label">Note to rider*</label> 
                                <div class="col-8">
                                   <asp:TextBox ID="txtNote"  placeholder="Note" class="form-control here" runat="server"></asp:TextBox>
                                </div>
                              </div>
                              <div class="form-group row mb-4">
                                <div class="offset-4 col-8">
                                    <asp:Button ID="Button1"  class="btn btn-primary" runat="server" Text="Add address" OnClick="Button1_Click" />
                                </div>
                              </div>
                            </form>
		                </div>
		            </div>
		            
		        </div>
		    </div>
		</div>
</asp:Content>


