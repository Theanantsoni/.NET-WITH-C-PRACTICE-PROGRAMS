<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="TestProgram2.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 395px; width: 1116px; margin-left: 354px">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="label" runat="server" Text="Email Id : "></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter Email Id"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Password : "></asp:Label>
&nbsp;<asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpass" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Contact : "></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcontact" ErrorMessage="Enter Contact No."></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <br />
            <br />
            <asp:Label ID="emaildata" runat="server" Text="Email Id"></asp:Label>
            <br />
            <br />
            <asp:Label ID="passdata" runat="server" Text="Password"></asp:Label>
            <br />
            <br />
            <asp:Label ID="contdata" runat="server" Text="Contact No."></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
