<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BillTrackerAssignment.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            color: #0033CC;
        }
        .auto-style6 {
            text-align: center;
            color: #0000FF;
            background-color: #00FF00;
        }
        .auto-style8 {
            height: 92px;
        }
        .auto-style10 {
            color: #CC0099;
        }
        .auto-style14 {
            text-align: center;
            color: #000066;
            width: 465px;
            background-color: #FF99FF;
        }
        .auto-style15 {
            width: 465px;
        }
        .auto-style16 {
            width: 465px;
            height: 92px;
        }
        .auto-style17 {
            text-align: center;
            color: #000066;
            width: 126px;
            background-color: #FFFFFF;
        }
        .auto-style18 {
            width: 126px;
        }
        .auto-style19 {
            width: 126px;
            height: 92px;
        }
        .auto-style20 {
            width: 126px;
            background-color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style14">LOGIN PAGE</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style6">REGISTERATION PAGE</td>
                </tr>
                <tr>
                    <td class="auto-style15">UserID:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style20">&nbsp;</td>
                    <td>UserID:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">Password:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>assword:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="LOGIN" />
                    </td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="REGISTER" OnClick="Button2_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style10" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
