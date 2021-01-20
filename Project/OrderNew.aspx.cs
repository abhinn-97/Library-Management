using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;

public partial class OrderNew : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string conn = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Abhinn Trivedi\Desktop\Sem 4\Web Technology\Practicals\Project\App_Data\Books.mdf;Integrated Security=True";

        SqlConnection con = new SqlConnection(conn);

        string query = "select bname from Stocks";
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        da.Fill(ds);

        //DropDownList1.DataSource = ds;
        //DropDownList1.DataValueField = "bname";
       // DropDownList1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string conn = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Abhinn Trivedi\Desktop\Sem 4\Web Technology\Practicals\Project\App_Data\Books.mdf;Integrated Security=True";

        SqlConnection con = new SqlConnection(conn);
        con.Open();
        string value = DropDownList1.SelectedValue;
        Label1.Text = value;
        string ret = "select stock from Stocks where bname='" + value + "'";
        int i = Convert.ToInt32(TextBox1.Text);
        SqlDataAdapter da = new SqlDataAdapter(ret ,con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        string value1 = dt.Rows[0][0].ToString();
        int hel = Convert.ToInt32(value1);
        int final = i + hel;
        string query = "update Stocks set stock = '"+ final +"' where bname = '" + value + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("CheckStocks.aspx");
        

    }
}