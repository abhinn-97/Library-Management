using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string conn = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Abhinn Trivedi\Desktop\Sem 4\Web Technology\Practicals\Project\App_Data\Users.mdf;Integrated Security=True";

        SqlConnection con = new SqlConnection(conn);

        SqlCommand cmd = new SqlCommand("select * from [User] where uname = @uname and pass = @pass",con);

        cmd.Parameters.AddWithValue("@uname", uname.Text);
        cmd.Parameters.AddWithValue("@pass", pass.Text);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if(dt.Rows.Count > 0)
        {
            Session["uname"] = uname.Text;
            Session["pass"] = pass.Text;
            Response.Redirect("HomePage.aspx");
        }

        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username or Password ')</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Signup.aspx");
    }
}