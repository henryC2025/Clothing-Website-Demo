<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="confirmation.aspx.cs" Inherits="IWDA.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
    <br />


    <table style="font-size: 15px; text-align:left; margin-left:auto; margin-right:auto; margin-top: auto; border:5px double #231f20; background: #ffffff">

        <tr>
            <td>
                Your order has been confirmed 
            </td>
        </tr>

        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Label ID="yourOrder" runat="server" Text="Order Number:"></asp:Label>
            </td>
        </tr>

        <tr>
            <td colspan="2" style="text-align: center">
                <strong>
                <asp:Label ID="lblCode" runat="server" Text=""></asp:Label>
                </strong>
            </td>
        </tr>

        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="btnGoBack"  style="font-size: 15px; font-family: 'Bradley Hand ITC'; width: 77px;" runat="server" Text="Go Back" BorderStyle="None" 
                    onmouseover="this.style.color='#00FF90'"
                    onmouseout="this.style.color='black'" OnClick="btnGoBack_Click"/>
            </td>
        </tr> 

</asp:Content>
