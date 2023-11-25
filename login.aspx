<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="row">
               <header>
                  <h1>Login to proceed to admin area</h1>
                   <asp:Panel ID="Panel1" runat="server">
                       <asp:Panel ID="Panel2" runat="server">
                           UserName:
                           <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                           <asp:Panel ID="Panel3" runat="server">
                               Password:
                               <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:Panel ID="Panel4" runat="server">
                                    <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
                                   <asp:Panel ID="Panel5" runat="server">
                                       <asp:Label ID="lblErrorLogin" runat="server"></asp:Label>
                                   </asp:Panel>
                               </asp:Panel>
                           </asp:Panel>
                       </asp:Panel>
                   </asp:Panel>
               </header>
            </div>
        </div>
    </form>
</body>
</html>
