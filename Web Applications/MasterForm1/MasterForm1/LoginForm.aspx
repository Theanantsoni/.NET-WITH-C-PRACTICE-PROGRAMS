<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage.master" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="MasterForm1.LoginForm" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="NestedContent">

     <p class="auto-style1">
         &nbsp;</p>
<p class="auto-style1" style="color: #FF0000; font-size: xx-large">
    <strong>Login Form</strong></p>
<p class="auto-style1">
    &nbsp;</p>
<p class="auto-style1">
    <asp:Label ID="Label1" runat="server" Text="Enter Email Id : "></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Please Enter Your Email ID" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p class="auto-style1">
    &nbsp;</p>
<p class="auto-style1">
    <asp:Label ID="Label2" runat="server" Text="Enter Password : "></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" ErrorMessage="Please Enter Your Password" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p class="auto-style1">
    &nbsp;</p>
<p class="auto-style1">
    <asp:Button ID="btnsubmit" runat="server" Text="Submit" PostBackUrl="~/HomePage.aspx" style="font-size: x-large" />
</p>
     <p class="auto-style1">
         &nbsp;</p>

</asp:Content>


