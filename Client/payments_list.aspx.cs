using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Client_payments_list : System.Web.UI.Page
{
    Class1 c = new Class1();
    SqlCommand cmd;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        c.connection();
        try
        {
            ds = c.sel_id("payment_sel",Session["id"].ToString());
            payment.DataSource = ds;
            payment.DataBind();

            string state = Request.QueryString["state"];
            string id = Request.QueryString["id"];



            if (state == "Delete")
            {
                cmd = c.all("payment_del");
                cmd.Parameters.AddWithValue("@pay_id", id);
                cmd.ExecuteNonQuery();
                Response.Redirect("payments_list.aspx");
   
            }

         
        }
        catch (Exception ex)
        {
            ex.StackTrace.ToString();
        }
    }
    
}