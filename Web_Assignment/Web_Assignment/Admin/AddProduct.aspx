<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Web_Assignment.Admin.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Add Product Page


    <div class="container-fluid w-75 p-3 border border-primary 
        rounded p-3 mb-2 bg-dark text-white mt-4">
        <div class="container-fluid mx-auto">
            <%-- dfdf --%>
             <p >
                <label for="Product_Name" class="form-label">Product Name:</label>
                <asp:TextBox ID="Product_Name" runat="server" class="form-control w-75" ></asp:TextBox>
            </p>
            <p>
                <label for="Product_Description" class="form-label">Product Description:</label>
                <asp:TextBox ID="Product_Description" runat="server" class="form-control w-75"></asp:TextBox>
                
            </p>
            <p>
                <label for="Product_price" class="form-label">Product price:</label>
                <asp:TextBox ID="Product_price" runat="server" class="form-control w-75" placeholder="RM0.00"></asp:TextBox>
            </p>
            <p>
                    <label for="TextBox4" class="form-label">Category:</label>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="categoriesName" DataValueField="CategoriesID">
                    <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>
            </p>
            <label for="FileUpload1" class="form-label">Upload image:</label>
            <asp:FileUpload ID="FileUpload1" runat="server" class="form-control w-75"  />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-primary" OnClick="Button1_Click" />
        </div>
       
    </div>




</asp:Content>
