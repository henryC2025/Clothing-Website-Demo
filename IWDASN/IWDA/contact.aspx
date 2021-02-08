<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="IWDA.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <link rel="stylesheet" type="text/css" href="StyleSheet.css">
    
    <p style="text-align: center;">
        Contact Us 
    </p>

    <table style="margin-left:auto; margin-right:auto; margin-top: auto; border:none; background: #ffffff">
      
        <tr>
            <td>
                Please Contact Us If You Have Any Issues 
            </td>
        </tr>
         <tr>
            <td>
                Using The Details Below
            </td>
        </tr>

    </table>

    <br />

    <table style="margin-left:auto; margin-right:auto; margin-top: auto; border:5px double #231f20; background: #ffffff">
      
        <tr>
            <td>101 Green Street</td>
        </tr>

        <tr>
            <td>Apple Town</td>
        </tr>

        <tr>
            <td>KP64 6GM</td>
        </tr>

        <tr>
            <td>095237920451</td>
        </tr>

        <tr>
            <td><asp:HyperLink ID="hypEmail" runat="server" style="text-decoration: none;"  NavigateUrl="https://www.youtube.com/watch?v=dQw4w9WgXcQ">wata777@msn.com </asp:HyperLink>
            </td>
        </tr>

    </table>
   
      
</asp:Content>
