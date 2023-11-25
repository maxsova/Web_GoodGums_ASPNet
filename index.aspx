<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <div id="purchasesTable">
    <form id="existingPurchases" runat="server">
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
        <Columns>
        <asp:BoundField DataField="id" HeaderText="PurchaseId" ItemStyle-Width="80" />
        <asp:BoundField DataField="fullName" HeaderText="FullName" ItemStyle-Width="150" />
        <asp:BoundField DataField="emailAddress" HeaderText="Email" ItemStyle-Width="150" />
        <asp:BoundField DataField="productname" HeaderText="Product" ItemStyle-Width="150" />
		<asp:BoundField DataField="unitprice" HeaderText="Price" ItemStyle-Width="150" />
		<asp:BoundField DataField="quantity" HeaderText="Qty" ItemStyle-Width="150" />
        </Columns>
        </asp:GridView>
    </form>
</div>
    <div id="largeOrders">

        <asp:Label ID="numberOfLargeOrders" runat="server"></asp:Label>

    </div>


</body>
</html>
