<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="WebApplication7.Customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/CB-LS-Central-for-hotels-Property-Management-System-hotel-guest-lobby-reception-AdobeStock_280498965.jpg" BorderColor="Black" BorderWidth="10px" Height="596px" Width="504px"/>

        </br>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="customer_id" DataValueField="customer_id">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:project_alternateConnectionString %>" SelectCommand="SELECT [customer_id] FROM [customer]"></asp:SqlDataSource>
    </form>
</body>
</html>
