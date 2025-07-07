<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Validation.aspx.cs" Inherits="MasterPage_Practice.Validation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        height: 23px;
    }
    .auto-style3 {
        height: 23px;
        width: 262px;
    }
    .auto-style4 {
        width: 262px;
    }
    .auto-style5 {
        height: 23px;
        width: 497px;
    }
    .auto-style6 {
        width: 497px;
    }
        .auto-style7 {
            margin-left: 280px;
        }
        .auto-style8 {
            width: 262px;
            height: 26px;
        }
        .auto-style9 {
            width: 497px;
            height: 26px;
        }
        .auto-style10 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
    <tr>
        <td class="auto-style3">
            <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="Name must not have digits" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Password:</td>
        <td class="auto-style6">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style7">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password Must be 8 Characters" ForeColor="Red" ValidationExpression="\d{4}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            Email:</td>
        <td class="auto-style9">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style10">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Email Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please Enter Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            Age:</td>
        <td class="auto-style6">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Age Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Age must be 18 to 60" ForeColor="Red" MaximumValue="60" MinimumValue="18" ViewStateMode="Disabled"></asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Button ID="Button1" runat="server" Text="Submit" />
        </td>
        <td class="auto-style6">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
