<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Payment.aspx.vb" Inherits="StoreProject.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Credit Card: <asp:TextBox ID="tbCreditCard" runat="server"></asp:TextBox><br />
            <asp:Button ID="btnAPI" runat="server" Text="Send" /><br />
            Authorization Code: <br />
            Trasaction ID: <br />
            Return Array:<asp:Label ID="lblReturnArray" runat="server" Text=""></asp:Label><br />
        </div>
    </form>
</body>
</html>
