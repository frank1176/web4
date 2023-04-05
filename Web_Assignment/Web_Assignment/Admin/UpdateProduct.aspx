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
                <label for="TextBox1" class="form-label">Product Title:</label>
                <asp:TextBox ID="TextBox1" runat="server" class="form-control w-75" Text="2pc_arabian_spice_crunch_coleslaw"></asp:TextBox>
            </p>
            <p>
                <label for="TextArea1" class="form-label">Product Description:</label>
                <textarea id="TextArea1" cols="20" rows="3" class="form-control w-75"" >2 Arabian Spice Crunch, 1 Whipped Potato (4oz), 1 Coleslaw (4oz), 1 Coca-Cola (M).</textarea>
            </p>
            <p>
                <label for="TextBox3" class="form-label">Product price:</label>
                <asp:TextBox ID="TextBox3" runat="server" class="form-control w-75" placeholder="RM0.00" Text="RM19.49"></asp:TextBox>
            </p>
            <p>
                    <label for="TextBox4" class="form-label">Category:</label>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Box Meals</asp:ListItem>
                    <asp:ListItem>Chicken</asp:ListItem>
                    <asp:ListItem>Burgers</asp:ListItem>
                    </asp:DropDownList>
            </p>
            <label for="FileUpload1" class="form-label">Product image:</label>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/asset/2pc_arabian_spice_crunch_coleslaw.jpg" />
            <asp:FileUpload ID="FileUpload1" runat="server" class="form-control w-75"  />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-primary" />
        </div>
       
    </div>
    


    
</asp:Content>
