<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calc.aspx.cs" Inherits="Calculator.Calc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>Calculator</strong></div>
        <p class="auto-style2">
            <asp:TextBox ID="txtans" runat="server" BorderStyle="Solid" Enabled="False" Height="65px" Width="442px"></asp:TextBox>
        </p>
        <p class="auto-style2">
            <asp:Button ID="btn7" runat="server" Height="76px" OnClick="btn7_Click" Text="7" Width="80px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn8" runat="server" Height="76px" OnClick="btn8_Click" Text="8" Width="80px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn9" runat="server" Height="76px" OnClick="btn9_Click" Text="9" Width="80px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btndiv" runat="server" Height="76px" OnClick="btndiv_Click" Text="/" Width="80px" />
        </p>
        <p class="auto-style2">
            <asp:Button ID="btn4" runat="server" Height="76px" OnClick="btn4_Click" Text="4" Width="80px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn5" runat="server" Height="76px" OnClick="btn5_Click" Text="5" Width="80px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn6" runat="server" Height="76px" OnClick="btn6_Click" Text="6" Width="80px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnmul" runat="server" Height="76px" OnClick="btnmul_Click" Text="*" Width="80px" />
        </p>
        <p class="auto-style2">
            <asp:Button ID="btn1" runat="server" Height="76px" OnClick="btn1_Click" Text="1" Width="80px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn2" runat="server" Height="76px" OnClick="btn2_Click" Text="2" Width="80px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn3" runat="server" Height="76px" OnClick="btn3_Click" Text="3" Width="80px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnsub" runat="server" Height="76px" OnClick="btnsub_Click" Text="-" Width="80px" />
        </p>
        <p class="auto-style2">
            <asp:Button ID="btn0" runat="server" Height="76px" OnClick="btn0_Click" Text="0" Width="80px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnclr" runat="server" Height="76px" OnClick="btnclr_Click" Text="CLR" Width="80px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnequal" runat="server" Height="76px" OnClick="btnequal_Click" Text="=" Width="80px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnadd" runat="server" Height="76px" OnClick="btnadd_Click" Text="+" Width="80px" />
        </p>
    </form>
</body>
</html>
