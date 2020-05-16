using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Client_logout : System.Web.UI.Page
{
    Class1 c = new Class1();
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

        c.connection();

        try
        {
            cmd = c.all("client_update");
            cmd.Parameters.AddWithValue("@u_date", System.DateTime.Now.ToShortDateString() + " " + System.DateTime.Now.ToShortTimeString());
            cmd.Parameters.AddWithValue("@e_mail", Session["c_mail"].ToString());
            cmd.ExecuteNonQuery();


            Session["c_mail"] = "";
            Session["c_image"] = "";
            Session["c_last"] = "";
            Session["c_name"] = "";
            Session["id"] = "";


            Response.Redirect("login.aspx");

        }
        catch (Exception ex)
        {
            //Label1.Text = ex.Message.ToString();
            Response.Redirect("login.aspx");
        }

    }
}