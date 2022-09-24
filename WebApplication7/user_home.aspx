<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_home.aspx.cs" Inherits="WebApplication7.user_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" style="font-weight: 700; font-size: large; text-align: center" Text="book hotel rooms"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label16" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="reservation_id"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label9" runat="server" Text="customer id"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label10" runat="server" Text="check in time"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label11" runat="server" Text="hotel_name"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Label ID="Label12" runat="server" Text="room type"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label13" runat="server" Text="room number"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label14" runat="server" Text="services taken"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <br />
        <br />
        cost from staff
        <br />
        <asp:TextBox ID="TextBox12"  runat="server"></asp:TextBox>
        <br />
        your email<br />
        <br />
        <br />
        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" onclick="button4_click" Text="Book now!" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label15" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <br />
&nbsp;<p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
&nbsp;&nbsp;
            </p>
&nbsp;<p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p style="font-weight: 700; font-size: large">
            view reservations:</p>
        <p style="font-weight: 700; font-size: large">
            <asp:TextBox ID="TextBox9" runat="server" type="date" OnTextChanged="TextBox9_TextChanged1"></asp:TextBox>
            <asp:TextBox ID="TextBox10" runat="server" type="date"></asp:TextBox>
        </p>
        <p style="font-weight: 700; font-size: large">
            &nbsp;</p>
        <p style="font-weight: 700; font-size: large">
            &nbsp;</p>
        <p style="font-weight: 700; font-size: large">
            <asp:Button ID="Button2" runat="server" Text="view by date" OnClick="Button2_Click" />
        </p>
        <p style="font-weight: 700; font-size: large">
            &nbsp;</p>
        <p style="font-weight: 700; font-size: large">
            <asp:Button ID="Button3" runat="server" Text="view by room number" OnClick="Button3_Click" />
        </p>
        <p style="font-weight: 700; font-size: large">
            <asp:Label ID="Label7" runat="server"></asp:Label>
        </p>
        <p style="font-weight: 700; font-size: large">
            &nbsp;</p>
        <p style="font-weight: 700; font-size: large">
            <asp:GridView ID="GridView1" runat="server"    AutoGenerateColumns="True" >
            </asp:GridView>
        </p>
        <asp:GridView ID="GridView2" runat="server">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:project_alternateConnectionString %>" SelectCommand="SELECT * FROM [customer_reservations] ORDER BY [reservation_time]">
        </asp:SqlDataSource>
    </form>
</body>
</html>
