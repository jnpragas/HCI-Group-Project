using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Implementation
{
    public partial class StudentHome : System.Web.UI.Page
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
            Session["AccountID"] = null;
            Response.Redirect("Login.aspx");
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "ViewClass")
            {
                // id with get the Userid parameter that we set inside the button CommandArgument='<%# Eval("UserID") %>'
                string CourseName = Convert.ToString(e.CommandArgument);

                // Send this value of id to your querystring to redirect to another page
                Response.Redirect("StudentViewClass.aspx?CourseName=" + CourseName);
            }
        }
    }
}