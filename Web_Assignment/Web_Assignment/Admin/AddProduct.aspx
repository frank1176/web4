<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Web_Assignment.Admin.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Add Product Page</h1>


    <div class="container-fluid w-50 p-3 border border-primary 
        rounded p-3 mb-2 bg-dark text-white mt-4">
        <div class="container-fluid mx-auto">
            <%-- dfdf --%>
             <p >
                <label for="Product_Name" class="form-label">Product Name:</label>
                <asp:TextBox ID="Product_Name" runat="server" class="form-control w-100" ></asp:TextBox>
            </p>
            <p>
                <label for="Product_Description" class="form-label">Product Description:</label>
                <asp:TextBox ID="Product_Description" runat="server" class="form-control w-100"></asp:TextBox>
                
            </p>
            <p>
                <label for="Product_price" class="form-label">Product price:</label>
                <asp:TextBox ID="Product_price" runat="server" class="form-control w-100" placeholder="RM0.00"></asp:TextBox>
            </p>
            <p>
                    <label for="TextBox4" class="form-label">Category:</label>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="categoriesName" DataValueField="CategoriesID">
                    <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>
            </p>
            <label for="FileUpload1" class="form-label">Upload image:</label>
            <asp:FileUpload ID="FileUpload1" runat="server" class="form-controlw-100"  />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Add Product" class="btn btn-primary" OnClick="Button1_Click" />
        </div>
       
    </div>

    <h1>Add Categories</h1>
    <div>
        <asp:TextBox ID="cat" runat="server" class="form-control w-25"></asp:TextBox>
        
        <asp:Button ID="Button2" runat="server" Text="Add Categories" class="btn btn-primary" />


        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CategoriesID" DataSourceID="SqlDataSource2" class="table table-bordered table-condensed table-responsive table-hover">
            <Columns>
                <asp:BoundField DataField="CategoriesID" HeaderText="CategoriesID" InsertVisible="False" ReadOnly="True" SortExpression="CategoriesID" />
                <asp:BoundField DataField="categoriesName" HeaderText="categoriesName" SortExpression="categoriesName" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:TemplateField HeaderText="Actions">
            <ItemTemplate>
                <asp:Button ID="btnEdit" runat="server" Text="Edit" CssClass="btn btn-primary"   />
                <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-danger" />
            </ItemTemplate>
        </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>
    </div>

</asp:Content>
