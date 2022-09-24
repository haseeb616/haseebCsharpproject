<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_customer.aspx.cs" Inherits="WebApplication7.add_customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:Image ID="Image1" runat="server" ImageUrl="~/images/CB-LS-Central-for-hotels-Property-Management-System-hotel-guest-lobby-reception-AdobeStock_280498965.jpg" BorderColor="Black" BorderWidth="10px" Height="233px" Width="426px"/>
             <table>
                <tr>
                    <td>
                        customer_id

                    </td>
                   <td>
                        <asp:TextBox ID="customer_id" runat="server"></asp:TextBox> </br>
                       </td>

                    

                </tr>

                <tr>
                    <td>
                        customer_password
                      
                        </td>

                     <td>
                        <asp:TextBox ID="customer_password" runat="server"></asp:TextBox></br>
                       </td>

                   
                    </tr>

                 
                <tr>
                    
                     <td>
                        customer_name
                      
                        </td>

                     <td>
                        <asp:TextBox ID="customer_name" runat="server"></asp:TextBox></br>
                       </td>
                    </tr>

                <tr>
                    
                     <td>
                        customer_address
                      
                        </td>

                     <td>
                        <asp:TextBox ID="customer_address" runat="server"></asp:TextBox></br>
                       </td>
                    </tr>
           
                 <tr>
                    
                     <td>
                        customer_email
                      
                        </td>

                     <td>
                         <asp:TextBox ID="customer_email" runat="server"></asp:TextBox></br>
                       </td>
                    </tr>
           
             <tr>
                    
                     <td>
                        customer_reservations
                      
                        </td>

                     <td>
            <asp:TextBox ID="customer_reservations" runat="server"></asp:TextBox></br>
                       </td>
                    </tr>
            
           <tr>

                <tr>
                    
                     <td>
                        customer_payment_details
                      
                        </td>

                     <td>
            <asp:TextBox ID="customer_payment_details" runat="server"></asp:TextBox></br>
                       </td>
                    </tr>
                    <td>
                        Save 
                      
                        </td>

                     <td>
                         <asp:Button ID="Save" runat="server" Text="Add Customer" />
                         
                         </br>
                       </td>

                   
                    </tr>


                </table>
            
        </div>
    </form>
</body>
</html>
