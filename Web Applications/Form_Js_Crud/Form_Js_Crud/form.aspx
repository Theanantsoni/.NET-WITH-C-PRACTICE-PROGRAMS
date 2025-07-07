<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form.aspx.cs" Inherits="Form_Js_Crud.form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="-------- : Register Form : --------"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblname" runat="server" Text="Enter the Name : "></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Please enter the name*" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lblname0" runat="server" Text="Enter the Contact number : "></asp:Label>
            <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtname" ErrorMessage="Please enter the contact number*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtcontact" ErrorMessage="Enter 10 digit contact number*" ForeColor="Red" MaximumValue="9999999999" MinimumValue="1000000000"></asp:RangeValidator>
            <br />
            <br />
            <asp:Label ID="lblgen" runat="server" Text="Select Gender : "></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="rdomale" runat="server" GroupName="rdogen" Text="Male" />
&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="rdofemale" runat="server" GroupName="rdogen" Text="Female" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Please select the gender*" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            <br />
            <br />
            <asp:Label ID="lblcity" runat="server" Text="Select City : "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddcity" runat="server">
                <asp:ListItem Value=" ">Select</asp:ListItem>
                <asp:ListItem>Surat</asp:ListItem>
                <asp:ListItem>Ahemedabad</asp:ListItem>
                <asp:ListItem>Vadodara</asp:ListItem>
                <asp:ListItem>Rajkot</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddcity" ErrorMessage="Please select the city*" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lblhob" runat="server" Text="Select Hobby : "></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="chkcoding" runat="server" Text="Coding" />
&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="chkwriting" runat="server" Text="Writing" />
&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="chkreading" runat="server" Text="Reading" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Please select the hobby*" ForeColor="Red" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
            <br />
            <br />
            <asp:Button ID="btninsert" runat="server" OnClick="btninsert_Click" Text="Insert" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnupdate" runat="server" OnClick="btnupdate_Click" Text="Update" CausesValidation="False" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btndelete" runat="server" OnClick="btndelete_Click" Text="Delete" CausesValidation="False" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnview" runat="server" OnClick="btnview_Click" Text="View" CausesValidation="False" />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
