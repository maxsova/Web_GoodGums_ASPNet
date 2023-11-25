<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stocktake.aspx.cs" Inherits="stocktake" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cellpadding="2">
                <tr>
                    <td colspan="6">
                        <asp:Panel ID="Panel1" runat="server" Height="59px" Width="461px">
                            <asp:Label ID="lblReorder" runat="server" Text="Reorder level:"></asp:Label>
                             <asp:Button ID="btnMinus" runat="server" Text="-" OnClick="MinusQty_Click"></asp:Button>
                            <asp:TextBox ID="txtReorderQty" runat="server" Height="35px" ReadOnly="True" Width="38px">10</asp:TextBox>
                            <asp:Button ID="btnPlus" runat="server"  Text="+" OnClick="PlusQty_Click"></asp:Button>
                        </asp:Panel>
                    </td>

                    <td></td>
             </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblItemName" runat="server" Text="Item Name"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblUnitPrice" runat="server" Text="Unit Price"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblStockQty" runat="server" Text="Stock Quantity"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblReorderQty" runat="server" Text="Reorder Quantity"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblSubtotal" runat="server" Text="Subtotal"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="ddProd1" runat="server" Height="28px" Width="603px">
                            <asp:ListItem>Silver Princess Gum</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUnitPrice1" runat="server" Height="20px" Width="90px" Text="80.95"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtQty1" runat="server" Height="20px" Width="90px" Text="12"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtReorderQty1" runat="server" Height="20px" Width="90px" ReadOnly="True" ></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtSubtotal1" runat="server" Height="20px" Width="90px" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtUnitPrice1" runat="server" Display="Dynamic" ErrorMessage="Enter price under 1000.00" ValidationExpression="1000.00|[0-9]{0,3}(?:\.\d{1,2})?"  Width="5px"></asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ControlToValidate="txtQty1" runat="server" Display="Dynamic" ErrorMessage="Enter qty 1-100" ValidationExpression="100|[0-9]{0,2}" Width="5px"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="ddProd2" runat="server" Height="20px" Width="604px">
                            <asp:ListItem>Happy Wanderer</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUnitPrice2" runat="server" Height="20px" Width="90px" Text="25.50"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtQty2" runat="server" Height="17px" Width="93px" Text="7"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtReorderQty2" runat="server"  Height="20px" Width="90px" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtSubtotal2" runat="server"  Height="20px" Width="90px" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="txtUnitPrice2" runat="server" Display="Dynamic" ErrorMessage="Enter price under 1000.00" ValidationExpression="1000.00|[0-9]{0,3}(?:\.\d{1,2})?"  Width="5px"></asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" ControlToValidate="txtQty2" runat="server" Display="Dynamic" ErrorMessage="Enter qty 1-100" ValidationExpression="100|[0-9]{0,2}" Width="5px"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="ddProd3" runat="server" Height="21px" Width="602px">
                            <asp:ListItem>Lilly Pilly</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUnitPrice3" runat="server" Height="20px" Width="90px" Text="37.50"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtQty3" runat="server" Height="20px" Width="90px" Text="3"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtReorderQty3" runat="server" Height="20px" Width="90px" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtSubtotal3" runat="server" Height="20px" Width="90px" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="txtUnitPrice3" runat="server" Display="Dynamic" ErrorMessage="Enter price under 1000.00" ValidationExpression="1000.00|[0-9]{0,3}(?:\.\d{1,2})?"  Width="5px"></asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" ControlToValidate="txtQty3" runat="server" Display="Dynamic" ErrorMessage="Enter qty 1-100" ValidationExpression="100|[0-9]{0,2}" Width="5px"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td >
                        
                        <asp:Button ID="btnCalculate" runat="server"  Text="Calculate" OnClick="CalcBtn_Click"></asp:Button></td>
                    <td>&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="lblGrandTotal" runat="server" Text="Total:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblGrandTotalValue" runat="server" ></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div><br /><br />
        <asp:Panel ID="Panel2" runat="server" Height="276px" Width="982px">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="45px" Width="978px" HeaderText="You must correct the followitng errors:" />
        </asp:Panel>
    </form>
</body>
</html>
