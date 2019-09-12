<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="MyAccountSys.RegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 157px;
            text-align: right;
            font-weight: bold;
        }
        .auto-style3 {
            width: 132px;
        }
        .auto-style4 {
            width: 756px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="StLabel" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="NameLabel" runat="server" Text="Name:"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txt_Name" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name Is Required*" ControlToValidate="txt_Name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="UserIDLabel" runat="server" Text="User ID:"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txt_ID" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RFV_ID" runat="server" ErrorMessage="ID Is Required*" ControlToValidate="txt_ID" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lbl_Email" runat="server" Text="Email: "></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txt_Email" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email Is Required*" ControlToValidate="txt_Email" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_Email" ErrorMessage="Email Address Invalid" Font-Italic="True" Font-Size="Small" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lbl_Password" runat="server" Text="Password:"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txt_Password" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Password Is Required*" ControlToValidate="txt_Password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lbl_ConfirmPassword" runat="server" Text="Confirm Password:"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txt_Confirm" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Re-Enter Password*" ControlToValidate="txt_Confirm" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CV_Confirm" runat="server" ControlToCompare="txt_Password" ControlToValidate="txt_Confirm" ErrorMessage="Password Does Not Match" Font-Italic="True" Font-Size="Small" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lbl_Country" runat="server" Text="Country"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="drp_Country" runat="server">
                            <asp:ListItem Value="SelectCountry">Select Country</asp:ListItem>
                            <asp:ListItem>Canada</asp:ListItem>
                            <asp:ListItem>Brazil </asp:ListItem>
                            <asp:ListItem>Germany</asp:ListItem>
                            <asp:ListItem>UK</asp:ListItem>
                            <asp:ListItem>China</asp:ListItem>
                            <asp:ListItem>Fiji</asp:ListItem>
                            <asp:ListItem>USA</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Select A Country*" ControlToValidate="drp_Country" Font-Italic="True" ForeColor="Red" InitialValue="SelectCountry"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <input id="Button1" type="button" value="Submit" /></td>
                    <td class="auto-style4">
                        <input id="Reset1" type="reset" value="Reset" /></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
