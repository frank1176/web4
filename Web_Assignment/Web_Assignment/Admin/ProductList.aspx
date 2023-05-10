<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="Web_Assignment.Admin.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
   Product List<br>
   
    
    
    <div class="input-group ">
          <div class="form-outline">
           
          </div>
         
          
        
     </div>
    
   
    <div class="d-flex justify-content-between">
        <div>
            <input type="search" id="form1" class="form-control" placeholder="Search" /> 
           <button type="button" class="btn btn-primary">
            <i class="fas fa-search"></i>
          </button>
        </div>
        <div>
             <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-success" PostBackUrl="~/Admin/AddProduct.aspx">Add Product</asp:LinkButton>
        </div>
    </div>

   <div class="container-fluid table-responsive">
        
   
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="table table-bordered table-condensed table-responsive table-hover " DataKeyNames="ProductID" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="categoriesName" HeaderText="categoriesName" SortExpression="categoriesName" />
            <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
            <asp:TemplateField HeaderText="Product Image">
            <ItemTemplate>
                <img src= "../asset/<%# Eval("product_image") %>" width="200" height="100" class="img-fluid rounded mx-auto d-block"/>
            </ItemTemplate>
        </asp:TemplateField>
          <asp:TemplateField HeaderText="Actions">
            <ItemTemplate>
                <asp:Button ID="btnEdit" runat="server" Text="Edit" CssClass="btn btn-primary"  CommandArgument='<%# Eval("ProductID") %>'  OnClick="btnEdit_Click" />
                <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-danger" CommandArgument='<%# Eval("ProductID") %>' OnClick="btnDelete_Click"/>
            </ItemTemplate>
        </asp:TemplateField>
        </Columns>
    </asp:GridView>
   </div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Product.ProductID, Product.ProductName, Product.Description, Categories.categoriesName, Product.UnitPrice, Product.product_image FROM Product INNER JOIN Categories ON Product.CategoriesID = Categories.CategoriesID"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>


  
    </asp:Content>
