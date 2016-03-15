<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Theme="SkinFile" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .lbldesign
        {
            color: Blue;
            font-size: larger;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:Panel ID="pnl_reg" runat="server">
              <%--  <!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
    function change() {
        var t1Val = (document.getElementById("t1")).value;
        (document.getElementById("t2")).value = ((t1Val * 2) / 3);
    };
</script>
</head>
<body>

<input id="t1" type="text" onchange="change()"/>
<input id="t2" type="text"/>

</body>
</html>--%>


                <table>
                    <tr>
                        <td>
                            <h1>Registarion From
                            </h1>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Name" CssClass="lbldesign"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                            <cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" TargetControlID="txt_name" WatermarkText="Name">
                            </cc1:TextBoxWatermarkExtender>
                        </td>
                        <td class="style2">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Your Name"
                                ControlToValidate="txt_name"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:Label ID="Label2" runat="server" Text="SurName" CssClass="lbldesign "></asp:Label>
                        </td>
                        <td class="style1">
                            <asp:TextBox ID="txt_surname" runat="server" Height="22px"></asp:TextBox>
                            <cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server" TargetControlID="txt_surname" WatermarkText="SurName">
                            </cc1:TextBoxWatermarkExtender>
                        </td>
                        <td class="style2">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Your SurName"
                                ControlToValidate="txt_surname"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:Label ID="Label3" runat="server" Text="UserName" CssClass="lbldesign"></asp:Label>
                            <cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender3" runat="server" WatermarkText="UserName" TargetControlID="txt_username">
                            </cc1:TextBoxWatermarkExtender>
                        </td>
                        <td class="style2">
                            <asp:TextBox ID="txt_username" runat="server"></asp:TextBox>
                        </td>
                        <td class="style2">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter UserName"
                                ControlToValidate="txt_username"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Password" CssClass="lbldesign"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_password" runat="server" TextMode="Password"></asp:TextBox>

                            <cc1:PasswordStrength ID="txt_password_PasswordStrength" runat="server"
                                Enabled="True" TargetControlID="txt_password">
                            </cc1:PasswordStrength>

                        </td>
                        <td class="style2">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                                ErrorMessage="Enter Password" ControlToValidate="txt_password"
                                ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,8}$"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="ConfromPassword"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_confrompassword" runat="server" Height="22px"
                                TextMode="Password"></asp:TextBox>
                            <cc1:PasswordStrength ID="txt_confrompassword_PasswordStrength" runat="server"
                                Enabled="True" TargetControlID="txt_confrompassword">
                            </cc1:PasswordStrength>
                        </td>
                        <td class="style2">
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Enter Correct Password"
                                ControlToCompare="txt_password" ControlToValidate="txt_confrompassword"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label>
                        </td>
                        <td>
                            <asp:RadioButtonList ID="rb_gender" runat="server">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td class="style2">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Select Your Gender"
                                ControlToValidate="rb_gender"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text="Country"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddl_country" runat="server">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>India</asp:ListItem>
                                <asp:ListItem>Pakistan</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="style2">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Your Country"
                                ControlToValidate="ddl_country" InitialValue="Select"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                            <cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender5" runat="server" WatermarkText="Email" TargetControlID="txt_email">
                            </cc1:TextBoxWatermarkExtender>
                        </td>
                        <td class="style2">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Your Email"
                                ControlToValidate="txt_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label9" runat="server" Text="MobileNo"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_mobileno" runat="server"></asp:TextBox>
                            <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="txt_mobileno" FilterType="Numbers">
                            </cc1:FilteredTextBoxExtender>
                        </td>
                        <td class="style2">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Mobile No"
                                ControlToValidate="txt_mobileno" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"
                                Style="height: 26px" />
                            <asp:Button ID="Button2" runat="server" Text="Reset" OnClick="Button2_Click" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true"
                ShowSummary="false" />
            <asp:Panel ID="pnl_rep" runat="server" Visible="false">
                <table>
                    <tr>
                        <td colspan="2">Report:-
                        </td>
                    </tr>
                    <tr>
                        <td>Name
                        </td>
                        <td>
                            <asp:Label ID="lbl_name" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>SurName
                        </td>
                        <td>
                            <asp:Label ID="lbl_surname" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>UserName
                        </td>
                        <td>
                            <asp:Label ID="lbl_username" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Password
                        </td>
                        <td>
                            <asp:Label ID="lbl_password" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Gender
                        </td>
                        <td>
                            <asp:Label ID="lbl_gender" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Country
                        </td>
                        <td>
                            <asp:Label ID="lbl_country" runat="server"></asp:Label>
                        </td>
                    </tr>

                    <tr>
                        <td>Email
                        </td>
                        <td>
                            <asp:Label ID="lbl_email" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>MobileNo
                        </td>
                        <td>
                            <asp:Label ID="lbl_mobileno" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btn_back" runat="server" Text="Back" OnClick="btn_back_Click" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
