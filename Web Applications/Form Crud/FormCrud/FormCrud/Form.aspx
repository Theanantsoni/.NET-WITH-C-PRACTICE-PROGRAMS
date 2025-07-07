<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form.aspx.cs" Inherits="FormCrud.Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        table {
            border-collapse: collapse;
            width: 100%;
        }

        td {
            border: 1px solid black;
            padding: 8px;
        }

        .form-heading {
            font-size: 30px;
            color: #000;
            font-weight: bold;
            text-align: center;
        }

        asp\:button {
            margin: 15px;
        }

        .btn-insert {
            background-color: #28a745; /* Green */
            color: white;
            font-weight: bold;
            padding: 8px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .btn-insert:hover {
            background-color: #218838;
        }

        .btn-update {
            background-color: #ffc107; /* Yellow */
            color: black;
            font-weight: bold;
            padding: 8px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .btn-update:hover {
            background-color: #e0a800;
        }

        .btn-delete {
            background-color: #dc3545; /* Red */
            color: white;
            font-weight: bold;
            padding: 8px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .btn-delete:hover {
            background-color: #c82333;
        }

        .btn-view {
            background-color: #17a2b8; /* Cyan */
            color: white;
            font-weight: bold;
            padding: 8px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .btn-view:hover {
            background-color: #138496;
        }


        .auto-style4, .auto-style7, .auto-style8, .auto-style13, .auto-style15, .auto-style17 {
            text-align: center;
        }

        .auto-style9, .auto-style10, .auto-style14 {
            text-align: right;
            width: 475px;
        }

        .auto-style11, .auto-style12, .auto-style16 {
            text-align: left;
        }

        .auto-style7, .auto-style8, .auto-style15 {
            width: 481px;
        }

        .auto-style10, .auto-style12, .auto-style14, .auto-style15, .auto-style16, .auto-style17 {
            height: auto;
        }

        .auto-style18 {
            font-size: x-large;
        }
        .auto-style19 {
            font-size: x-large;
            color: #FF3300;
        }

    </style>

</head>
<body>
<form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td colspan="3">
                    <asp:Label ID="Label13" runat="server" CssClass="form-heading" Text="Registration Form "></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Enter your Name : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtname" runat="server" Width="168px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Enter Your Name*" ForeColor="Red" Display="Dynamic" ValidationGroup="Register"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Enter your Contact No : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtcontact" ErrorMessage="Enter Your Contact No*" ForeColor="Red" Display="Dynamic" ValidationGroup="Register"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtcontact" ErrorMessage="Enter 10 Digit Contact No*" ForeColor="Red" MaximumValue="9999999999" MinimumValue="1000000000" Display="Dynamic" ValidationGroup="Register"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Select Your Gender : "></asp:Label>
                </td>
                <td>
                    <asp:RadioButton ID="rdomale" runat="server" GroupName="rdogender" Text="Male" />
                    <asp:RadioButton ID="rdofemale" runat="server" GroupName="rdogender" Text="Female" />
                </td>
                <td>
                    <asp:CustomValidator 
    ID="CustomValidator1" 
    runat="server" 
    ErrorMessage="Select Your Gender*" 
    ForeColor="Red" 
    OnServerValidate="CustomValidator1_ServerValidate" 
    Display="Dynamic"
    ValidationGroup="Register"
    EnableClientScript="False" 
    ValidateEmptyText="True">
</asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Enter your Address : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" Width="168px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtaddress" ErrorMessage="Enter Your Address*" ForeColor="Red" Display="Dynamic" ValidationGroup="Register"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Enter Your Email : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter Your Email Id*" ForeColor="Red" Display="Dynamic" ValidationGroup="Register"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Create Your Password : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpass" runat="server" Width="168px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtpass" ErrorMessage="Create Your Password*" ForeColor="Red" Display="Dynamic" ValidationGroup="Register"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Enter Confirm Password : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtconpass" runat="server" Width="168px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtconpass" ErrorMessage="Enter your Confirm Password*" ForeColor="Red" Display="Dynamic" ValidationGroup="Register"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass" ControlToValidate="txtconpass" ErrorMessage="Password Not Match*" ForeColor="Red" Display="Dynamic" ValidationGroup="Register"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Select Your Country : "></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddselcountry" runat="server">
                        <asp:ListItem Value=" ">Select Country</asp:ListItem>
                        <asp:ListItem>IN</asp:ListItem>
                        <asp:ListItem>US</asp:ListItem>
                        <asp:ListItem>UK</asp:ListItem>
                        <asp:ListItem>AU</asp:ListItem>
                        <asp:ListItem>FR</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddselcountry" ErrorMessage="Select Your Country*" ForeColor="Red" Display="Dynamic" ValidationGroup="Register"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label11" runat="server" Text="Select Your State : "></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddselstate" runat="server">
                        <asp:ListItem Value=" ">Select State</asp:ListItem>
                        <asp:ListItem>GJ</asp:ListItem>
                        <asp:ListItem>MP</asp:ListItem>
                        <asp:ListItem>KL</asp:ListItem>
                        <asp:ListItem>RJ</asp:ListItem>
                        <asp:ListItem>UP</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddselstate" ErrorMessage="Select Your State*" ForeColor="Red" Display="Dynamic" ValidationGroup="Register"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Select Your City :"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddselcity" runat="server">
                        <asp:ListItem Value=" ">Select City</asp:ListItem>
                        <asp:ListItem>Surat</asp:ListItem>
                        <asp:ListItem>Vadodara</asp:ListItem>
                        <asp:ListItem>Ahemdabad</asp:ListItem>
                        <asp:ListItem>Rajkot</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddselcity" ErrorMessage="Select Your City*" ForeColor="Red" Display="Dynamic" ValidationGroup="Register"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label12" runat="server" Text="Choose Your Hobby : "></asp:Label>
                </td>
                <td>
                    <asp:CheckBox ID="chkwriting" runat="server" Text="Writing" />
                    <asp:CheckBox ID="chkreading" runat="server" Text="Reading" />
                    <asp:CheckBox ID="chkcoding" runat="server" Text="Coding" />
                    <asp:CheckBox ID="chkdesigning" runat="server" Text="Designing" />
                </td>
                <td>
                    <asp:CustomValidator 
                        ID="CustomValidator2" 
                        runat="server" 
                        ErrorMessage="Choose Your Hobby*" 
                        ForeColor="Red" 
                        OnServerValidate="CustomValidator2_ServerValidate" 
                        Display="Dynamic"
                        ValidationGroup="Register"
                        EnableClientScript="False" 
                        ValidateEmptyText="True">
                    </asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="Label4" runat="server" Text="Enter ID For Update/Delete Data : "></asp:Label>
                    <asp:TextBox ID="txttaskid" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorTaskId" runat="server" ControlToValidate="txttaskid" ErrorMessage="Enter ID for Update/Delete*" ForeColor="Red" Display="Dynamic" ValidationGroup="Modify"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Button ID="btninsert" runat="server" OnClick="btninsert_Click" Text="Insert" CssClass="btn-insert" ValidationGroup="Register" />
                    <asp:Button ID="btnupdate" runat="server" Text="Update" OnClick="btnupdate_Click" CssClass="btn-update" ValidationGroup="Register" />
                    <asp:Button ID="btndelete" runat="server" OnClick="btndelete_Click" Text="Delete" CssClass="btn-delete" ValidationGroup="Modify" />
                    <asp:Button ID="btnview" runat="server" Text="View" OnClick="btnview_Click" CssClass="btn-view" CausesValidation="False" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="GridView1" runat="server" />
                </td>
            </tr>
        </table>
    </div>
</form>
     <script type="text/javascript">
         function validateTaskId(sender, args) {
             var taskIdValue = args.Value.trim();
             var updateBtn = document.getElementById('<%= btnupdate.ClientID %>');
            var deleteBtn = document.getElementById('<%= btndelete.ClientID %>');

            var updateClicked = updateBtn.clicked;
            var deleteClicked = deleteBtn.clicked;

            if (taskIdValue === "") {
                args.IsValid = false;
                if (updateClicked || deleteClicked) {
                    sender.errormessage = "Enter ID for Update/Delete";
                } else {
                    sender.errormessage = "Task ID cannot be empty";
                }
            } else {
                args.IsValid = true;
            }

            // Reset clicked state
            updateBtn.clicked = false;
            deleteBtn.clicked = false;
        }

        window.onload = function () {
            document.getElementById('<%= btnupdate.ClientID %>').onclick = function () {
                this.clicked = true;
            };
            document.getElementById('<%= btndelete.ClientID %>').onclick = function () {
                 this.clicked = true;
             };
         };
     </script>
</body>
</html>
