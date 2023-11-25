<%@ Page Language="C#" AutoEventWireup="true" CodeFile="invoice.aspx.cs" Inherits="invoice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
      
    </style>
</head>
<body>

<form id="invoiceData" runat="server">
<table id="nameField">

<tr>
<td>Full name of customer:</td>

<td><asp:TextBox ID="custFullName" runat="server" height="35px" Width ="610px"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="custFullName" Display="Dynamic" ErrorMessage="Enter first and last name" SetFocusOnError="True" ValidationExpression="^([A-Za-z])+( [A-Za-z]+){1,50}$"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="custFullName" runat="server" Display="Dynamic" ErrorMessage="Name required" SetFocusOnError="True">*</asp:RequiredFieldValidator>
    </td>


</tr>
</table>
<table id="tblInvoice">
<tr>
    <th>Item Name:</th>
   
    <th>Unit Price:</th>
    
    <th>Quantity:</th>
   
</tr>
<tr>
               
<td><asp:TextBox ID="item1" runat="server" height="35px" Width="450px"></asp:TextBox>

<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter description under 100 char" ControlToValidate="item1" Display="Dynamic" SetFocusOnError="True" ValidationExpression=".{1,100}"></asp:RegularExpressionValidator></td>

<td><asp:TextBox ID="price1" runat="server" height="35px" Width="162px" Text="0.00"></asp:TextBox>

<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="price1" Display="Dynamic" ErrorMessage="Enter price under 1000.00" ValidationExpression="1000.00|[0-9]{0,3}(?:\.\d{1,2})?" SetFocusOnError="True" ></asp:RegularExpressionValidator></td> 

<td><asp:TextBox ID="qty1" runat="server" height="35px" Width="150px" Text="0"></asp:TextBox>

<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="qty1" Display="Dynamic" ErrorMessage="Enter qty 1-100" ValidationExpression="100|[1-9]{1,2}" SetFocusOnError="True" ></asp:RegularExpressionValidator></td> 
</tr>

<tr>               
<td>
<asp:TextBox ID="item2" runat="server" height="35px" Width="450px"></asp:TextBox>

<asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Enter description under 100 char" ControlToValidate="item2" Display="Dynamic" SetFocusOnError="True" ValidationExpression=".{1,100}"></asp:RegularExpressionValidator></td>

<td><asp:TextBox ID="price2" runat="server" height="35px" Width="162px" Text="0.00"></asp:TextBox>

<asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="price2" Display="Dynamic" ErrorMessage="Enter price under 1000.00" ValidationExpression="1000.00|[0-9]{0,3}(?:\.\d{1,2})?" SetFocusOnError="True" ></asp:RegularExpressionValidator></td> 

<td><asp:TextBox ID="qty2" runat="server" height="35px" Width="150px" Text="0"></asp:TextBox>

<asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="qty2" Display="Dynamic" ErrorMessage="Enter qty 1-100" ValidationExpression="100|[1-9]{1,2}" SetFocusOnError="True"></asp:RegularExpressionValidator></td> 
</tr>

<tr>               
<td><asp:TextBox ID="item3" runat="server" height="35px" Width="450px"></asp:TextBox>
<asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ErrorMessage="Enter description under 100 char" ControlToValidate="item3"  Display="Dynamic" SetFocusOnError="True" ValidationExpression=".{1,100}"></asp:RegularExpressionValidator></td>

<td><asp:TextBox ID="price3" runat="server" height="35px" Width="162px" Text="0.00"></asp:TextBox>

<asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="price3" Display="Dynamic" ErrorMessage="Enter price under 1000.00" ValidationExpression="1000.00|[0-9]{0,3}(?:\.\d{1,2})?" SetFocusOnError="True" ></asp:RegularExpressionValidator></td> 

<td><asp:TextBox ID="qty3" runat="server" height="35px" Width="150px" Text="0"></asp:TextBox>

<asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ControlToValidate="qty3" Display="Dynamic"  ErrorMessage="Enter qty 1-100" ValidationExpression="100|[1-9]{1,2}" SetFocusOnError="True"></asp:RegularExpressionValidator></td> 
</tr>

<tr>
<td><asp:Button ID="invBtnSubmit" runat="server" OnClick="invBtnSubmit_Click" Text="Submit" /></td>
</tr>

</table>

<asp:ValidationSummary ValidationGroup="VG1" id="VG1" runat="server" DisplayMode="BulletList"  HeaderText="You received the following errors:"></asp:ValidationSummary>
</form>

</body>
</html>
