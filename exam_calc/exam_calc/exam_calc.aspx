<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="exam_calc.aspx.cs" Inherits="exam_calc.exam_calc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Calculator<br />
            <br />
            <asp:TextBox ID="txtans" runat="server" Height="70px" Width="448px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnnine" runat="server" Height="77px" OnClick="btnnine_Click" Text="9" Width="85px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btneight" runat="server" Height="77px" OnClick="btneight_Click" Text="8" Width="85px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnseven" runat="server" Height="77px" OnClick="btnseven_Click" Text="7" Width="85px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btndiv" runat="server" Height="77px" OnClick="btndiv_Click" Text="/" Width="85px" />
            <br />
            <br />
            <asp:Button ID="btnsix" runat="server" Height="77px" OnClick="btnsix_Click" Text="6" Width="85px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnfive" runat="server" Height="77px" OnClick="btnfive_Click" Text="5" Width="79px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnfour" runat="server" Height="77px" OnClick="btnfour_Click" Text="4" Width="85px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnmul" runat="server" Height="77px" OnClick="btnmul_Click" Text="*" Width="85px" />
            <br />
            <br />
            <asp:Button ID="btnthree" runat="server" Height="77px" OnClick="btnthree_Click" Text="3" Width="85px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btntwo" runat="server" Height="77px" OnClick="btntwo_Click" Text="2" Width="85px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnone" runat="server" Height="77px" OnClick="btnone_Click" Text="1" Width="85px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnsub" runat="server" Height="77px" OnClick="btnsub_Click" Text="-" Width="85px" />
            <br />
            <br />
            <asp:Button ID="btnclear" runat="server" Height="77px" OnClick="btnclear_Click" Text="C" Width="85px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnzero" runat="server" Height="77px" OnClick="btnzero_Click" Text="0" Width="85px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnequal" runat="server" Height="77px" OnClick="btnequal_Click" Text="=" Width="85px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnadd" runat="server" Height="77px" OnClick="btnadd_Click" Text="+" Width="85px" />
        </div>
    </form>
</body>
</html>
