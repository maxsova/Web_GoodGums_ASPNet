<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add.aspx.cs" Inherits="add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100px;
            height: 42px;
        }
        .auto-style2 {
            height: 42px;
        }
    </style>
</head>
<body>
      
<div id="addPurchaseTable">

<form id="form1" runat="server">

<table>

<%--<tr>
<td style="width: 100px">
id:</td>
<td style="width: 100px">
<asp:TextBox ID="inId" runat="server"></asp:TextBox></td>
</tr>--%>

<tr>
<td style="width: 100px">
Full Name:</td>
<td style="width: 100px">
<asp:TextBox ID="inFullName" runat="server"></asp:TextBox></td>
    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Full Name required" ControlToValidate="inFullName" Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
    </td>
</tr>
   
<tr>
<td style="width: 100px">
Email:</td>
<td style="width: 100px">
<asp:TextBox ID="inEmailAddress" runat="server"></asp:TextBox></td>
<td>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="inEmailAddress" Display="Dynamic" ErrorMessage="Valid Email required" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="inEmailAddress" Display="Dynamic" ErrorMessage="Required Field" SetFocusOnError="True">*</asp:RequiredFieldValidator>
    </td>
</tr>

<tr>
<td class="auto-style1">
Product:</td>
<td class="auto-style1">
<asp:TextBox ID="inProductName" runat="server"></asp:TextBox></td>
<td class="auto-style2">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="inProductName" Display="Dynamic" ErrorMessage="RequiredField" SetFocusOnError="True">*</asp:RequiredFieldValidator>
    </td>
</tr>

 <tr>
<td style="width: 100px">
Price:</td>
<td style="width: 100px">
<asp:TextBox ID="inUnitPrice" runat="server"></asp:TextBox></td>
<td>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="inUnitPrice" Display="Dynamic" ErrorMessage="RequiredField" SetFocusOnError="True">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="inUnitPrice" Display="Dynamic" ErrorMessage="Numeric expression required" SetFocusOnError="True" ValidationExpression="\d+"></asp:RegularExpressionValidator>
     </td>
</tr>

<tr>
<td style="width: 100px" valign="top">
Quantity:</td>
<td style="width: 100px">
<asp:TextBox ID="inQuantity" runat="server"></asp:TextBox></td>
<td>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="inQuantity" Display="Dynamic" ErrorMessage="RequiredField" SetFocusOnError="True">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="inQuantity" Display="Dynamic" ErrorMessage="Number required" SetFocusOnError="True" ValidationExpression="\d+"></asp:RegularExpressionValidator>
    </td>
</tr>

<tr>
<td>
<asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />

</td>
</tr>

</table>
<br />
<asp:Label ID="lblSuccess" runat="server"></asp:Label>

<asp:DataList ID="dlPurchase" Runat="server" Width="100%">

<%--<ItemTemplate>
<hr size="0"/>
id: <%# DataBinder.Eval(Container.DataItem, "Id") %><br />
fullName: <%# DataBinder.Eval(Container.DataItem, "fullName") %><br />
emailAddress: <a href="mailto:<%# DataBinder.Eval(Container.DataItem, "emailAddress") %>"><%# DataBinder.Eval(Container.DataItem, "emailAddress") %></a><br />
productName: <%# DataBinder.Eval(Container.DataItem, "productName") %><br />
unitPrice: <%# DataBinder.Eval(Container.DataItem, "unitPrice") %><br />
quantity: <%# DataBinder.Eval(Container.DataItem, "quantity") %>
</ItemTemplate>--%>

</asp:DataList>

</form>
        </div>
</body>
</html>
