<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="accountInfo.aspx.cs" Inherits="IWDA.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-family: "bradley Hand ITC";
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css">

    <div style="text-align: center">  
        <br />
        <asp:Label ID="lblUser" style="font-size:20px" runat="server" CssClass="auto-style1"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Button ID="btnLogout" runat="server"  style="font-size: 20px" BackColor="White" BorderColor="#231f20" BorderStyle="double" BorderWidth="5px" Text="Log Out" 
         onmouseover="this.style.color='#00FF90'"
         onmouseout="this.style.color='black'" CssClass="auto-style1" OnClick="Button1_Click" />

    </div>

</asp:Content>
