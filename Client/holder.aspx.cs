using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Client_holder_add : System.Web.UI.Page
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
                ds = c.sel_id("holder_sel_emp", Session["id"].ToString());
                holder.DataSource = ds;
                holder.DataBind();

                ds = c.sel_all("relation_sel");

                DropDownList2.DataSource = ds;
                DropDownList2.DataTextField = "rel_code";
                DropDownList2.DataValueField = "rel_id";
                DropDownList2.DataBind();
                DropDownList2.Items.Insert(0,"--Select--");

                Button2.Visible = false;

                string state = Request.QueryString["state"];
                string id = Request.QueryString["id"];

                if (state == "Edit")
                {
                    Panel1.Visible = false;
                    Button1.Visible = false;
                    Button2.Visible = true;


                    ds = c.sel_id("holder_sel_id", id);

                    TextBox1.Text = ds.Tables[0].Rows[0]["h_name"].ToString();
                    DropDownList1.SelectedValue = ds.Tables[0].Rows[0]["h_status"].ToString();
                    DropDownList2.SelectedValue = ds.Tables[0].Rows[0]["rel_id"].ToString();
                }
                else if (state == "Delete")
                {

                    cmd = c.all("holder_del");
                    cmd.Parameters.AddWithValue("@h_id", id);
                    cmd.ExecuteNonQuery();
                    Response.Redirect("holder.aspx");

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

            ds = c.sel_id("relation_sel_id",DropDownList2.SelectedValue);
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
            // object->method call

            cmd = c.all("holder_add");

            string c_date = System.DateTime.Now.ToString();
            // cmd parametr pass
            cmd.Parameters.AddWithValue("@e_id", Session["id"].ToString());
            cmd.Parameters.AddWithValue("@rel_id", DropDownList2.SelectedValue);
            cmd.Parameters.AddWithValue("@h_name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@h_status", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@c_date", c_date);
            cmd.ExecuteNonQuery();

            TextBox1.Text = "";

            Response.Redirect("holder.aspx");

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
            cmd = c.all("holder_upd");

            string c_date = System.DateTime.Now.ToString();
            
            cmd.Parameters.AddWithValue("@e_id", Session["id"].ToString());
            cmd.Parameters.AddWithValue("@h_id", Request.Params.Get("id").ToString());
            cmd.Parameters.AddWithValue("@rel_id", DropDownList2.SelectedValue);
            cmd.Parameters.AddWithValue("@h_name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@h_status", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@u_date", c_date);
            cmd.ExecuteNonQuery();

            Response.Redirect("holder.aspx");
        }
        catch (Exception ex)
        {
            TextBox1.Text = ex.Message.ToString();
        }
    }
    
}