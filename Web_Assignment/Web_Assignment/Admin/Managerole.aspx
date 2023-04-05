<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="Managerole.aspx.cs" Inherits="Web_Assignment.Admin.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Manage Role

    <div class="container-fluid w-75 p-3 border border-primary 
        rounded p-3 mb-2 bg-dark text-white mt-4">

        <div class="create_role">
           
            Create Role:<br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button3" runat="server" Text="Button" />
           
        </div>
        
        <div class="Assign_role">
             Assign Role:<br />
             User :<asp:DropDownList ID="DropDownList1" runat="server">
                 <asp:ListItem>UserName</asp:ListItem>
             </asp:DropDownList>
             Role :<asp:DropDownList ID="DropDownList2" runat="server">
                 <asp:ListItem>Admin</asp:ListItem>
                 <asp:ListItem>Staff</asp:ListItem>
                 <asp:ListItem>User</asp:ListItem>
             </asp:DropDownList>

             <asp:Button ID="Button2" runat="server" Text="Assign" />
        </div>
    </div>

    </asp:Content>
