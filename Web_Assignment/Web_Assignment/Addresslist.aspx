<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage1.master" AutoEventWireup="true" CodeBehind="Addresslist.aspx.cs" Inherits="Web_Assignment.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
       <div class="col-md-9">
		    <div class="card">
		        <div class="card-body">
		            <div class="row">
		                <div class="col-md-12">
		                    <h4>My saved places</h4>
		                    <hr>
		                </div>

					</div>
					<asp:Repeater ID="Repeater1" runat="server">
						<itemTemplate>
							<div class="card mb-4">
							<div class="card-body">
								<div class="row">
								  <div class="col-md-11">
									  <h5 class="card-title"><%# Eval("addressName") %></h5>
									  <p class="card-text"><%# Eval("Unit") %>, <%# Eval("Address") %>, <%# Eval("City") %> <%# Eval("Postcode") %> <%# Eval ("State") %> <%# Eval ("Note") %></p>
								  </div>
									<div class="col-md-1">
										<a href="EditAddress.aspx" class="btn btn-primary">Edit</a>
									</div>
								</div>
								
							</div>

						</itemTemplate>
					</asp:Repeater>
					</div>
						<div class="card mb-4">
							<div class="card-body">
								<div class="row">
								  <div class="col-md-11">
									  <h5 class="card-title">Add new address</h5>
								  </div>
									<div class="col-md-1">
										<a href="Addaddress.aspx" class="btn btn-primary">Add</a>
									</div>
								</div>
								
							</div>
					</div>

				</div>
			</div>

</asp:Content>


