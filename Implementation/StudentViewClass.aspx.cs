using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Implementation
{
    public partial class StudentViewClass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblCourseName.Text = Request.QueryString["CourseName"];
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}