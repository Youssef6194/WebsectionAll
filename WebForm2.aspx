<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 183px;
        }
        .auto-style4 {
            width: 183px;
            height: 27px;
        }
        .auto-style5 {
            height: 27px;
        }
        .auto-style6 {
            width: 183px;
            height: 23px;
        }
        .auto-style7 {
            height: 23px;
            width: 247px;
        }
        .auto-style8 {
            width: 247px;
        }
        .auto-style9 {
            height: 27px;
            width: 247px;
        }
        .auto-style10 {
            height: 23px;
            width: 140px;
        }
        .auto-style11 {
            width: 140px;
        }
        .auto-style12 {
            height: 27px;
            width: 140px;
        }
        .auto-style13 {
            width: 183px;
            height: 30px;
        }
        .auto-style14 {
            width: 247px;
            height: 30px;
        }
        .auto-style15 {
            width: 140px;
            height: 30px;
        }
        .auto-style16 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="5">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="X-Large" ForeColor="#FF0066" Text="Signup!"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style10"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Italic="False" Font-Names="Arial Black" ForeColor="#3399FF" Text="First Name:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtFname" runat="server" Width="206px"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFname" ErrorMessage="First Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtFname" ErrorMessage="First name invalid !" ForeColor="Red" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*|[A-Z][a-z]*)"></asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Italic="False" Font-Names="Arial Black" ForeColor="#3399FF" Text="Last Name:"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtLname" runat="server" Width="206px"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLname" ErrorMessage="Last Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Italic="False" Font-Names="Arial Black" ForeColor="#3399FF" Text="Gender:"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True" Value="M">Male</asp:ListItem>
                            <asp:ListItem Value="F">Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style12"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label5" runat="server" Font-Bold="False" Font-Italic="False" Font-Names="Arial Black" ForeColor="#3399FF" Text="Email:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Width="206px"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email invalid !" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label6" runat="server" Font-Bold="False" Font-Italic="False" Font-Names="Arial Black" ForeColor="#3399FF" Text="Phone:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtPhone" runat="server" TextMode="Number" Width="206px"></asp:TextBox>
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label7" runat="server" Font-Bold="False" Font-Italic="False" Font-Names="Arial Black" ForeColor="#3399FF" Text="Country:"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Selected="True">Egypt</asp:ListItem>
                            <asp:ListItem>Sudan</asp:ListItem>
                            <asp:ListItem>Paris</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style12"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label8" runat="server" Font-Bold="False" Font-Italic="False" Font-Names="Arial Black" ForeColor="#3399FF" Text="Password:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Width="206px"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPass" ErrorMessage="Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label9" runat="server" Font-Bold="False" Font-Italic="False" Font-Names="Arial Black" ForeColor="#3399FF" Text="Retype Password:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtRePass" runat="server" TextMode="Password" Width="206px"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass" ControlToValidate="txtRePass" ErrorMessage="password not match!!" ForeColor="Red"></asp:CompareValidator>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label10" runat="server" Font-Bold="False" Font-Italic="False" Font-Names="Arial Black" ForeColor="#3399FF" Text="Upload IMG:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:FileUpload ID="hamadaUP" runat="server" />
                    </td>
                    <td class="auto-style10"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                    </td>
                    <td class="auto-style14"></td>
                    <td class="auto-style15"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style16"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="X-Large" ForeColor="Black"></asp:Label>
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
