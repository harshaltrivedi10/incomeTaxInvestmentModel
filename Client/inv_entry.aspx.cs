using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Client_inv_entry : System.Web.UI.Page
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

                string state = Request.QueryString["state"];
                string id = Request.QueryString["id"];
                
                ds = c.sel_all("policy_status");
                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "p_title";
                DropDownList1.DataValueField = "p_id";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, "--Select--");


                ds = c.sel_id("holder_sel_emp", Session["id"].ToString());
                DropDownList2.DataSource = ds;
                DropDownList2.DataTextField = "h_name";
                DropDownList2.DataValueField = "h_id";
                DropDownList2.DataBind();
                DropDownList2.Items.Insert(0, "--Select--");


                if (state == "Edit")
                {
                    ds = c.sel_id("investment_sel_id_inv", id);

                    DropDownList3.DataSource = ds;
                    DropDownList3.DataTextField = "rel_desc";
                    DropDownList3.DataValueField = "rel_id";
                    DropDownList3.DataBind();

                    Button1.Visible = false;
                    Button2.Visible = true;

                   
                    
                    TextBox1.Text = ds.Tables[0].Rows[0]["i_tax_code"].ToString();
                    DropDownList1.SelectedValue = ds.Tables[0].Rows[0]["p_id"].ToString();
                    TextBox2.Text = ds.Tables[0].Rows[0]["i_date"].ToString();
                    TextBox3.Text = ds.Tables[0].Rows[0]["i_pol_acc_certi"].ToString();
                    TextBox4.Text = ds.Tables[0].Rows[0]["i_sum_value"].ToString();
                    TextBox5.Text = ds.Tables[0].Rows[0]["i_maturity"].ToString();
                    TextBox6.Text = ds.Tables[0].Rows[0]["i_premium"].ToString();
                    DropDownList2.SelectedValue = ds.Tables[0].Rows[0]["h_id"].ToString();
                    DropDownList3.SelectedValue = ds.Tables[0].Rows[0]["rel_id"].ToString();
                    DropDownList5.SelectedValue = ds.Tables[0].Rows[0]["i_status"].ToString();
                   
                }
            }

        }
        catch (Exception ex)
        { 
        }
    }


    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
       
        try
        {
            DropDownList3.Items.Clear();

            ds = c.sel_id("holder_by_relation", DropDownList2.SelectedValue);
            DropDownList3.DataSource = ds;
            DropDownList3.DataTextField = "rel_desc";
            DropDownList3.DataValueField = "rel_id";
            DropDownList3.DataBind();

        }
        catch (Exception ex)
        {

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string c_date = System.DateTime.Now.ToString();

            ds = c.sel_id("policy_sel_id",DropDownList1.SelectedValue);
            int limit = int.Parse(ds.Tables[0].Rows[0]["p_head_limit"].ToString());
            string sec = ds.Tables[0].Rows[0]["p_section"].ToString();
            cmd = c.all("investment_add");

            if (int.Parse(TextBox4.Text.ToString()) <= limit)
            {
                cmd.Parameters.AddWithValue("@e_id", Session["id"].ToString());
                cmd.Parameters.AddWithValue("@p_id", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@h_id", DropDownList2.SelectedValue);
                cmd.Parameters.AddWithValue("@rel_id", DropDownList3.SelectedValue);
                cmd.Parameters.AddWithValue("@i_tax_code", TextBox1.Text);
                cmd.Parameters.AddWithValue("@i_date", TextBox2.Text);
                cmd.Parameters.AddWithValue("@i_pol_acc_certi", TextBox3.Text);
                cmd.Parameters.AddWithValue("@i_sum_value", TextBox4.Text);
                cmd.Parameters.AddWithValue("@i_maturity", TextBox5.Text);
                cmd.Parameters.AddWithValue("@i_premium", TextBox6.Text);
                cmd.Parameters.AddWithValue("@c_date", c_date);
                cmd.Parameters.AddWithValue("@i_status", "Active");
                cmd.Parameters.AddWithValue("@pay_status", "Active");
                cmd.Parameters.AddWithValue("@i_installment", DropDownList5.SelectedValue);
                cmd.ExecuteNonQuery();


                Response.Redirect("inv_list.aspx");
            }
            else
            {
             
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Section "+sec+" has limit of "+limit+"! Please try again');window.location='inv_entry.aspx'", true);
            }

        }
        catch (Exception ex)
        {
            TextBox1.Text = ex.Message.ToString();
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
            string c_date = System.DateTime.Now.ToString();
            
            
            try
            {
               
                string id = Request.QueryString["id"];
                ds = c.sel_id("policy_sel_id", DropDownList1.SelectedValue);
                int limit = int.Parse(ds.Tables[0].Rows[0]["p_head_limit"].ToString());
                cmd = c.all("investment_up");
                if (int.Parse(TextBox4.Text.ToString()) <= limit)
                {
                    cmd.Parameters.AddWithValue("@inv_id", id);
                    cmd.Parameters.AddWithValue("@p_id", DropDownList1.SelectedValue);
                    cmd.Parameters.AddWithValue("@h_id", DropDownList2.SelectedValue);
                    cmd.Parameters.AddWithValue("@rel_id", DropDownList3.SelectedValue);
                    cmd.Parameters.AddWithValue("@i_tax_code", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@i_date", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@i_pol_acc_certi", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@i_sum_value", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@i_maturity", TextBox5.Text);
                    cmd.Parameters.AddWithValue("@i_premium", TextBox6.Text);
                    cmd.Parameters.AddWithValue("@u_date", c_date);
                    cmd.Parameters.AddWithValue("@i_status", "Active");
                    cmd.Parameters.AddWithValue("@i_installment", DropDownList5.SelectedValue);
                    cmd.ExecuteNonQuery();

                    Response.Redirect("inv_list.aspx");
                }

            }
            catch (Exception ex)
            {
                TextBox1.Text = ex.Message.ToString();
            }
    }
}