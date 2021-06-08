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
    public partial class Payment : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\hp\source\repos\orphanagemanagement\orphanagemanagement\App_Data\User_Registrationdb.mdf;Integrated Security=True");
        
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Email"] == null)
            {
                Response.Redirect("~/PlzLogin.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("insert into DonarRequest values (@Name, @Email,@Mobile, @Address, @Clothes, @Money, @Others)", con);
            cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Email", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Mobile", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Address", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Clothes", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Money", TextBox6.Text);
            cmd.Parameters.AddWithValue("@Others", TextBox7.Text);

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Money.aspx");


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into DonarRequest values (@Name, @Email,@Mobile, @Address, @Clothes, @Money, @Others)", con);
            cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Email", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Mobile", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Address", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Clothes", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Money", TextBox6.Text);
            cmd.Parameters.AddWithValue("@Others", TextBox7.Text);


            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Home2.aspx");

         
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into DonarRequest values (@Name, @Email,@Mobile, @Address,@Clothes,@Money, @Others)", con);

            cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Email", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Mobile", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Address", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Clothes", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Money", TextBox6.Text);
            cmd.Parameters.AddWithValue("@Others", TextBox7.Text);


            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Home2.aspx");

        }   
    }
}