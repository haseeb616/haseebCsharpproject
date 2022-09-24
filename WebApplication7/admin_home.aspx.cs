using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace WebApplication7
{
   
    public partial class admin_home : System.Web.UI.Page
    {
         int block_count;
        int release_count;

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

                
           

