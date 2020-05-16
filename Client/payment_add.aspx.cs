using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
 
public partial class Client_payment_add : System.Web.UI.Page
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
                
                string state = Request.QueryString["state"];
                string id = Request.QueryString["id"];
                
                if (state == "Edit")
                {
                    Button1.Visible = false;

                    Button2.Visible = true;
                    Panel1.Visible = false;

                    ds = c.sel_id("payment_sel_id",id);
                    TextBox1.Text = ds.Tables[0].Rows[0]["pay_date"].ToString();
                    TextBox2.Text = ds.Tables[0].Rows[0]["pay_amnt"].ToString();
                    TextBox3.Text = ds.Tables[0].Rows[0]["pay_receipt"].ToString();
                    TextBox4.Text = ds.Tables[0].Rows[0]["pay_trans_no"].ToString();
                    DropDownList1.SelectedValue = ds.Tables[0].Rows[0]["pay_type"].ToString();
                }

                ds = c.sel_id("investment_sel_id_inv", Request.Params.Get("id").ToString());
                Label1.Text = ds.Tables[0].Rows[0]["h_name"].ToString();
                Label2.Text = ds.Tables[0].Rows[0]["i_pol_acc_certi"].ToString();

            }
        }
        catch (Exception ex)
        { 

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string c_date = System.DateTime.Now.ToShortDateString();
        string remark = "--";
        cmd = c.all("payment_add");
        cmd.Parameters.AddWithValue("@e_id", Session["id"].ToString());
        cmd.Parameters.AddWithValue("@inv_id",Request.Params.Get("id").ToString());
        cmd.Parameters.AddWithValue("@pay_date", TextBox1.Text);
        cmd.Parameters.AddWithValue("@pay_amnt", TextBox2.Text);
        cmd.Parameters.AddWithValue("@pay_receipt", TextBox3.Text);
        cmd.Parameters.AddWithValue("@pay_trans_no", TextBox4.Text);
        cmd.Parameters.AddWithValue("@pay_status", "Pending");
        cmd.Parameters.AddWithValue("@c_date", c_date);
        cmd.Parameters.AddWithValue("@del_status","Deactive");
        cmd.Parameters.AddWithValue("@req_status", "Deactive");
        cmd.Parameters.AddWithValue("@pay_remarks", remark);
        cmd.Parameters.AddWithValue("@pay_type", DropDownList1.SelectedValue);
        cmd.ExecuteNonQuery();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string u_date = System.DateTime.Now.ToShortDateString();
        cmd = c.all("payment_up");
        string remark = "--";
        cmd.Parameters.AddWithValue("@pay_date", TextBox1.Text);
        cmd.Parameters.AddWithValue("@pay_amnt", TextBox2.Text);
        cmd.Parameters.AddWithValue("@pay_receipt", TextBox3.Text);
        cmd.Parameters.AddWithValue("@pay_trans_no", TextBox4.Text);
        cmd.Parameters.AddWithValue("@pay_type", DropDownList1.SelectedValue);
        cmd.Parameters.AddWithValue("@pay_status", "Pending");
        cmd.Parameters.AddWithValue("@req_status", "Active");
        cmd.Parameters.AddWithValue("@pay_remarks", remark);
        cmd.Parameters.AddWithValue("@u_date", u_date);
        cmd.Parameters.AddWithValue("@pay_id", Request.Params.Get("id").ToString());
        cmd.ExecuteNonQuery();

        Response.Redirect("payments_list.aspx");
    }
}