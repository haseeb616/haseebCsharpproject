<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_user_home.aspx.cs" Inherits="WebApplication7.add_user_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

              
            <table>
                <tr>
                    <td>
                        reservation_id

                    </td>
                   <td>
                        <asp:TextBox ID="reservation_id" runat="server"></asp:TextBox> </br>
                       </td>

                    

                </tr>

                <tr>
                    <td>
                        customer_id
                      
                        </td>

                     <td>
                        <asp:TextBox ID="customer_id" runat="server"></asp:TextBox></br>
                       </td>

                   
                    </tr>
                 <tr>
                    
                     <td>
                       room_type
                      
                        </td>

                     <td>
                        <asp:TextBox ID="room_type" runat="server"></asp:TextBox></br>
                       </td>
                    </tr>
           
                 <tr>
                    
                     <td>
                        room_number
                      
                        </td>

                     <td>
                         <asp:TextBox ID="room_number" runat="server"></asp:TextBox></br>
                       </td>
                    </tr>
               
           
      
          </table>
        </div>
    </form>
</body>
</html>
