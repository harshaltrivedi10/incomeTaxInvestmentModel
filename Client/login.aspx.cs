using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Client_login : System.Web.UI.Page
{
    Class1 c = new Class1();
    DataSet ds; 
    protected void Page_Load(object sender, EventArgs e)
    {
        c.connection();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (TextBox1.Text == "" || TextBox2.Text == "")
        {
            Label2.Visible = true;
            Label2.Text = "Please Enter Value..!";
        }
        else
        {

            ds = c.sel_login("client_login", TextBox1.Text.ToString(), TextBox2.Text.ToString());
            try
            {

                if (ds.Tables[0].Rows.Count > 0)
                {
                    Session["c_mail"] = TextBox1.Text.ToString();
                    Session["c_image"] = ds.Tables[0].Rows[0]["e_image"].ToString();
                    Session["c_last"] = ds.Tables[0].Rows[0]["u_date"].ToString();
                    Session["c_name"] = ds.Tables[0].Rows[0]["e_name"].ToString();
                    Session["id"] = ds.Tables[0].Rows[0]["e_id"].ToString();

                    Response.Redirect("index.aspx");
                }
                else
                {
                    Response.Redirect("login.aspx");
                }

            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }
        }
    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}