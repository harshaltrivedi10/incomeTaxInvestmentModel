using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Client_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["c_mail"].ToString() != null || Session["c_image"].ToString() != null || Session["c_last"].ToString() != null || Session["c_name"].ToString() != null)
            {
                Label1.Text = Session["c_last"].ToString();
                Label2.Text = Session["c_name"].ToString();

                Image1.ImageUrl = "../upload/" + Session["c_image"].ToString();
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }
        catch (Exception ex)
        {
            //ex.Message.ToString();
            Response.Redirect("login.aspx");
        }
    }
}
