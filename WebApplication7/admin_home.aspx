<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_home.aspx.cs" Inherits="WebApplication7.admin_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/hotel_gui_login_swing.png" Height="408px" Width="509px" /> </br>

        <asp:Label ID="Label1" runat="server"></asp:Label>
        <p>
            <asp:Label ID="Label2" runat="server" Text="delete staff by ID"></asp:Label>
        </p>
      

        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

          <asp:Image ID="Image2" runat="server" ImageUrl="~/images/hotel price.jpg" Height="499px" Width="366px" style="margin-left: 0px"/> </br>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="DELETE" />
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            edit room prices:</p>
        <p>
            ENTER room type :<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;Enter New price:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Save Price changes" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            Provide Special Discount to employees:</p>
        <p>
            enter reservation ID:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </p>
        <p>
            select Discount:<asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="10">10%</asp:ListItem>
                <asp:ListItem Value="5">5%</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Provide Employee Discount" />
        </p>
        <p>
            <asp:Label ID="Label4" runat="server"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            Block/Release Rooms</p>
        <p>
            Enter Room ID:</p>
        <p>
            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Block Room" />
        </p>
        <p>
            &nbsp;</p>
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Release Room" />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label6" runat="server"></asp:Label>
    </form>
</body>
</html>
