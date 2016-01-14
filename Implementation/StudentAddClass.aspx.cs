using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Forms;

namespace Implementation
{
    public partial class StudentAddClass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddClass_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CPSC6118ConnectionString"].ConnectionString);
            con.Open();
            string insertQuery = "insert into JPragas.AddClasses (AccountID,CourseName,Grade) values(@AccountID,@CourseName,@Grade)";
            SqlCommand cmd = new SqlCommand(insertQuery, con);
            cmd.Parameters.AddWithValue("@AccountID", Session["AccountID"]);
            cmd.Parameters.AddWithValue("@CourseName", ddlCourseName.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@Grade", ddlGrade.SelectedItem.ToString());
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("StudentHome.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Session["AccountID"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}