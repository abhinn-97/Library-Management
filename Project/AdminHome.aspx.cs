using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;

public partial class AdminHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Rent.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("CheckRent.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("CheckStocks.aspx");

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("OrderNew.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("ReturnRented.aspx");
    }
}