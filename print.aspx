<%@ Page Language="C#" AutoEventWireup="true" CodeFile="print.aspx.cs" Inherits="print" %>

<!DOCTYPE html>

<html xmlns=http://www.w3.org/1999/xhtml>
<head runat="server">
    <title></title>
    <style type="text/css">
     
        .auto-style1 {
            height: 41px;
        }
     
    </style>
</head>
<body>

<form id="invoiceDataPrint" runat="server">

<table id="nameFieldPrint" border="0">
<tr>
<td class="auto-style1"><asp:TextBox ID="invDateP" runat="server" disabled ="true"  height="35px" Width="227px" BorderStyle="None" style="font-weight: bold"></asp:TextBox></td>
</tr>
<tr>
<td style="font-weight: bold">Invoiced to:</td>

<td><asp:TextBox ID="custFullNameP" runat="server" disabled ="true" height="35px" Width ="561px" style="text-align: left" BorderStyle="None" ForeColor="Black"></asp:TextBox></td>

</tr>
</table><br />

    <table id="tblPrint" border="1">
<tr>
    <th>Item Name:</th>
   
    <th>Unit Price:</th>
    
    <th>Quantity:</th>
   
</tr>
<tr>
               
<td><asp:TextBox ID="item1P" runat="server" disabled ="true"  height="35px" Width="450px" style="text-align: right"></asp:TextBox></td>

<td><asp:TextBox ID="price1P" runat="server"  disabled ="true" height="35px" Width="162px" Placeholder="0.00" style="text-align: right"></asp:TextBox></td>
    
<td><asp:TextBox ID="qty1P" runat="server"  disabled ="true" height="35px" Width="162px" Placeholder="0" style="text-align: right"></asp:TextBox></td>

</tr>
<tr>
               
<td><asp:TextBox ID="item2P" runat="server" disabled ="true"  height="35px" Width="450px" style="text-align: right"></asp:TextBox></td>

<td><asp:TextBox ID="price2P" runat="server" disabled ="true"  height="35px" Width="162px" Placeholder="0.00" style="text-align: right"></asp:TextBox></td>

<td><asp:TextBox ID="qty2P" runat="server" disabled ="true"  height="35px" Width="162px" Placeholder="0" style="text-align: right"></asp:TextBox></td>

</tr>
<tr>
               
<td><asp:TextBox ID="item3P" runat="server" disabled ="true"  height="35px" Width="450px" style="text-align: right"></asp:TextBox></td>

<td><asp:TextBox ID="price3P" runat="server" disabled ="true"  height="35px" Width="161px" Placeholder="0.00" style="text-align: right"></asp:TextBox></td>

<td><asp:TextBox ID="qty3P" runat="server" disabled ="true"  height="35px" Width="162px" Placeholder ="0" style="text-align: right"></asp:TextBox></td>

</tr>
<tr>
<td style="font-weight: bold">Invoilce total $:</td>
<td></td>
<td><asp:TextBox ID="totalInvP" runat="server" disabled ="true"  height="35px" Width="161px" Placeholder="0.00" style="text-align: right"></asp:TextBox></td>

</tr>

<tr>
<td style="font-weight: bold">Payment due:</td>
<td></td>
<td><asp:TextBox ID="dueByDate" runat="server" disabled ="true"  height="35px" Width="161px" style="text-align: right"></asp:TextBox></td>

</tr>
    </table>
</form>

</body>
</html>

