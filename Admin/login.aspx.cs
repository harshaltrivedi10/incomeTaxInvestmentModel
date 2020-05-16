using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Admin_login : System.Web.UI.Page
{
    Class1 c = new Class1();
    DataSet ds;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        c.connection();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            ds = c.sel_login("admin_login",TextBox1.Text.ToString(),TextBox2.Text.ToString());

            if (ds.Tables[0].Rows.Count > 0)
            {
                // session - one page to other page pass / globle variable / temporery data store /

                Session["login"] = TextBox1.Text.ToString();
                Session["image"] = ds.Tables[0].Rows[0]["image"].ToString();
                Session["last"] = ds.Tables[0].Rows[0]["l_time"].ToString();
                
                Response.Redirect("index.aspx");
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Invalid Username Or Password..!!";
            }


        }
        catch (Exception ex)
        {
            Label1.Visible = true;
            Label1.Text = ex.Message.ToString();
        }

    }
}