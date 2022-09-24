using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication7
{
    public partial class staff_home : System.Web.UI.Page
    {
        SqlConnection cnn;
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                string connectionString;

                connectionString = @"Data Source=DESKTOP-PPG1VKV;Initial Catalog=project_alternate;Integrated Security=True;";

                cnn = new SqlConnection(connectionString);

                cnn.Open();
                cnn.Close();
            }
        }
            protected void Button1_Click(object sender, EventArgs e)
            {
                try
                {
                    string username = TextBox1.Text;
                    string password = TextBox2.Text;
                    cnn.Open();
                    string qry = "select * from dbo.hotel_staff where staff_id ='" + username + "' and staff_password='" + password + "'";
                    SqlCommand cmd = new SqlCommand(qry, cnn);
                    SqlDataReader sdr = cmd.ExecuteReader();
                    if (sdr.Read())
                    {
                        Label3.Text = "Login Sucess......!!";
                    }
                    else
                    {
                        Label3.Text = "UserId & Password Is not correct Try again..!!";

                    }
                    cnn.Close();
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
                Response.Redirect("~/admin_home.aspx");
            }
        }

    }


    