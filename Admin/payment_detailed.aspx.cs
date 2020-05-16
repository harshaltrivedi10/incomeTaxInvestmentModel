using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_payment_detailed : System.Web.UI.Page
{
    Class1 c = new Class1();
    DataSet ds;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        c.connection();
        try
        {
            if (!IsPostBack)
            {
                string pay_id = Request.QueryString["id"];
                ds = c.sel_id("payment_detailed_admin", pay_id);
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
                Label13.Text = ds.Tables[0].Rows[0]["c_date"].ToString();
                Label12.Text = ds.Tables[0].Rows[0]["pay_receipt"].ToString();
                Label14.Text = ds.Tables[0].Rows[0]["u_date"].ToString();
                Label15.Text = ds.Tables[0].Rows[0]["e_name"].ToString();
                Label16.Text = ds.Tables[0].Rows[0]["e_acc_no"].ToString();
                Label17.Text = ds.Tables[0].Rows[0]["pay_amnt"].ToString();
                Label18.Text = ds.Tables[0].Rows[0]["pay_date"].ToString();
                Label19.Text = ds.Tables[0].Rows[0]["pay_trans_no"].ToString();
                Label20.Text = ds.Tables[0].Rows[0]["pay_type"].ToString();
                TextBox1.Text = ds.Tables[0].Rows[0]["pay_remarks"].ToString();
                DropDownList1.SelectedValue = ds.Tables[0].Rows[0]["pay_status"].ToString();
                DropDownList2.SelectedValue = ds.Tables[0].Rows[0]["req_status"].ToString();
                Image1.ImageUrl = "../upload/" + ds.Tables[0].Rows[0]["e_image"].ToString();
            }
        }
        catch (Exception ex)
        {
            ex.Message.ToString();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string u_date = System.DateTime.Now.ToShortDateString();
        cmd = c.all("pay_detailed_upd");
        cmd.Parameters.AddWithValue("@pay_status", DropDownList1.SelectedValue);
        cmd.Parameters.AddWithValue("@req_status", DropDownList2.SelectedValue);
        cmd.Parameters.AddWithValue("@pay_remarks", TextBox1.Text);
        cmd.Parameters.AddWithValue("@u_date", u_date);
        cmd.Parameters.AddWithValue("@pay_id", Request.Params.Get("id").ToString());
        cmd.ExecuteNonQuery();
        Response.Redirect("payments.aspx");
    
    }
}