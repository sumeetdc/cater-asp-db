<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bookingnew.aspx.cs" Inherits="Caterers.bookingnew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book Your Order</title>
    <style type="text/css">
        html {
            background: url(newstart.png) no-repeat center center fixed;
            background-size: cover;
            }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 199px;
        }
        .auto-style3 {
            width: 274px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 199px;
            height: 23px;
            text-align: right;
        }
        .auto-style6 {
            width: 274px;
            height: 23px;
        }
        .auto-style7 {
            text-align: center;
            height: 35px;
        }
        .auto-style9 {
            height: 31px;
            text-align: center;
        }
        .auto-style11 {
            height: 35px;
        }
        .auto-style13 {
            height: 31px;
        }
        .auto-style14 {
            width: 268px;
        }
        .auto-style15 {
            width: 268px;
            text-align: right;
        }
        .auto-style16 {
            width: 275px;
        }
        .auto-style17 {
            width: 294px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Font-Names="Century Gothic" Font-Size="X-Large" Text="Enter Booking Details"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style9" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Font-Names="Century Gothic" Font-Size="Large" Text="City"></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="31px" Width="145px" ValidationGroup="1">
                        <asp:ListItem Value="-1">Select Your City</asp:ListItem>
                        <asp:ListItem>Pune</asp:ListItem>
                        <asp:ListItem>Nagpur</asp:ListItem>
                        <asp:ListItem>Mumbai</asp:ListItem>
                        <asp:ListItem>Nashik</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style13"></td>
                <td class="auto-style13"></td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style7" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Font-Names="Century Gothic" Font-Size="Large" Text="Date"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Height="17px" Width="136px" TextMode="Date" ValidationGroup="1"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidatorDate" runat="server" ControlToValidate="TextBox1" ErrorMessage="**" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style11"></td>
                <td class="auto-style11"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Font-Names="Century Gothic" Font-Size="X-Large" Text="Pick Your Order"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            </table>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style15">
                    <asp:Label ID="Label5" runat="server" Font-Names="Century Gothic" Font-Size="X-Large" Text="Starters:"></asp:Label>
                </td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style16">
                    <asp:RadioButton ID="RadioButton1" runat="server" Font-Names="Century Gothic" Font-Size="Medium" Text="Tomato Soup" />
                </td>
                <td class="auto-style17">
                    <asp:RadioButton ID="RadioButton2" runat="server" Font-Names="Century Gothic" Font-Size="Medium" Text="Sweet Corn Soup" />
                </td>
                <td>
                    <asp:RadioButton ID="RadioButton3" runat="server" Font-Names="Century Gothic" Font-Size="Medium" Text="Hot n Sour Soup" />
                </td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style16">
                    <asp:RadioButton ID="RadioButton4" runat="server" Font-Names="Century Gothic" Font-Size="Medium" Text="Kabaab" />
                </td>
                <td class="auto-style17">
                    <asp:RadioButton ID="RadioButton5" runat="server" Font-Names="Century Gothic" Font-Size="Medium" Text="Spring Rolls" />
                </td>
                <td>
                    <asp:RadioButton ID="RadioButton6" runat="server" Font-Names="Century Gothic" Font-Size="Medium" Text="Cold Drinks" />
                </td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style15">
                    <asp:Label ID="Label6" runat="server" Font-Names="Century Gothic" Font-Size="X-Large" Text="Main Course:"></asp:Label>
                </td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style16">
                    <asp:RadioButton ID="RadioButton7" runat="server" Font-Names="Century Gothic" Font-Size="Medium" Text="Indian" />
                </td>
                <td class="auto-style17">
                    <asp:RadioButton ID="RadioButton8" runat="server" Font-Names="Century Gothic" Font-Size="Medium" Text="Italian" />
                </td>
                <td>
                    <asp:RadioButton ID="RadioButton9" runat="server" Font-Names="Century Gothic" Font-Size="Medium" Text="Chinese" />
                </td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style16">
                    <asp:RadioButton ID="RadioButton10" runat="server" Font-Names="Century Gothic" Font-Size="Medium" OnCheckedChanged="RadioButton10_CheckedChanged" Text="Mexican" />
                </td>
                <td class="auto-style17">
                    <asp:RadioButton ID="RadioButton11" runat="server" Font-Names="Century Gothic" Font-Size="Medium" Text="Continental" />
                </td>
                <td>
                    <asp:RadioButton ID="RadioButton12" runat="server" Font-Names="Century Gothic" Font-Size="Medium" OnCheckedChanged="RadioButton12_CheckedChanged" Text="Custom" />
                </td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style15">
                    <asp:Label ID="Label7" runat="server" Font-Names="Century Gothic" Font-Size="X-Large" Text="Desserts"></asp:Label>
                </td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style16">
                    <asp:RadioButton ID="RadioButton13" runat="server" Font-Names="Century Gothic" Font-Size="Medium" Text="Ice Creams" />
                </td>
                <td class="auto-style17">
                    <asp:RadioButton ID="RadioButton14" runat="server" Font-Names="Century Gothic" Font-Size="Medium" Text="Fudges" />
                </td>
                <td>
                    <asp:RadioButton ID="RadioButton15" runat="server" Font-Names="Century Gothic" Font-Size="Medium" Text="Indian Sweets" />
                </td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style16">
                    <asp:RadioButton ID="RadioButton16" runat="server" Font-Names="Century Gothic" Font-Size="Medium" Text="Fruit Salad" />
                </td>
                <td class="auto-style17">
                    <asp:RadioButton ID="RadioButton17" runat="server" Font-Names="Century Gothic" Font-Size="Medium" Text="Pastries" />
                </td>
                <td>
                    <asp:RadioButton ID="RadioButton18" runat="server" Font-Names="Century Gothic" Font-Size="Medium" Text="Cookies and Cream" />
                </td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" BackColor="White" BorderColor="White" Font-Names="Century Gothic" Font-Size="Large" Text="Place Your Order" OnClick="Button1_Click" ValidationGroup="1" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
