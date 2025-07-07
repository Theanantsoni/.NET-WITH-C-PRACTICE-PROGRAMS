<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NameField.aspx.cs" Inherits="NameCrud.NameField" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Enter Name "></asp:Label>
&nbsp;:
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Enter Email"></asp:Label>
&nbsp;:
            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Enter ID"></asp:Label>
&nbsp;:
            <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btninsert" runat="server" OnClick="btninsert_Click" Text="Insert" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnupdate" runat="server" Text="Update" OnClick="btnupdate_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btndelete" runat="server" Text="Delete" OnClick="btndelete_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnview" runat="server" Text="View" OnClick="btnview_Click" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </div>
    </form>
    <p>
&nbsp;
    </p>
</body>
</html>
