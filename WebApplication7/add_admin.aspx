<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_admin.aspx.cs" Inherits="WebApplication7.add_admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:Image ID="Image1" runat="server" ImageUrl="~/images/hotel-sign-stars-3d-illustration-260nw-195879770.jpg"/>
            <table>
                <tr>
                    <td>
                        admin_id

                    </td>
                   <td>
                        <asp:TextBox ID="admin_id" runat="server"></asp:TextBox> </br>
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
                        admin_name
                      
                        </td>

                     <td>
                        <asp:TextBox ID="admin_name" runat="server"></asp:TextBox></br>
                       </td>
                    </tr>

                <tr>
                    
                     <td>
                        admin_address
                      
                        </td>

                     <td>
                        <asp:TextBox ID="admin_address" runat="server"></asp:TextBox></br>
                       </td>
                    </tr>
           
                 <tr>
                    
                     <td>
                        admin_email
                      
                        </td>

                     <td>
                         <asp:TextBox ID="admin_email" runat="server"></asp:TextBox></br>
                       </td>
                    </tr>
           
            
           <tr>

               
                    <td>
                        Save 
                      
                        </td>

                     <td>
                         <asp:Button ID="Save" runat="server" Text="Add Admin" />
                         
                         </br>
                       </td>

                   
                    </tr>


                </table>
            
        </div>
    </form>
</body>
</html>
