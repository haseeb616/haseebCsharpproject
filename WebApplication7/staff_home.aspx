<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="staff_home.aspx.cs" Inherits="WebApplication7.staff_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:Image ID="Image1" runat="server" ImageUrl="~/images/hotel staff 05.jpg"/> </br>

            <table>
                <tr>
                    <td>
                        staff_id

                    </td>
                   <td>
                        <asp:TextBox ID="staff_id" runat="server"></asp:TextBox> </br>
                       </td>

                    

                </tr>

                <tr>
                    <td>
                        staff_password
                      
                        </td>

                     <td>
                        <asp:TextBox ID="staff_password" runat="server"></asp:TextBox></br>
                       </td>

                   
                    </tr>

                 
                <tr>
                    
                     <td>
                        staff_name
                      
                        </td>

                     <td>
                        <asp:TextBox ID="staff_name" runat="server"></asp:TextBox></br>
                       </td>
                    </tr>

                <tr>
                    
                     <td>
                        staff_address
                      
                        </td>

                     <td>
                        <asp:TextBox ID="staff_address" runat="server"></asp:TextBox></br>
                       </td>
                    </tr>
           
                 <tr>
                    
                     <td>
                        staff_email
                      
                        </td>

                     <td>
                         <asp:TextBox ID="staff_email" runat="server"></asp:TextBox></br>
                       </td>
                    </tr>
           
            
           

                </table>
        </div>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
     
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </p>

    </form>
</body>
</html>
