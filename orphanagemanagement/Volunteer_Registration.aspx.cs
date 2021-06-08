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
    public partial class Volunteer_Registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\hp\source\repos\orphanagemanagement\orphanagemanagement\App_Data\User_Registrationdb.mdf;Integrated Security=True");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Vbutton1_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("insert into Volunteer_Registration values(@Volunteer_Name, @Volunteer_User_Name, @Volunteer_Age, @Volunteer_Address, @Volunteer_Mobile_no, @Volunteer_Email, @Volunteer_Password1, @Volunteer_Password2)", con);
            cmd.Parameters.AddWithValue("@Volunteer_Name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Volunteer_User_Name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Volunteer_Age", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Volunteer_Address", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Volunteer_Mobile_no", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Volunteer_Email", TextBox6.Text);
            cmd.Parameters.AddWithValue("@Volunteer_Password1", TextBox7.Text);
            cmd.Parameters.AddWithValue("@Volunteer_Password2", TextBox8.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Volunteer_Login.aspx");

        }
    }
}