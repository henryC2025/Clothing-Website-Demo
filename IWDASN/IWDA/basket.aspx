<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="basket.aspx.cs" Inherits="IWDA.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 
     <div align="center">
        
         <p>Items Ordered</p>
       
    </div>

     <table style="font-size: 15px; text-align:left; margin-left:auto; margin-right:auto; margin-top: auto; border:5px double #231f20; background: #ffffff">
        
        <tr>
            <td colspan="2"  style="text-align: center"> 
                <asp:Label ID="lblSummary" runat="server" CssClass="basketInfo" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2"  style="text-align: center">
                <asp:Label ID="lblTotalCost" runat="server" CssClass="otherInfo" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnClear"  style="font-size: 15px; font-family: 'Bradley Hand ITC'" runat="server" Text="Clear Basket" 
                    BorderStyle="None" OnClick="btnClear_Click" 
                    onmouseover="this.style.color='#00FF90'"
                    onmouseout="this.style.color='black'" CssClass="otherInfo" OnClientClick="return warningMessage()"/>
            </td>
            <td>
                <asp:Button ID="btnConfirm"  style="font-size: 15px; font-family: 'Bradley Hand ITC'" runat="server" Text="Confirm Order" BorderStyle="None" 
                    onmouseover="this.style.color='#00FF90'"
                    onmouseout="this.style.color='black'" OnClick="btnConfirm_Click" OnClientClick="return confirmMessage()"/>
            </td>
        </tr>
     
    </table>

    <br />

    <table style="font-size: 15px; border: none; text-align:left; margin-left:auto; margin-right:auto; margin-top: auto"/>
        
        <tr>
            <td colspan="2" style="text-align: center"> 
                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
            </td>
        </tr>

    </table>

    <br /><br />

     <table style="font-size: 15px; text-align:left; margin-left:auto; margin-right:auto; margin-top: auto; border:5px double #231f20; background: #ffffff">
        <tr>
            <td colspan="2"  style="text-align: center"><asp:Panel ID="pnlInfo" runat="server">
            </asp:Panel></td>
        </tr>

    </table>
   
  
</asp:Content>
