using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Client_index : System.Web.UI.Page
{
    Class1 c = new Class1();
    SqlCommand cmd;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        c.connection();
        if (!IsPostBack)
        {
            ds = c.sel_id("total_payment_client", Session["id"].ToString());
            Label1.Text = ds.Tables[0].Rows[0]["x"].ToString();
            Label2.Text = ds.Tables[0].Rows[0]["x"].ToString();


            ds = c.sel_id("pending_sel_req_id", Session["id"].ToString());
            Label3.Text = ds.Tables[0].Rows[0]["x"].ToString();
            Label4.Text = ds.Tables[0].Rows[0]["x"].ToString();

            ds = c.sel_id("payment_sel_client", Session["id"].ToString());
            Label5.Text = ds.Tables[0].Rows[0]["x"].ToString();
            Label6.Text = ds.Tables[0].Rows[0]["x"].ToString();

            ds = c.sel_id("total_payment_client", Session["id"].ToString());
            Label7.Text = ds.Tables[0].Rows[0]["y"].ToString();
            Label8.Text = ds.Tables[0].Rows[0]["y"].ToString();

            ds = c.sel_id("pending_sel_req_id",Session["id"].ToString());
            
            Label9.Text = ds.Tables[0].Rows[0]["y"].ToString();
            Label10.Text = ds.Tables[0].Rows[0]["y"].ToString();
                
            ds = c.sel_id("payment_sel_client", Session["id"].ToString());
            Label11.Text = ds.Tables[0].Rows[0]["y"].ToString();
            Label12.Text = ds.Tables[0].Rows[0]["y"].ToString();

            ds = c.sel_id("investment_sel_dash_client", Session["id"].ToString());
            Label13.Text = ds.Tables[0].Rows[0]["x"].ToString();
            Label14.Text = ds.Tables[0].Rows[0]["x"].ToString();

            ds = c.sel_id("investment_sel_dash_client", Session["id"].ToString());
            Label15.Text = ds.Tables[0].Rows[0]["y"].ToString();
            Label16.Text = ds.Tables[0].Rows[0]["y"].ToString();


            ds = c.sel_id("holder_sel_client_dash", Session["id"].ToString());
            Label17.Text = ds.Tables[0].Rows[0]["x"].ToString();
            Label18.Text = ds.Tables[0].Rows[0]["x"].ToString();
        }
    }
}