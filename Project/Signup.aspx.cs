using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;

public partial class Signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string conn = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Abhinn Trivedi\Desktop\Sem 4\Web Technology\Practicals\Project\App_Data\Users.mdf;Integrated Security=True";

        SqlConnection con = new SqlConnection(conn);

        con.Open();

        string query = "insert into [User] VALUES('" + name.Text + "','" + uname.Text + "','" + pass.Text + "')";

        SqlCommand cmd = new SqlCommand(query, con);
        int x=cmd.ExecuteNonQuery();
        if(x!=0)
        { 
            Response.Redirect("HomePage.aspx"); 
        }
        else
        {
            Response.Redirect("Signup.aspx"); 
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}