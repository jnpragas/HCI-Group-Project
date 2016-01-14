using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Implementation
{
    public partial class InstructorHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] != null)
            {
                ;
            }
            else
                Response.Redirect("Login.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("Login.aspx");
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "ViewClass")
            {
                // id with get the Userid parameter that we set inside the button CommandArgument='<%# Eval("UserID") %>'
                string CourseName = Convert.ToString(e.CommandArgument);
                Session["CourseName"] = CourseName;
                Response.Redirect("InstructorViewClass.aspx");
            }
        }
    }
}