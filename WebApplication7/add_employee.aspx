<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_employee.aspx.cs" Inherits="WebApplication7.add_employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/employee_in_hospitality.jpg" BorderColor="Black" BorderWidth="10px" Height="159px" Width="332px" BorderStyle="None"/>
            </br></br>
            <table>
                <tr>
                    <td>
                        emp_id

                    </td>
                   <td>
                        <asp:TextBox ID="emp_id" runat="server"></asp:TextBox> </br>
                       </td>

                    

                </tr>

                <tr>
                    <td>
                        emp_name
                      
                        </td>

                     <td>
                        <asp:TextBox ID="emp_name" runat="server"></asp:TextBox></br>
                       </td>

                   
                    </tr>

                <tr>
                    
                     <td>
                        emp_address
                      
                        </td>

                     <td>
                        <asp:TextBox ID="emp_address" runat="server"></asp:TextBox></br>
                       </td>
                    </tr>
           
                 <tr>
                    
                     <td>
                        emp_salary
                      
                        </td>

                     <td>
                         <asp:TextBox ID="emp_salary" runat="server"></asp:TextBox></br>
                       </td>
                    </tr>
           
             <tr>
                    
                     <td>
                        emp_email
                      
                        </td>

                     <td>
            <asp:TextBox ID="emp_email" runat="server"></asp:TextBox></br>
                       </td>
                    </tr>
            
           <tr>
                    <td>
                        Save 
                      
                        </td>

                     <td>
                         <asp:Button ID="Save" runat="server" Text="Add Employee" />
                         
                         </br>
                       </td>

                   
                    </tr>



                </table>
            

        </div>


    </form>
</body>
</html>
