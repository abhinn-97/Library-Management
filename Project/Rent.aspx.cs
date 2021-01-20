using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;

public partial class Rent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string conn = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Abhinn Trivedi\Desktop\Sem 4\Web Technology\Practicals\Project\App_Data\Renting.mdf;Integrated Security=True";
        string conn1 =  @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Abhinn Trivedi\Desktop\Sem 4\Web Technology\Practicals\Project\App_Data\Books.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(conn);
        SqlConnection con1 = new SqlConnection(conn1);
        con.Open();
        con1.Open();
        string value = DropDownList1.SelectedValue;
        string check = "select stock from Stocks where bname = '" + value + "'";
        SqlDataAdapter da = new SqlDataAdapter(check,conn1);
        DataTable dt = new DataTable();
        da.Fill(dt);
        string value1 = dt.Rows[0][0].ToString();
        int hel = Convert.ToInt32(value1);
        int q = Convert.ToInt32(quantity.Text);

        if(hel>q)
        {
            string query = "insert into Rents VALUES ('" + DropDownList1.SelectedValue + "','" + cname.Text + "','" + quantity.Text + "')";

            SqlCommand cmd = new SqlCommand(query, con);
            int x = cmd.ExecuteNonQuery();
            if (x != 0)
            {
                int final = hel - q;
                string fquery = "update Stocks set stock = '" + final + "'where bname = '"+ DropDownList1.SelectedValue +"'";
                SqlCommand fcmd = new SqlCommand(fquery, con1);
                fcmd.ExecuteNonQuery();
                con.Close();
                con1.Close();
                Response.Redirect("AdminHome.aspx");
            }
            else
            {
                Response.Redirect("Rent.aspx");
            }
        }

        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Insufficent Stocks ')</script>");
        }

        
    }
}