<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="boss.aspx.cs" Inherits="IWDA.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />

    <div>

     <table style="margin-right: auto; margin-left:auto; border: 5px double #231f20; background: white">
        
        <tr>
            <td colspan="2"><Strong> Welcome to the Boss Page </Strong></td>
        </tr>
        <tr style="text-align: center">
            <td>
                <asp:Label ID="message" runat="server" Text=""></asp:Label>
            </td>
        </tr>

    </table>

    </div>

    <br /><br />

    <div>
   
    <table style="margin-right: auto; margin-left:auto; border: 5px double #231f20; background: white">
        
        <tr>
            <td>
                 <img style="text-align: center; width: auto; height: auto;" src="../Images/travisJordans.png" />
            </td>
            <td>
                Exclusive Jordans Coming Soon
            </td>
        </tr>

    </table>

     </div>
    <br /><br />

</asp:Content>
