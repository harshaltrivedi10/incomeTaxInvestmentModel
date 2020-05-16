using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Admin_investment_report : System.Web.UI.Page
{
    Class1 c = new Class1();
    SqlCommand cmd;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        c.connection();
        if (!IsPostBack)
        {
            try
            {
                Label2.Text = System.DateTime.Now.ToShortDateString();

                ds = c.sel_all("investment_sel_admin");
                investments.DataSource = ds;
                investments.DataBind();
            }
            catch (Exception ex)
            { 

            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("investment_report.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {

            string str;

            if (TextBox2.Text.ToString() == "" && TextBox3.Text.ToString() == "")
            {
                str = "select * from investment_tb I , policy_tb P , holder_tb H, Relation_tb R, employee_tb E where I.e_id = E.e_id and I.p_id = P.p_id  and I.h_id = H.h_id and I.rel_id = R.rel_id and(P.p_title like '%" + TextBox1.Text + "%' OR H.h_name like '%" + TextBox1.Text + "%' OR E.e_name like '%" + TextBox1.Text + "%' OR I.i_pol_acc_certi like '%" + TextBox1.Text + "%')";
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

                str = "SELECT * from investment_tb where CONVERT(DATE,i_date) BETWEEN '" + TO + "' AND '" + FROM + "'";
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
                str = "select * from investment_tb I , policy_tb P , holder_tb H, Relation_tb R, employee_tb E where I.e_id = E.e_id and I.p_id = P.p_id  and I.h_id = H.h_id and I.rel_id = R.rel_id and CONVERT(DATE,i_date) BETWEEN '" + TO + "' AND '" + FROM + "' and (P.p_title like '%" + TextBox1.Text + "%' OR H.h_name like '%" + TextBox1.Text + "%' OR E.e_name like '%" + TextBox1.Text + "%' OR I.i_pol_acc_certi like '%" + TextBox1.Text + "%')";
            }

            ds = c.sel_search(str);
            if (ds.Tables[0].Rows.Count > 0)
            {
                investments.DataSource = ds;
                investments.DataBind();
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