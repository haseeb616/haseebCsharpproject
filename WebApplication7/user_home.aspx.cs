using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;

using System.Net;
using System.Net.Mail;
using System.Configuration;
using System.Net.Configuration;

using System.Web.UI.WebControls;


namespace WebApplication7
{
    public partial class user_home : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            /*SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            con.Open();
            string qry = "Select * from customer_reservations where customer_id='" "'";
            SqlCommand com = new SqlCommand(qry, con);
            com.Parameters.AddWithValue("reserv_num", TextBox1.Text); */

            Label1.Text = "Hello                 " + Session["cname"].ToString();
        }



        protected void button4_click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            con.Open();
            string qry = "insert into customer_reservations values(@reserv_num,@cust_id,@reserv_time,@hotel_name,@room_type,@room_number,@services,@cost)";
            SqlCommand com = new SqlCommand(qry, con);
            com.Parameters.AddWithValue("reserv_num", TextBox1.Text);
            com.Parameters.AddWithValue("cust_id", TextBox2.Text);
            com.Parameters.AddWithValue("reserv_time", TextBox3.Text);
            com.Parameters.AddWithValue("hotel_name", TextBox4.Text);
            com.Parameters.AddWithValue("room_type", TextBox5.Text);
            com.Parameters.AddWithValue("room_number", TextBox8.Text);
            com.Parameters.AddWithValue("services", TextBox7.Text);
            com.Parameters.AddWithValue("cost", Int32.Parse(TextBox12.Text));


            com.ExecuteNonQuery();
            try
            {
                SmtpSection smtpSection = (SmtpSection)ConfigurationManager.GetSection("system.net/mailSettings/smtp");
                using (MailMessage mm = new MailMessage(smtpSection.From, TextBox11.Text.Trim()))
                {
                    mm.Subject = "reservation confirmation!";
                    mm.Body = "your room number "+TextBox8.Text.Trim()+ "is confirmed! " ;
                    mm.IsBodyHtml = false;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = smtpSection.Network.Host;
                    smtp.EnableSsl = smtpSection.Network.EnableSsl;
                    NetworkCredential networkCred = new NetworkCredential(smtpSection.Network.UserName, smtpSection.Network.Password);
                    smtp.UseDefaultCredentials = smtpSection.Network.DefaultCredentials;
                    smtp.Credentials = networkCred;
                    smtp.Port = smtpSection.Network.Port;
                    smtp.Send(mm);
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Email sent.');", true);
                }

            }
            catch (Exception ex)
            {
                Label15.Text = ex.StackTrace;
            }


            Label15.Text = "booked successfully, a confirmation mail has been sent to your email!";

            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            



            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString()))
            {

                String date1 = TextBox9.Text;
                String date2 = TextBox10.Text;

                SqlCommand cmd = new SqlCommand("select * from customer_reservations where customer_id=@name and reservation_time between @date1 and @date2 order by reservation_time", con);
                cmd.Parameters.AddWithValue("@name", Session["cname"]);
                cmd.Parameters.AddWithValue("@date1", date1);
                cmd.Parameters.AddWithValue("@date2", date2);
                cmd.CommandType = CommandType.Text;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet dt = new DataSet();

                da.SelectCommand = cmd;
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                con.Close();



                /* SqlCommand cmd = new SqlCommand("select * from customer_reservations where customer_id=@name order by reservation_time", con);
                 cmd.Parameters.AddWithValue("@name", Session["cname"]);
                 cmd.CommandType = CommandType.Text;
                 SqlDataAdapter da = new SqlDataAdapter(cmd);
                 DataSet dt = new DataSet();

                 da.SelectCommand = cmd;
                 da.Fill(dt);
                 GridView1.DataSource = dt;
                 GridView1.DataBind();
                 con.Close();
                */
                /*  string id = TextBox1.Text;
                  SqlCommand cmd = new SqlCommand("select * from customer_reservations where customer_id=@name order by reservation_time", con);
                  cmd.Parameters.AddWithValue("@name", id);
                  cmd.CommandType = CommandType.Text;
                  SqlDataAdapter da = new SqlDataAdapter(cmd);
                  DataSet dt = new DataSet();
                  da.SelectCommand = cmd;
                  da.Fill(dt);
                  GridView1.DataSource = dt;
                  GridView1.DataBind();
                  con.Close(); */


                /* GridView1.DataSource = SqlDataSource1;
                 GridView1.DataBind(); */


                /* con.Open();

                 Session["cname"] = TextBox2.Text;
                 string sql = " select * from customer_reservations  order by reservation_time";
                 SqlCommand cmd = new SqlCommand(sql, con);

                 DataTable rstData = new DataTable();
                 rstData.Load(cmd.ExecuteReader());

                 GridView1.DataSource = rstData;
                 GridView1.DataBind();
                 con.Close();
                */
            }

        }

        /*
        string cname = TextBox2.Text;
        Session["custname"] = cname.ToString() ;


        string sql = " select *from customer_reservations where customer_id=@custm_id ";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.Add("custm_id", SqlDbType.VarChar).Value=cname;
        SqlDataReader reader = cmd.ExecuteReader();
        GridView1.DataSource = reader;
        GridView1.DataBind();
        */

        /* 
         
        

        
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString()))
            {
               

                con.Open();
                
                Session["cname"] = TextBox2.Text;
                string sql = " select * from customer_reservations  order by reservation_time";
                SqlCommand cmd = new SqlCommand(sql, con);
                
                DataTable rstData = new DataTable();
                rstData.Load(cmd.ExecuteReader());

                GridView1.DataSource = rstData;
                GridView1.DataBind();
                con.Close();

            }
         
         */


        /*"select *from customer_reservations where customer_id='" + cname + "' order by reservation_time";
        */

        /* select *from customer_reservations */


        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            con.Open();
            string cname = TextBox2.Text;
            Session[cname] = cname;

            string sql = "select *from customer_reservations  order by room_number  asc";
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader reader = cmd.ExecuteReader();
            GridView2.DataSource = reader;
            GridView2.DataBind();


        }

        
        protected void TextBox9_TextChanged1(object sender, EventArgs e)
        {

        }
    }


}
