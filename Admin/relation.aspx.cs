using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_relation : System.Web.UI.Page
{
    Class1 obj = new Class1();

    SqlCommand cmd;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        obj.connection();

        try
        {

            if (!IsPostBack)
            {

                ds = obj.sel_all("relation_sel");

                relation.DataSource = ds;
                relation.DataBind();

                Button2.Visible = false;

                string state = Request.QueryString["state"];
                string id = Request.QueryString["id"];

                if (state == "Edit")
                {
                    Panel1.Visible = false;
                    Button1.Visible = false;
                    Button2.Visible = true;


                    ds = obj.sel_id("relation_sel_id", id);

                    TextBox1.Text = ds.Tables[0].Rows[0]["rel_code"].ToString();
                    TextBox2.Text = ds.Tables[0].Rows[0]["rel_desc"].ToString();
                    DropDownList1.SelectedValue = ds.Tables[0].Rows[0]["rel_status"].ToString();

                }
                else if (state == "Delete")
                {

                    cmd = obj.all("relation_del");
                    cmd.Parameters.AddWithValue("@rel_id", id);
                    cmd.ExecuteNonQuery();
                    Response.Redirect("relation.aspx");

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

            cmd = obj.all("relation_add");

            string c_date = System.DateTime.Now.ToString();
            // cmd parametr pass
            cmd.Parameters.AddWithValue("@rel_code", TextBox1.Text);
            cmd.Parameters.AddWithValue("@rel_desc", TextBox2.Text);
            cmd.Parameters.AddWithValue("@rel_status", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@c_date", c_date);
            cmd.ExecuteNonQuery();

            TextBox1.Text = "";
            TextBox2.Text = "";

            Response.Redirect("relation.aspx");

        }
        catch (Exception ex)
        {
            TextBox1.Text = ex.Message.ToString();
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            string c_date = System.DateTime.Now.ToString();

            cmd = obj.all("relation_upd");
            cmd.Parameters.AddWithValue("@rel_code", TextBox1.Text);
            cmd.Parameters.AddWithValue("@rel_desc", TextBox2.Text);
            cmd.Parameters.AddWithValue("@rel_status", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@u_date", c_date);
            cmd.Parameters.AddWithValue("@rel_id", Request.Params.Get("id").ToString());
            cmd.ExecuteNonQuery();

            Response.Redirect("relation.aspx");

        }
        catch (Exception ex)
        {
            TextBox1.Text = ex.Message.ToString();
        }


    }
}