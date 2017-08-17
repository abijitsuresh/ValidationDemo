<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ValidationDemo.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Validation Demo</title>
</head>
<body style="background-color:lightgrey">
    <form id="form1" runat="server">
        <h1>Validation Controls Demo</h1>
        <br />
        <table>
            <tr>
                <td>
                    <asp:Label ID="NameLabel" runat="server" Text="Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="NameValidator" runat="server" 
                        ForeColor="Red" Font-Italic="true" ControlToValidate="NameTextBox"
                        ErrorMessage="Name is mandatory!!">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="EmailIDLabel" runat="server" Text="Email ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="EmailIDTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="EmailIDValidator" runat="server" 
                        ForeColor="Red" Font-Italic="true" ControlToValidate="EmailIDTextBox"
                        ErrorMessage="Email ID should be in correct format!!" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                    </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="PasswordLabel" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="ConfirmPasswordLabel" runat="server" Text="Confirm Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="ConfirmPasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="PasswordValidator" runat="server" 
                        ForeColor="Red" Font-Italic="True" ErrorMessage="Passwords doesn't match!!" 
                        ControlToCompare="ConfirmPasswordTextBox" ControlToValidate="PasswordTextBox">
                    </asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="AgeLabel" runat="server" Text="Age"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="AgeTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RangeValidator ID="AgeValidator" runat="server" 
                         ForeColor="Red" Font-Italic="True" ControlToValidate="AgeTextBox"
                        ErrorMessage="Age must be between 1 to 100!!" 
                        MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="NotRobotLabel" runat="server" Text="Not robot? Enter an even number"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="NotRobotTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:CustomValidator ID="NotRobotUserValidator" runat="server" 
                        ForeColor="Red" Font-Italic="True"
                        ErrorMessage="Must be an even number!!" ControlToValidate="NotRobotTextBox" 
                        OnServerValidate="NotRobotUserValidator_ServerValidate">
                    </asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td>

                </td>
                <td>
                    <asp:Button ID="SubmitButton" runat="server" Text="Submit" />
                </td>
                <td>

                </td>
            </tr>
        </table>
    </form>
</body>
</html>
