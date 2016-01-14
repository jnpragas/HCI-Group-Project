using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Implementation
{
    public partial class InstructorViewClass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblCourseName.Text = Convert.ToString(Session["CourseName"]);
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("Login.aspx");
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "ViewStudent")
            {
                // id with get the Userid parameter that we set inside the button CommandArgument='<%# Eval("UserID") %>'
                string AccountID = Convert.ToString(e.CommandArgument);
                Session["StudentID"] = AccountID;
                Response.Redirect("InstructorViewStudent.aspx");


            }
        }
    }
}