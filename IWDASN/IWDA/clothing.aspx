<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="clothing.aspx.cs" Inherits="IWDA.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css">
    
    <div style="text-align: center; font-family: 'Bradley Hand ITC'">

        <strong>

            <asp:LoginStatus ID="LoginStatus1"  style="text-decoration: none" runat="server" />

        </strong>

    </div>

    <p style="text-align: center;">
        Check Out the Latest WATA Merch Below
    </p>

    <table style="margin-right: auto; margin-left:auto; border: 5px double #231f20 ; background: white; width: 50%">
        <tr><td colspan="4">
            <asp:LinkButton ID="lnkBasket" runat="server" OnClick="lnkBasket_Click">Basket Items</asp:LinkButton>
            </td></tr>
        <tr><td colspan="4"><Strong>TOPS</Strong></td></tr>
        <tr>
            <td>
                 <img style="text-align: center; width: 200px; height: 250px;" src="Images/hoody.png" />
            </td>
            <td style="font-size: 15px">
                <strong style="font-size: 20px">Classic Black Hoody</strong><br /><br />
                100% Cotton<br />
                £150<br /><br />
                Size <asp:DropDownList ID="ddlBsize" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>XS</asp:ListItem>
                        <asp:ListItem>S</asp:ListItem>
                        <asp:ListItem>M</asp:ListItem>
                        <asp:ListItem>L</asp:ListItem>
                        <asp:ListItem>XL</asp:ListItem>
                     </asp:DropDownList> 

                <br />
                <asp:RequiredFieldValidator ID="rfvBlackHoody" runat="server" ErrorMessage="Select a size" ControlToValidate="ddlBsize" ForeColor="Red" ValidationGroup="blackHoody"></asp:RequiredFieldValidator>
                <br /><br />

                <asp:Button ID="btnBlackHoody" ValidationGroup="blackHoody" style="font-size: 15px; font-family: 'Bradley Hand ITC'" runat="server" Text="Add to Basket" BorderStyle="None" 
                    onmouseover="this.style.color='#00FF90'"
                    onmouseout="this.style.color='black'" OnClick="btnBlackHoody_Click"/>

            </td>
        
        
            <td>
                 <img style="text-align: center; width: 200px; height: 200px;" src="Images/whiteHoodie.png" />
            </td>
            <td style="font-size: 15px">
                <strong style="font-size: 20px">Classic White Hoody</strong><br /><br />
                100% Cotton<br />
                £150<br /><br />
                Size <asp:DropDownList ID="ddlWsize" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>XS</asp:ListItem>
                        <asp:ListItem>S</asp:ListItem>
                        <asp:ListItem>M</asp:ListItem>
                        <asp:ListItem>L</asp:ListItem>
                        <asp:ListItem>XL</asp:ListItem>
                     </asp:DropDownList> 

                <br />
                <asp:RequiredFieldValidator ID="rfvWhiteHoody" runat="server" ErrorMessage="Select a size" ControlToValidate="ddlWsize" ForeColor="Red" ValidationGroup="whiteHoody"></asp:RequiredFieldValidator>
                <br /><br />

                <asp:Button ID="btnWhiteHoody" ValidationGroup="whiteHoody" style="font-size: 15px; font-family: 'Bradley Hand ITC'" runat="server" Text="Add to Basket" BorderStyle="None" 
                    onmouseover="this.style.color='#00FF90'"
                    onmouseout="this.style.color='black'" OnClick="Button1_Click"/>
            </td>
        </tr>
    </table>
    <br />
    <br />
    
    <table style="margin-right: auto; margin-left:auto; border: 5px double #231f20; background: white; width: 50%">
        
        <tr><td colspan="4"><Strong>BOTTOMS</Strong></td></tr>
        <tr>
            <td>
                 <img style="text-align: center; width: 200px; height: 300px;" src="Images/blueJeans.png" />
            </td>
            <td style="font-size: 15px">
                <strong style="font-size: 20px">Classic Blue Jeans</strong><br /><br />
                100% Cotton<br />
                £100<br /><br />
                Size <asp:DropDownList ID="ddlBjeansSize" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>S</asp:ListItem>
                        <asp:ListItem>M</asp:ListItem>
                        <asp:ListItem>L</asp:ListItem>
                     </asp:DropDownList> 
            
                <br />
                <asp:RequiredFieldValidator ID="rfvBlueJeans" runat="server" ErrorMessage="Select a size" ControlToValidate="ddlBjeansSize" ForeColor="Red" ValidationGroup="blueJeans"></asp:RequiredFieldValidator>
                <br /><br />

                <asp:Button ID="btnBlueJeans" ValidationGroup="blueJeans" style="font-size: 15px; font-family: 'Bradley Hand ITC'" runat="server" Text="Add to Basket" BorderStyle="None" 
                    onmouseover="this.style.color='#00FF90'"
                    onmouseout="this.style.color='black'" OnClick="btnBlueJeans_Click"/>
            </td>
        
        
            <td>
                 <img style="text-align: center; width: 250px; height: 350px;" src="Images/greyJeans.png" />
            </td>
            <td style="font-size: 15px">
                <strong style="font-size: 20px">Classic Grey Jeans</strong><br /><br />
                100% Cotton<br />
                £100<br /><br />
                Size <asp:DropDownList ID="ddlGjeansSize" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>S</asp:ListItem>
                        <asp:ListItem>M</asp:ListItem>
                        <asp:ListItem>L</asp:ListItem>
                     </asp:DropDownList> 
         
                <br />
                <asp:RequiredFieldValidator ID="rfvGreyJeans" runat="server" ErrorMessage="Select a size" ControlToValidate="ddlGjeansSize" ForeColor="Red" ValidationGroup="greyJeans"></asp:RequiredFieldValidator>
                <br /><br />

                <asp:Button ID="btnGjeans" ValidationGroup="greyJeans" style="font-size: 15px; font-family: 'Bradley Hand ITC'" runat="server" Text="Add to Basket" BorderStyle="None" 
                    onmouseover="this.style.color='#00FF90'"
                    onmouseout="this.style.color='black'" OnClick="btnGjeans_Click"/>
            
      
        </table>
        <br />
        <br />
        

         <table style="margin-right: auto; margin-left:auto; border: 5px double #231f20; background: white; width: 50%">
        
        <tr><td colspan="2"><Strong>LIMITED ITEMS</Strong></td></tr>
        <tr>
            <td>
            
                 <img style="text-align: center; width: 350px; height: 300px;" src="Images/flyShoe.png" />
            </td>
            <td style="font-size: 15px">
                <strong style="font-size: 20px">Limited Edition Flyers</strong><br /><br />
                Authentic<br />
                £1500<br /><br />
                Size <asp:DropDownList ID="ddlFlyersSize" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                     </asp:DropDownList> 
                
                <br />
                <asp:RequiredFieldValidator ID="rfvFlyer" runat="server" ErrorMessage="Select a size" ControlToValidate="ddlFlyersSize" ForeColor="Red" ValidationGroup="flyer"></asp:RequiredFieldValidator>
                <br /><br />

                <asp:Button ID="btnFlyer"  ValidationGroup="flyer" style="font-size: 15px; font-family: 'Bradley Hand ITC'" runat="server" Text="Add to Basket" BorderStyle="None" 
                    onmouseover="this.style.color='#00FF90'"
                    onmouseout="this.style.color='black'" OnClick="btnFlyer_Click"/>
            
      
        </table>
        <br />
        <br />
</asp:Content>
