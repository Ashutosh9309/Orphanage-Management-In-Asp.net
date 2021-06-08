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
    public partial class delete_child : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\hp\source\repos\orphanagemanagement\orphanagemanagement\App_Data\User_Registrationdb.mdf;Integrated Security=True");
        SqlCommand cmd;
        string childId;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            childId = TextBox8.Text;
            con.Open();
            cmd = new SqlCommand("delete from Children where Children_Id='" + childId + "'", con);
            cmd.ExecuteNonQuery();
            TextBox8.Text = "";
            con.Close();
            Response.Redirect("~/Admin.aspx");

        }
    }
}