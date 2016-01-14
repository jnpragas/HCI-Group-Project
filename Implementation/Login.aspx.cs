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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CPSC6118ConnectionString"].ConnectionString);
            con.Open();
            string checkUser = "select count(*) from JPragas.Accounts where UserName='" + txtUserName.Text + "'";
            SqlCommand cmd = new SqlCommand(checkUser, con);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {
                con.Open();
                string checkOccupation = "select Occupation from JPragas.Accounts where Username='" + txtUserName.Text + "'";
                string getAccountID = "select AccountID from JPragas.Accounts where Username='" + txtUserName.Text + "'";
                SqlCommand occCmd = new SqlCommand(checkOccupation, con);
                SqlCommand idCmd = new SqlCommand(getAccountID, con);
                string occupation = occCmd.ExecuteScalar().ToString();
                string accountID = idCmd.ExecuteScalar().ToString();

                if (occupation == "Student")
                {
                    Session["User"] = txtUserName.Text;
                    Session["AccountID"] = Convert.ToInt32(accountID);
                    Response.Redirect("StudentHome.aspx");
                }
                else if (occupation == "Instructor")
                {
                    Session["User"] = txtUserName.Text;
                    Session["AccountID"] = Convert.ToInt32(accountID);
                    Response.Redirect("InstructorHome.aspx");
                }
            }
            else
                lblError.Text = "Invalid Username";
        }
    }
}