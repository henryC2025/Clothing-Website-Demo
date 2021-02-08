<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostback="true"  MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="members.aspx.cs" Inherits="IWDA.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />

    <div>

     <table style="margin-right: auto; margin-left:auto; border: 5px double #231f20; background: white">
        
        <tr><td colspan="2"> Welcome to the Members Page</td></tr>
        <tr><td colspan="2">Exclusive News About Our Products</td></tr>
        <tr><td colspan="2">Will Be Released Here</td></tr>
        <tr></tr>
        <tr><td colspan="2"><Strong>*More Information Will Be Releasing Soon *</Strong></td></tr>
   
     </table>
    
     </div>

     <br />
   
     <table style="margin-right: auto; margin-left:auto; border: 5px double #231f20; background: white">
        
        <tr>
             <td colspan="2">
                New Stock Coming Soon
            </td>
        </tr>

        <tr>
            <td>
                 <img style="text-align: center; width: 300px; height: 300px;" src="../Images/xoJumper.png" />
            </td>
            <td>
                 <img style="text-align: center; width: 300px; height: 300px;" src="../Images/bartJumper.png" />
            </td>
        </tr>
        <tr>
            <td>
                 <img style="text-align: center; width: 300px; height: 300px;" src="../Images/camoTrousers.png" />
            </td>
            <td>
                 <img style="text-align: center; width: 200px; height: 200px;" src="../Images/cargoTrousers.png" />
            </td>
        </tr>
         <tr>
            <td>
                 <img style="text-align: center; width: 300px; height: 300px;" src="../Images/hyperDunk.png" />
            </td>
            <td>
                 <img style="text-align: center; width: 300px; height: 300px;" src="../Images/nmdRed.png" />
            </td>
        </tr>

    </table>

    <br /><br />


     <table style="margin-right: auto; margin-left:auto; border: 5px double #231f20; background: white">
        
        <tr><td colspan="2"> Chat With Other Members Here</td></tr>
   
     </table>

    <br /><br />

    <div style="text-align: center" >

        <asp:TextBox ID="txtOutput" runat="server" style="border: 5px double #231f20; background: white" Height="300px" Width="1000px" CssClass="auto-style1" ReadOnly="True" TextMode="MultiLine" ></asp:TextBox>
       
    </div>

    <br /><br />

     <table style="margin-right: auto; margin-left:auto; border: 5px double #231f20; background: white">
        
        <tr><td colspan="2"> Type Your Message Here</td></tr>
   
     </table>

    <br />

    <div style="text-align: center" >

         <asp:TextBox ID="txtInput" runat="server" style="border: 5px double #231f20; background: white" Width="500px" CssClass="auto-style2"></asp:TextBox>

    </div>
    <br />
    
    <div style="text-align: center">

            <asp:Button ID="btnClear" runat="server" BackColor="White" BorderColor="#00FF90" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style1" Text="Clear" 
            onmouseover="this.style.color='#00FF90'"
            onmouseout="this.style.color='black'" Font-Size="20px" style="font-family: 'bradley Hand ITC'" OnClick="btnClear_Click" />
            
           <asp:Button ID="btnSubmit" runat="server" BackColor="White" BorderColor="#00FF90" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style1" Text="Submit" 
            onmouseover="this.style.color='#00FF90'"
            onmouseout="this.style.color='black'" Font-Size="20px" style="font-family: 'bradley Hand ITC'" OnClick="btnSubmit_Click" />
           

    </div>

    <br /><br />

</asp:Content>
