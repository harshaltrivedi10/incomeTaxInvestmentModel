using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Admin_logout : System.Web.UI.Page
{
    Class1 c = new Class1();
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        c.connection();

        try
        {
            cmd = c.all("admin_update");
            cmd.Parameters.AddWithValue("@l_time",System.DateTime.Now.ToShortDateString()+" "+System.DateTime.Now.ToShortTimeString());
            cmd.Parameters.AddWithValue("@username",Session["login"].ToString());
            cmd.ExecuteNonQuery();


            Session["login"] = "";
            Session["image"] = "";
            Session["last"] = "";

            Response.Redirect("login.aspx");

        }
        catch (Exception ex)
        {
            Response.Redirect("login.aspx");
        }
    }
}