﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string conn = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Abhinn Trivedi\Desktop\Sem 4\Web Technology\Practicals\Project\App_Data\Users.mdf;Integrated Security=True";

        SqlConnection con = new SqlConnection(conn);

        SqlCommand cmd = new SqlCommand("select * from Admin where aname = @aname and pass = @pass", con);

        cmd.Parameters.AddWithValue("aname", aname.Text);
        cmd.Parameters.AddWithValue("pass", pass.Text);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if(dt.Rows.Count > 0)
        {
            Session["aname"] = aname.Text;
            Session["pass"] = pass.Text;
            Response.Redirect("AdminHome.aspx");
        }

        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username or Password ')</script>");
        }


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}