
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
					<h5 id="Username" runat="server"></h5>
					<asp:Repeater ID="addressRepeater" runat="server" >
						<ItemTemplate>
							<div class="card mb-4">
								<div class="card-body">
									<div class="row">
										<div class="col-md-11">
											<h5 class="card-title"><%# Eval("AddressLabel") %></h5>
											<p class="card-text"><%# Eval("Address") %>, <%# Eval("City") %>, <%# Eval("State") %> <%# Eval("Postcode") %> <%# Eval("Note") %></p>
										</div>
										<div class="col-md-1">
											<div class="mb-4">
												<asp:Button ID="btnEdit" class="btn btn-primary" runat="server" Text="Edit"  PostBackUrl='<%# "~/Editaddress.aspx?addressID=" + Eval("addressID")%>'/>
											
											</div>
											<div>
											<asp:Button ID="btnDelete" class="btn btn-primary" runat="server" Text="Clear" CommandArgument='<%# Eval("addressID") %>' OnClick="btnDelete_Click"/>
											
										</div>
									</div>
									</div>
							 </div>
						</ItemTemplate>
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


