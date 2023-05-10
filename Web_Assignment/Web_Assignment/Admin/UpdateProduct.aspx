<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="UpdateProduct.aspx.cs" Inherits="Web_Assignment.Admin.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
       
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Update Product<br />


    <div class="container-fluid w-75 p-3 border border-primary 
        rounded p-3 mb-2 bg-dark text-white mt-4">
        <div class="container-fluid mx-auto">
             <p >
                <label for="ProductName" class="form-label">Product Name:</label>
                <asp:TextBox ID="ProductName" runat="server" class="form-control w-75" ></asp:TextBox>
            </p>
            <p>
                <label for="ProductDesc" class="form-label">Product Description:</label>
                <asp:TextBox ID="ProductDesc" runat="server" class="form-control w-75"></asp:TextBox>
              
            </p>
            <p>
                <label for="ProductPrice" class="form-label">Product price:</label>
                <asp:TextBox ID="ProductPrice" runat="server" class="form-control w-75" placeholder="RM0.00"></asp:TextBox>
            </p>
            <p>
                    <label for="DropDownList1" class="form-label">Category:</label>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="categoriesName" DataValueField="CategoriesID">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>
            </p>
            <label for="FileUpload1" class="form-label">Product image:</label>
            <asp:Image ID="ProductImage" runat="server"  Width="300px" Height="200px"/>
            <asp:FileUpload ID="FileUpload1" runat="server" class="form-control w-75"  />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Update" class="btn btn-primary" OnClick="Button1_Click" />
        </div>
       
    </div>
    


    
</asp:Content>
