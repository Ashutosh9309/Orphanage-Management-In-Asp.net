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
    public partial class Update_child : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\hp\source\repos\orphanagemanagement\orphanagemanagement\App_Data\User_Registrationdb.mdf;Integrated Security=True");
        SqlCommand cmd;
        string filename,childId;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            childId = TextBox1.Text;
            filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(Server.MapPath("~/Children_Img/" + filename));
            con.Open();

            cmd = new SqlCommand("UPDATE Children SET Children_Id=' " + TextBox1.Text.Trim()+ " ' ,Name=' " + TextBox2.Text.Trim() + " ', Children_Status=' " + TextBox3.Text.Trim() + " ', State=' " + TextBox4.Text.Trim() + " ', City=' " + TextBox5.Text.Trim() + " ', Pin_Code=' " + TextBox6.Text.Trim() + " ', Address=' " + TextBox7.Text.Trim() + " ', image= @image Where Children_Id='" + childId + "'", con);
          
            cmd.Parameters.AddWithValue("@image", "Children_Img/" + filename);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Admin.aspx");

        }
    }
}