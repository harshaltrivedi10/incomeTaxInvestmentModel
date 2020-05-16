using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_payments : System.Web.UI.Page
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

                if (TextBox1.Text == "")
                {
                    ds = c.sel_all("payment_sel_admin");
                    payments.DataSource = ds;
                    payments.DataBind();
                }


                string state = Request.QueryString["state"];
                string id = Request.QueryString["id"];

                if (state == "Delete")
                {
                    cmd = c.all("payment_del");
                    cmd.Parameters.AddWithValue("@pay_id", id);
                    cmd.ExecuteNonQuery();
                    Response.Redirect("payments.aspx");
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

            string str = "select * from payment_tb A, investment_tb I ,employee_tb E, policy_tb P, holder_tb H, Relation_tb R where A.e_id = E.e_id and A.inv_id = I.inv_id and I.p_id = P.p_id  and I.h_id = H.h_id and I.rel_id = R.rel_id and A.pay_status = '" + DropDownList1.SelectedValue +"'  and (A.pay_date = '" + TextBox1.Text + "' OR A.pay_receipt like '%" + TextBox1.Text + "%')";
            
            
            ds = c.sel_search(str);
            if (ds.Tables[0].Rows.Count > 0)
            {
                payments.DataSource = ds;
                payments.DataBind();
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