using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Client_payment_search : System.Web.UI.Page
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

            }
        }
        catch (Exception ex)
        {
 
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            string str = "select * from investment_tb I , policy_tb P , holder_tb H, Relation_tb R where I.p_id = P.p_id  and I.h_id = H.h_id and I.rel_id = R.rel_id and I.e_id = '"+Session["id"].ToString() +"' and I.next_pay_date BETWEEN '"+TextBox1.Text+"' and '"+TextBox2.Text+"' ";
            ds = c.sel_search(str);
            if (ds.Tables[0].Rows.Count > 0)
            {
                investment.DataSource = ds;
                investment.DataBind();
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Data Not Available')", true);
            }

        }
        catch (Exception ex)
        {

        }
    }
}