using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
namespace orphanagemanagement
{
    public partial class Add_del_child : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\hp\source\repos\orphanagemanagement\orphanagemanagement\App_Data\User_Registrationdb.mdf;Integrated Security=True");
        SqlCommand cmd;
        string filename;
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(Server.MapPath("~/Children_Img/" + filename));
            con.Open();
            cmd = new SqlCommand("insert into Children values(@Children_Id, @Name, @Children_Status, @State, @City, @Pin_Code, @Address, @image)", con);
            cmd.Parameters.AddWithValue("@Children_Id", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Children_Status", TextBox3.Text);
            cmd.Parameters.AddWithValue("@State", TextBox4.Text);
            cmd.Parameters.AddWithValue("@City", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Pin_Code", TextBox6.Text);
            cmd.Parameters.AddWithValue("@Address", TextBox7.Text);
            cmd.Parameters.AddWithValue("@image", "Children_Img/" + filename);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Admin.aspx");
        }

       
    }
}