using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_payments_report : System.Web.UI.Page
{
    Class1 c1 = new Class1();
    DataSet ds;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        c1.connection();
        if (!IsPostBack)
        {
            try
            {

                Label2.Text = System.DateTime.Now.ToShortDateString();

                ds = c1.sel_all("payment_sel_admin");
                payments.DataSource = ds;
                payments.DataBind();
            }
            catch (Exception ex)
            {

            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("payments_report.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {

            string str;

            if (TextBox2.Text.ToString() == "" && TextBox3.Text.ToString() == "")
            {
                str = "select * from employee_tb E, policy_tb P, holder_tb H, Relation_tb R, payment_tb A, investment_tb I where E.e_id = A.e_id and A.inv_id = I.inv_id and I.h_id = H.h_id and I.rel_id = R.rel_id and I.p_id = P.p_id and (H.h_name like '%" + TextBox1.Text + "%' OR I.i_pol_acc_certi like '%" + TextBox1.Text + "%' OR H.h_name like '%" + TextBox1.Text + "%' OR A.pay_receipt = '" + TextBox1.Text + "' OR A.pay_status = '" + TextBox1.Text + "')";
            }

            else if (TextBox1.Text.ToString() == "")
            {
                string to = TextBox2.Text.ToString();
                string[] to1 = to.Split('-');
                string TO = to1[2] + "/" + to1[1] + "/" + to1[0];

                Label1.Text = TO;

                string from = TextBox3.Text.ToString();
                string[] from1 = from.Split('-');
                string FROM = from1[2] + "/" + from1[1] + "/" + from1[0];
                Label2.Text = FROM;

                str = "select * from employee_tb E, policy_tb P, holder_tb H, Relation_tb R, payment_tb A, investment_tb I where E.e_id = A.e_id and A.inv_id = I.inv_id and I.h_id = H.h_id and I.rel_id = R.rel_id and I.p_id = P.p_id and CONVERT(DATE,A.pay_date) BETWEEN '" + TO + "' AND '" + FROM + "'";
                //str = "select DATE(E.c_date) from employee_tb  where E.c_date BETWEEN '" + TextBox2.Text.ToString() + "' AND '" + TextBox3.Text.ToString() + "'";
            }
            else
            {
                string to = TextBox2.Text.ToString();
                string[] to1 = to.Split('-');
                string TO = to1[2] + "/" + to1[1] + "/" + to1[0];

                string from = TextBox3.Text.ToString();
                string[] from1 = from.Split('-');
                string FROM = from1[2] + "/" + from1[1] + "/" + from1[0];
                Label1.Text = TO;
                str = "select * from employee_tb E, policy_tb P, holder_tb H, Relation_tb R, payment_tb A, investment_tb I where E.e_id = A.e_id and A.inv_id = I.inv_id and I.h_id = H.h_id and I.rel_id = R.rel_id and I.p_id = P.p_id and CONVERT(DATE,A.pay_date) BETWEEN '" + TO + "' AND '" + FROM + "' and (H.h_name like '%" + TextBox1.Text + "%' OR I.i_pol_acc_certi like '%" + TextBox1.Text + "%' OR H.h_name like '%" + TextBox1.Text + "%' OR A.pay_receipt = '" + TextBox1.Text + "' OR A.pay_status = '" + TextBox1.Text + "')";
            }

            ds = c1.sel_search(str);
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
            Label1.Text = ex.Message.ToString();
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx");
    }
}