using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_investments : System.Web.UI.Page
{
    Class1 c = new Class1();
    SqlCommand cmd;
    DataSet ds,ds1;

    protected void Page_Load(object sender, EventArgs e)
    {
        c.connection();

        try
        {
            if (!IsPostBack)
            {
                if (TextBox1.Text == "")
                {
                    ds = c.sel_all("investment_sel_admin");
                    investments.DataSource = ds;
                    investments.DataBind();
                    ds1 = c.sel_all("investment_value_total");
                    Label1.Text = "Total Amount: " + ds1.Tables[0].Rows[0]["x"].ToString();
                }
                string state = Request.QueryString["state"];
                string id = Request.QueryString["id"];

                if (state == "Delete")
                {
                    cmd = c.all("investment_del");
                    cmd.Parameters.AddWithValue("@inv_id", id);
                    cmd.ExecuteNonQuery();
                    Response.Redirect("investments.aspx");
                }
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

            string str = "select * from investment_tb I , policy_tb P , employee_tb E , holder_tb H, Relation_tb R where I.p_id = P.p_id and I.e_id = E.e_id and I.h_id = H.h_id and I.rel_id = R.rel_id and (H.h_name = '" + TextBox1.Text + "' OR  P.p_title like '%" + TextBox1.Text + "%' OR  I.i_pol_acc_certi like '%" + TextBox1.Text + "%')";
            string str1 = "select sum(I.i_sum_value) as x from investment_tb I , policy_tb P , employee_tb E , holder_tb H, Relation_tb R where I.p_id = P.p_id and I.e_id = E.e_id and I.h_id = H.h_id and I.rel_id = R.rel_id and (H.h_name = '" + TextBox1.Text + "' OR  P.p_title like '%" + TextBox1.Text + "%' OR  I.i_pol_acc_certi like '%" + TextBox1.Text + "%')";
            ds = c.sel_search(str);
            ds1 = c.sel_search(str1);
            if (ds.Tables[0].Rows.Count > 0)
            {
                investments.DataSource = ds;
                investments.DataBind();
                Label1.Text = "Total Amount: " + ds1.Tables[0].Rows[0]["x"].ToString();
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(),"alertMessage","alert('Data Not Available')",true);
            }

        }
        catch (Exception ex)
        {
 
        }
    }


    protected void investments_pageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        investments.CurrentPageIndex = e.NewPageIndex;

        ds = c.sel_all("investment_sel_admin");
        investments.DataSource = ds;
        investments.DataBind();
    }
}