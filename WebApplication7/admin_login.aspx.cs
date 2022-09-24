using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication7
{
    public partial class admin_login : System.Web.UI.Page
    {
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
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            try
            {
                string uid = TextBox1.Text;

                string pass = TextBox2.Text;
                con.Open();
                string qry = "select * from dbo.admin where admin_id='" + uid + "' and staff_password='" + pass + "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Label3.Text = "Login Success......!!";
                    Session["UserName"] = uid;
                    Session["Pwd"] = pass;
                    Response.Redirect("admin_home.aspx");


                }
                else
                {
                    Label3.Text = "UserId & Password Is not correct Try again..!!";

                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}