<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="Web_Assignment.Admin.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Orders

   
        <div class="input-group">
          <div class="form-outline">
            <input type="search" id="form1" class="form-control" placeholder="Search" />
            
          </div>
          <button type="button" class="btn btn-primary">
            <i class="fas fa-search"></i>
          </button>
        </div>
    
    
    <asp:GridView ID="GridView1" runat="server" class="table table-bordered table-condensed table-responsive table-hover " AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
            <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
            <asp:BoundField DataField="paymentID" HeaderText="paymentID" SortExpression="paymentID" />
            <asp:BoundField DataField="orderStatus" HeaderText="orderStatus" SortExpression="orderStatus" />
            <asp:BoundField DataField="subTotal" HeaderText="subTotal" SortExpression="subTotal" />
            <asp:BoundField DataField="orderDateTime" HeaderText="orderDateTime" SortExpression="orderDateTime" />
            <asp:BoundField DataField="DepartureDateTime" HeaderText="DepartureDateTime" SortExpression="DepartureDateTime" />
            <asp:BoundField DataField="deliveryAddress" HeaderText="deliveryAddress" SortExpression="deliveryAddress" />
            <asp:BoundField DataField="remark" HeaderText="remark" SortExpression="remark" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Order]"></asp:SqlDataSource>
</asp:Content>
