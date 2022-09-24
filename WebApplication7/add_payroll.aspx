<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_payroll.aspx.cs" Inherits="WebApplication7.add_payroll" %>

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
                        payroll_id

                    </td>
                   <td>
                        <asp:TextBox ID="payroll_id" runat="server"></asp:TextBox> </br>
                       </td>

                    

                </tr>

                <tr>
                    <td>
                        salary
                      
                        </td>

                     <td>
                        <asp:TextBox ID="salary" runat="server"></asp:TextBox></br>
                       </td>

                   
                    </tr>

                <tr>
                    
                     <td>
                       start_date
                      
                        </td>

                     <td>
                        <asp:TextBox ID="start_date" runat="server"></asp:TextBox></br>
                       </td>
                    </tr>
           
                 <tr>
                    
                     <td>
                        account_details
                      
                        </td>

                     <td>
                         <asp:TextBox ID="account_details" runat="server"></asp:TextBox></br>
                       </td>
                    </tr>
           
      
          </table>
        </div>
    </form>
</body>
</html>
