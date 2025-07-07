<%@ Page Title="" Language="C#" MasterPageFile="~/FirstMasterPage.Master" AutoEventWireup="true" CodeBehind="RegisterForm.aspx.cs" Inherits="MasterForm1.RegisterForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        text-align: center;
    }
        .auto-style2 {
            text-align: justify;
            color: #FF0000;
            font-size: xx-large;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
            width: 756px;
            text-align: justify;
        }
        .auto-style5 {
            width: 756px;
            text-align: justify;
        }
        .auto-style6 {
            height: 26px;
            font-size: xx-large;
            text-align: justify;
        }
        .auto-style7 {
            width: 756px;
            height: 29px;
            text-align: justify;
        }
        .auto-style8 {
            height: 29px;
        }
        .auto-style9 {
            color: #0000FF;
        }
        .auto-style14 {
            text-align: justify;
        }
        .auto-style15 {
            height: 26px;
            text-align: justify;
        }
        .auto-style16 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style2">
        <strong>Registration Form</strong></p>
    <p class="auto-style14">
        &nbsp;</p>
    <p class="auto-style14">
        <asp:Label ID="Label1" runat="server" Text="Name : "></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Please Enter Your Name" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
    <p class="auto-style14">
        <asp:Label ID="Label2" runat="server" Text="Address : "></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtaddress" ErrorMessage="Please Enter Your Address" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
<p class="auto-style14">
        <asp:Label ID="Label3" runat="server" Text="Email ID : "></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemail" ErrorMessage="Please Enter Your Email Id" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
<p class="auto-style14">
        <asp:Label ID="Label4" runat="server" Text="Contact No : "></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtcontact" ErrorMessage="Please Enter Your Contact No" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtcontact" ErrorMessage="Enter 10 Digit Number" ForeColor="Red" MaximumValue="9999999999" MinimumValue="1000000000" Type="Double"></asp:RangeValidator>
        </p>
<p class="auto-style14">
        <asp:Label ID="Label5" runat="server" Text="Password : "></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtpassword" ErrorMessage="Please Create Your Password" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
<p class="auto-style14">
        <asp:Label ID="Label6" runat="server" Text="Repeat Password : "></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtrptpassword" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtrptpassword" ErrorMessage="Please Enter Repeat Password" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtrptpassword" ErrorMessage="Password Does Not Match" ForeColor="Red"></asp:CompareValidator>
        </p>
<p class="auto-style14">
        <asp:Label ID="Label7" runat="server" Text="Gender : "></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="rdomale" runat="server" Text="Male" GroupName="rdogen" />
&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="rdofemale" runat="server" Text="Female" GroupName="rdogen" />
&nbsp;&nbsp;&nbsp;
        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Select Your Gender" ForeColor="Red" Display="Dynamic" OnServerValidate="CustomValidator1_ServerValidate" ValidateEmptyText="True"></asp:CustomValidator>
        </p>
    <p class="auto-style14">
        <asp:Label ID="Label8" runat="server" Text="Country : "></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddselcountry" runat="server">
            <asp:ListItem Value=" ">Select Country</asp:ListItem>
            <asp:ListItem>Country 1</asp:ListItem>
            <asp:ListItem>Country 2</asp:ListItem>
            <asp:ListItem>Country 3</asp:ListItem>
            <asp:ListItem>Country 4</asp:ListItem>
            <asp:ListItem>Country 5</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddselcountry" ErrorMessage="Please Select Your Country" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
    <p class="auto-style14">
        <asp:Label ID="Label9" runat="server" Text="State : "></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddselstate" runat="server">
            <asp:ListItem Value=" ">Select State</asp:ListItem>
            <asp:ListItem Value="State 1">State 1</asp:ListItem>
            <asp:ListItem>State 2</asp:ListItem>
            <asp:ListItem>State 3</asp:ListItem>
            <asp:ListItem>State 4</asp:ListItem>
            <asp:ListItem>State 5</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddselstate" ErrorMessage="Please Select Your State" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
    <p class="auto-style14">
        <asp:Label ID="Label10" runat="server" Text="Hobby : "></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="chkreading" runat="server" Text="Reading" ValidationGroup="chkhobby" />
&nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="chkwriting" runat="server" Text="Writing" ValidationGroup="chkhobby" />
&nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="chkcoding" runat="server" Text="Coding" ValidationGroup="chkhobby" />
&nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="chkdesigning" runat="server" Text="Designing" ValidationGroup="chkhobby" />
&nbsp;&nbsp;&nbsp;
        <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Select Your Hobby" ForeColor="Red" Display="Dynamic" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
        </p>
<p class="auto-style14">
        &nbsp;</p>
<p class="auto-style16">
        <asp:Button ID="btnsubmit" runat="server" Text="Submit" style="font-size: x-large" OnClick="btnsubmit_Click" />
</p>
    <p class="auto-style14">
        &nbsp;</p>
    <p class="auto-style1">
        <table style="width:100%;">
            <tr>
                <td class="auto-style6" colspan="2"><strong>
                    <br />
                    <span class="auto-style9">----------------- : Your Data is Display Here : -----------------</span><br class="auto-style9" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style4">
        <asp:Label ID="Label11" runat="server" Text="Name : "></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="lblname" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
        <asp:Label ID="Label12" runat="server" Text="Address : "></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="lbladdress" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
        <asp:Label ID="Label13" runat="server" Text="Email ID : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="lblemail" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
        <asp:Label ID="Label14" runat="server" Text="Contact No : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="lblcontact" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
        <asp:Label ID="Label15" runat="server" Text="Password : "></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="lblpass" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
        <asp:Label ID="Label16" runat="server" Text="Gender : "></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="lblgender" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
        <asp:Label ID="Label17" runat="server" Text="Country : "></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="lblcountry" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
        <asp:Label ID="Label18" runat="server" Text="State : "></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="lblstate" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
        <asp:Label ID="Label19" runat="server" Text="Hobby : "></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="lblhobby" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
        </table>
</p>
<p class="auto-style14">
        &nbsp;</p>
</asp:Content>
