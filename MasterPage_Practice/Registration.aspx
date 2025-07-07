<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="MasterPage_Practice.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
       .container {
            display: flex;
            justify-content: center;
        }
       form#form1 {
        border: 2px solid black;
        padding: 50px;
}
    </style>
</head>
<body>
    <div class="container">
    <form id="form1" runat="server">
        <div>
            <table style="width:100%; margin-bottom: 130px;">
                <tr>
                    <td><h1 style="text-align:center; font-size: x-large; text-decoration: underline; ">Registration Form</h1></td>
                </tr>
                <tr>
                    <td style="margin-left: 40px">
                        <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Username:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Gender:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="RadioButton1" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Male" />
&nbsp;&nbsp;
                        <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" />
                        <br />
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="Hobbies:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Reading" />
&nbsp;&nbsp;&nbsp;
                        <asp:CheckBox ID="CheckBox2" runat="server" Text="Playing" />
&nbsp;&nbsp;&nbsp;
                        <asp:CheckBox ID="CheckBox3" runat="server" Text="Walking" />
                        <br />
                        <br />
                        <br />
                        <div class ="container">
                        <asp:Button ID="Button1" runat="server" Text="Submit" />
                        </div>
                            </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div> 
    </form>
        </div>
</body>
</html>
