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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CPSC6118ConnectionString"].ConnectionString);
            con.Open();
            string insertQuery = "insert into JPragas.Accounts (UserName,FirstName,LastName,Phone,Email,Occupation) values(@UserName,@FirstName,@LastName,@Phone,@Email,@Occupation)";
            SqlCommand cmd = new SqlCommand(insertQuery, con);
            cmd.Parameters.AddWithValue("@UserName", txtUserName.Text);
            cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
            cmd.Parameters.AddWithValue("@LastName", txtLastName.Text);
            cmd.Parameters.AddWithValue("@Phone", txtPhoneNumber.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@Occupation", ddlOccupation.SelectedItem.ToString());
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Login.aspx");
           }
    }
}