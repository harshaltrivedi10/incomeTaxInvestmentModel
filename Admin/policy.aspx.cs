using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Admin_policy : System.Web.UI.Page
{
    // object creat - class

    Class1 obj = new Class1();

    SqlCommand cmd;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        //connection

        obj.connection();

        try
        {

            if (!IsPostBack)
            {

                // select code

                ds = obj.sel_all("policy_sel");

                policy.DataSource = ds;
                policy.DataBind();

                Button2.Visible = false;

                string state = Request.QueryString["state"];
                string id = Request.QueryString["id"];

                if (state == "Edit")
                {
                    Panel1.Visible = false;
                    Button1.Visible = false;
                    Button2.Visible = true;


                    ds = obj.sel_id("policy_sel_id", id);

                    TextBox1.Text = ds.Tables[0].Rows[0]["p_title"].ToString();
                    TextBox2.Text = ds.Tables[0].Rows[0]["p_head_limit"].ToString();
                    TextBox3.Text = ds.Tables[0].Rows[0]["p_section"].ToString();
                    DropDownList1.SelectedValue = ds.Tables[0].Rows[0]["p_status"].ToString();
                }
                else if (state == "Delete")
                {

                    cmd = obj.all("policy_del");
                    cmd.Parameters.AddWithValue("@p_id", id);
                    cmd.ExecuteNonQuery();
                    Response.Redirect("policy.aspx");

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
            // object->method call

            cmd = obj.all("policy_add");

            string c_date = System.DateTime.Now.ToString();
            // cmd parametr pass
            cmd.Parameters.AddWithValue("@p_title", TextBox1.Text);
            cmd.Parameters.AddWithValue("@p_head_limit", TextBox2.Text);
            cmd.Parameters.AddWithValue("@p_section", TextBox3.Text);
            cmd.Parameters.AddWithValue("@p_status", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@c_date",c_date);
            cmd.ExecuteNonQuery();

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";

            Response.Redirect("policy.aspx");

        }
        catch(Exception ex)
        {
            TextBox1.Text = ex.Message.ToString();
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            string c_date = System.DateTime.Now.ToString();

            cmd = obj.all("policy_up");
            cmd.Parameters.AddWithValue("@p_title", TextBox1.Text);
            cmd.Parameters.AddWithValue("@p_head_limit", TextBox2.Text);
            cmd.Parameters.AddWithValue("@p_section", TextBox3.Text);
            cmd.Parameters.AddWithValue("@p_status", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@u_date",c_date);
            cmd.Parameters.AddWithValue("@p_id",Request.Params.Get("id").ToString());
            cmd.ExecuteNonQuery();

            Response.Redirect("policy.aspx");

        }
        catch (Exception ex)
        {
            TextBox1.Text = ex.Message.ToString();
        }
    }
    protected void policy_pageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        policy.CurrentPageIndex = e.NewPageIndex;

        ds = obj.sel_all("policy_sel");
        policy.DataSource = ds;
        policy.DataBind();
    }
}