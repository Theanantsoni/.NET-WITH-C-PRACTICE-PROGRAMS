<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegForm.aspx.cs" Inherits="RegisterForm.RegForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Registration Form"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Enter Your Name : "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Enter Your Name" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Enter Your Address : "></asp:Label>
&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:RequiredFieldValidator ID="rfvAddress" runat="server"
                ControlToValidate="txtaddress"
                ErrorMessage="Enter Address"
                ForeColor="Red"
                Display="Dynamic" />
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Enter Your Enail Id : "></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter Your Email Id" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label20" runat="server" Text="Enter Your Contact No : "></asp:Label>
&nbsp;<asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtcontact" ErrorMessage="Enter Contact Number" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtcontact" ErrorMessage="Enter Valid Contact Number" ForeColor="Red" MaximumValue="9999999999" MinimumValue="1000000000" Type="Double"></asp:RangeValidator>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Create Password : "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpass" ErrorMessage="Create Password" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Label ID="Label18" runat="server" Text="Repeat Password : "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtrptpass" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtrptpass" ErrorMessage="Enter Repeat Password" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass" ControlToValidate="txtrptpass" Display="Dynamic" ErrorMessage="Password Not Match" ForeColor="Red"></asp:CompareValidator>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Select Gender : "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="rdomale" runat="server" GroupName="rdogen" Text="Male" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="rdofemale" runat="server" GroupName="rdogen" Text="Female" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CustomValidator ID="CustomValidator1" runat="server" Display="Dynamic" ErrorMessage="Select Gender" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            <br />
            <br />
            <asp:Label ID="Label8" runat="server" Text="Select Country : "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddselcountry" runat="server">
                <asp:ListItem Value=" ">Select Country</asp:ListItem>
                <asp:ListItem>India</asp:ListItem>
                <asp:ListItem>Nepal</asp:ListItem>
                <asp:ListItem>China</asp:ListItem>
                <asp:ListItem>US</asp:ListItem>
                <asp:ListItem>UK</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddselcountry" ErrorMessage="Select Country" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label9" runat="server" Text="Select State : "></asp:Label>
            <asp:DropDownList ID="ddselstate" runat="server">
                <asp:ListItem Value=" ">Select State</asp:ListItem>
                <asp:ListItem>GJ</asp:ListItem>
                <asp:ListItem>KL</asp:ListItem>
                <asp:ListItem>UP</asp:ListItem>
                <asp:ListItem>MP</asp:ListItem>
                <asp:ListItem>RJ</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddselstate" ErrorMessage="Select State" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="seltitle" runat="server" Text="Select Hobby : "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="chkreading" runat="server" Text="Reading" />
&nbsp;<asp:CheckBox ID="chkwriting" runat="server" Text="Writing" />
&nbsp;<asp:CheckBox ID="chkcoding" runat="server" Text="Coding" />
&nbsp;<asp:CheckBox ID="chkdesigning" runat="server" Text="Designing" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<appSettings>
  <add key="ValidationSettings:UnobtrusiveValidationMode" value="WebForms" />
</appSettings>
            <asp:CustomValidator ID="CustomValidator2" runat="server" Display="Dynamic" ErrorMessage="Select Hobby" ForeColor="Red" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
            <br />
            <br />
            <br />
            <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
            <br />
            <br />
&nbsp;<br />
            ---------------------------- : Your Data Display Here : ---------------------------->
            <br />
            <br />
&nbsp;<br />
            ---------------------------- : Your Data Display Here : ----------------------------<br />
            <br />
            <br />
            <asp:Label ID="Label11" runat="server" Text="Your Name"></asp:Label>
            &nbsp;:
            <asp:TextBox ID="lblname" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label12" runat="server" Text="Your Address : "></asp:Label>
            <asp:TextBox ID="lbladdress" runat="server" OnTextChanged="lbladdress_TextChanged"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label13" runat="server" Text="Your Email Id : "></asp:Label>
            <asp:TextBox ID="lblemail" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label21" runat="server" Text="Your Contact No : "></asp:Label>
            &nbsp;
            <asp:TextBox ID="lblcontact" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;
            <asp:Label ID="Label14" runat="server" Text="You Create Password : "></asp:Label>
            <asp:TextBox ID="lblpass" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label19" runat="server" Text="Repeat Password : "></asp:Label>
            &nbsp;<asp:TextBox ID="lblrptpass" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label15" runat="server" Text="Your Gender : "></asp:Label>
            <asp:TextBox ID="lblgender" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label16" runat="server" Text="You Select Country : "></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="lblcountry" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label17" runat="server" Text="You Select State : "></asp:Label>
            &nbsp;<asp:TextBox ID="lblstate" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label10" runat="server" Text="You Select Hobby : "></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="lblhobby" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
