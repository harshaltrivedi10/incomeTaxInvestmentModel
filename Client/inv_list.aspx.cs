using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Client_inv_list : System.Web.UI.Page
{
    Class1 c = new Class1();
    SqlCommand cmd;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        c.connection();

        try
        {
            if (!IsPostBack)
            {
                ds = c.sel_id("investment_sel_id", Session["id"].ToString());
                investment.DataSource = ds;
                investment.DataBind();

                string state = Request.QueryString["state"];
                string id = Request.QueryString["id"];



                if (state == "Delete")
                {
                    cmd = c.all("investment_del");
                    cmd.Parameters.AddWithValue("@inv_id", id);
                    cmd.ExecuteNonQuery();
                    Response.Redirect("inv_list.aspx");

                }
            }
         
        }
        catch (Exception ex)
        {

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("inv_entry.aspx");
    }
}