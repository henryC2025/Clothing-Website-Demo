<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="account.aspx.cs" Inherits="IWDA.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link rel="stylesheet" type="text/css" href="StyleSheet.css">

    <div style="text-align: center">
        <p> Account </p>

        <table style="margin-left: auto; margin-right: auto;">

        <tr> 
            <td>
                <asp:Label ID="lblUsername" runat="server" CssClass="auto-style12" ForeColor="#00FF90" Text="Username" Font-Size="20px"></asp:Label>
            </td>
            <td> 
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
      
        <tr>
            <td>
                <asp:Label ID="lblPassword" runat="server" CssClass="auto-style12" ForeColor="#00FF90" Text="Password"></asp:Label>
            </td>

            <td>
                <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td colspan="2">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember Me" Font-Size="20px" />    
            </td>
        </tr>

        <tr>
           <td colspan="2">
               <asp:Button ID="btnReset" runat="server" BackColor="White" BorderColor="#00FF90" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style1" Text="Reset" 
                    onmouseover="this.style.color='#00FF90'"
                    onmouseout="this.style.color='black'" OnClick="btnReset_Click" Font-Size="20px" style="font-family: 'bradley Hand ITC'"
                    />
                <asp:Button ID="btnLogin" runat="server" BackColor="White" BorderColor="#00FF90" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style1" Text="Login" 
                    onmouseover="this.style.color='#00FF90'"
                    onmouseout="this.style.color='black'" OnClick="btnLogin_Click" Font-Size="20px" style="font-family: 'bradley Hand ITC'" />
               </td>
         </tr>

         <tr>
            <td colspan="2">
               <asp:Label ID="lblMessage" style="color: red" runat="server" Text=""></asp:Label>
            </td>
         </tr>

        
    </table>
    </div>
        
</asp:Content>
