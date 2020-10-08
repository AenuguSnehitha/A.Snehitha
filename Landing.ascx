<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Landing.ascx.cs" Inherits="BillTrackerAssignment.Landing" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        height: 115px;
    }
    .auto-style3 {
        height: 51px;
        color: #FF3399;
        text-align: center;
        font-size: xx-large;
        background-color: #00FFFF;
    }
    .auto-style4 {
        font-size: large;
    }
    .auto-style5 {
        background-color: #CCFF33;
    }
</style>

<table class="auto-style1">
    <tr>
        <td class="auto-style3">Online Bill Payment</td>
    </tr>
    <tr>
        <td class="auto-style2"><span class="auto-style4">&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style5">HOME</asp:HyperLink>
            <span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="auto-style5">SERVICES</asp:HyperLink>
            <span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span class="auto-style5">&nbsp; </span>
            <asp:HyperLink ID="HyperLink3" runat="server" CssClass="auto-style5" NavigateUrl="~/Login.aspx">LOGIN/REGISTER</asp:HyperLink>
            <span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <asp:HyperLink ID="HyperLink4" runat="server" CssClass="auto-style5">ABOUTUS</asp:HyperLink>
            <span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <asp:HyperLink ID="HyperLink5" runat="server" CssClass="auto-style5">CONTACTUS</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:ImageButton ID="ImageButton1" runat="server" Height="482px" ImageUrl="~/BillTrackerImg.jpg" Width="1239px" />
        </td>
    </tr>
</table>

