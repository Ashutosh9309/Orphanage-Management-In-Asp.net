using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace orphanagemanagement
{
    public partial class User_Registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\hp\source\repos\orphanagemanagement\orphanagemanagement\App_Data\User_Registrationdb.mdf;Integrated Security=True");
        SqlCommand cmd;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

     
        protected void Button1_Click1(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("insert into Registration values(@Name, @User_Name, @Age, @Address, @Mobile_no, @Email, @Password1, @Password2)", con);
            cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@User_Name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Age", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Address", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Mobile_no", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Email", TextBox6.Text);
            cmd.Parameters.AddWithValue("@Password1", TextBox7.Text);
            cmd.Parameters.AddWithValue("@Password2", TextBox8.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/login.aspx");
        }
    }
}