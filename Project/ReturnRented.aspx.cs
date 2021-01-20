using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;

public partial class ReturnRented : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["aname"]==null)
        {
            Response.Redirect("AdminLogin.aspx");
        }
        string conn = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Abhinn Trivedi\Desktop\Sem 4\Web Technology\Practicals\Project\App_Data\Renting.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(conn);

        con.Open();

        string query = "select bname from Rents where cname = '" + DropDownList1.Text + "'";
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DropDownList1.Items.Add("Choose ANY one");
        DropDownList2.DataSource = ds;
        DropDownList2.DataValueField = "bname";
        DropDownList2.DataBind();

        string query1 = "select quantity from Rents where cname = '" + DropDownList1.Text + "' and bname = '" + DropDownList2.SelectedValue + "'";
        SqlDataAdapter da1 = new SqlDataAdapter(query1, con);
        DataSet ds1 = new DataSet();
        da1.Fill(ds1);

        
        DropDownList3.DataSource = ds1;
        DropDownList3.DataValueField = "quantity";
        DropDownList3.DataBind();

        //Label Label1.TextBox = DropDownList1.Text;  
        Label1.Text = DropDownList1.Text;  

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string conn = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Abhinn Trivedi\Desktop\Sem 4\Web Technology\Practicals\Project\App_Data\Renting.mdf;Integrated Security=True";

        SqlConnection con =new SqlConnection(conn);

        con.Open();

        string query = "select bname from Rents where cname = '" + DropDownList1.SelectedValue + "'";

        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        da.Fill(ds);

        //DropDownList1.Items.Add("Choose ANY one");
        DropDownList2.DataSource = ds;
        DropDownList2.DataValueField = "bname";
        DropDownList2.DataBind();

        string query1 = "select quantity from Rents where cname = '" + DropDownList1.SelectedValue + "' and bname = '" + DropDownList2.SelectedValue + "'";
        SqlDataAdapter da1 = new SqlDataAdapter(query1, con);
        DataSet ds1 = new DataSet();
        da1.Fill(ds1);

        DropDownList3.DataSource = ds1;
        DropDownList3.DataValueField = "quantity";
        DropDownList3.DataBind();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string conn = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Abhinn Trivedi\Desktop\Sem 4\Web Technology\Practicals\Project\App_Data\Renting.mdf;Integrated Security=True";
        string conn1 = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Abhinn Trivedi\Desktop\Sem 4\Web Technology\Practicals\Project\App_Data\Books.mdf;Integrated Security=True";


        SqlConnection con =new SqlConnection(conn);
        SqlConnection con1 = new SqlConnection(conn1);
        
        con.Open();
        con1.Open();
        string query = "delete from Rents where cname = '" + DropDownList1.SelectedValue + "'and bname = '" + DropDownList2.SelectedValue + "'";
        string query1 = "select stock From Stocks where bname = '" + DropDownList2.SelectedValue + "'";


        SqlCommand cmd = new SqlCommand(query,con);

        SqlDataAdapter da = new SqlDataAdapter(query1, con1);
        DataTable dt = new DataTable();
        da.Fill(dt);
        string value = dt.Rows[0][0].ToString();
        int check = Convert.ToInt32(value);
        int re = Convert.ToInt32(DropDownList3.SelectedValue);
        int final = check + re;
        string finalquery = "update Stocks set stock = '" + final + "'where bname = '" + DropDownList2.SelectedValue + "'";
        SqlCommand cmd1 = new SqlCommand(finalquery, con1);
        cmd1.ExecuteNonQuery();
        int x=cmd.ExecuteNonQuery();

        if(x!=0)
        {
            
            
            con.Close();
            con1.Close();
            Response.Redirect("AdminHome.aspx");

        }

        else
        {
            Response.Redirect("ReturnRented.aspx");
        }

        
        
    }
}