<%@ Page Title="" Language="C#" MasterPageFile="~/FirstMasterPage.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="MasterForm1.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .auto-style1 {
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style1">
    Hello ...</p>
<p class="auto-style1">
    Welcome To Home Page ...
</p>
<p class="auto-style1">
    &nbsp;</p>
<p class="auto-style1">
    ----------------- : Home / Index : -----------------</p>
    <p class="auto-style1">
        &nbsp;</p>
    <p class="auto-style1">
        <asp:Image ID="Image1" runat="server" Height="263px" ImageUrl="~/img.jpg" Width="474px" />
    </p>
    <p class="auto-style1">
        &nbsp;</p>
</asp:Content>
