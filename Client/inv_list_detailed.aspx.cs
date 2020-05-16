using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Client_inv_list_detailed : System.Web.UI.Page
{
    Class1 c = new Class1();
    DataSet ds;


    protected void Page_Load(object sender, EventArgs e)
    {
        c.connection();

        try
        {
            if (!IsPostBack)
            {
                ds = c.sel_id("investment_sel_id", Session["id"].ToString());
                Label1.Text = ds.Tables[0].Rows[0]["h_name"].ToString();
                Label2.Text = ds.Tables[0].Rows[0]["rel_desc"].ToString();
                Label3.Text = ds.Tables[0].Rows[0]["rel_code"].ToString();
                Label4.Text = ds.Tables[0].Rows[0]["i_tax_code"].ToString();
                Label5.Text = ds.Tables[0].Rows[0]["p_title"].ToString();
                Label6.Text = ds.Tables[0].Rows[0]["i_date"].ToString();
                Label7.Text = ds.Tables[0].Rows[0]["i_pol_acc_certi"].ToString();
                Label8.Text = ds.Tables[0].Rows[0]["i_sum_value"].ToString();
                Label9.Text = ds.Tables[0].Rows[0]["i_premium"].ToString();
                Label10.Text = ds.Tables[0].Rows[0]["i_installment"].ToString();
                Label11.Text = ds.Tables[0].Rows[0]["i_maturity"].ToString();
                Label12.Text = ds.Tables[0].Rows[0]["i_status"].ToString();
                Label13.Text = ds.Tables[0].Rows[0]["c_date"].ToString();
                Label14.Text = ds.Tables[0].Rows[0]["u_date"].ToString();
            }
        }
        catch (Exception ex)
        { }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("inv_list.aspx");
    }
}