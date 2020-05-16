using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Text;
public partial class Admin_Index : System.Web.UI.Page
{
    Class1 x = new Class1();
    DataSet ds;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        x.connection();
        string cur_date = System.DateTime.Now.ToShortDateString();

        try
        {
            ds = x.sel_all("payment_sel_dash");
            Label1.Text = ds.Tables[0].Rows[0]["x"].ToString();
            Label2.Text = ds.Tables[0].Rows[0]["x"].ToString();


            ds = x.sel_all("pending_req_sel");
            Label3.Text = ds.Tables[0].Rows[0]["x"].ToString();
            Label4.Text = ds.Tables[0].Rows[0]["x"].ToString();

            ds = x.sel_all("payment_approved_dash");
            Label5.Text = ds.Tables[0].Rows[0]["x"].ToString();
            Label6.Text = ds.Tables[0].Rows[0]["x"].ToString();


            ds = x.sel_all("payment_sel_dash");
            Label7.Text = ds.Tables[0].Rows[0]["y"].ToString();
            Label8.Text = ds.Tables[0].Rows[0]["y"].ToString();

            ds = x.sel_all("pending_req_sel");
            Label9.Text = ds.Tables[0].Rows[0]["y"].ToString();
            Label10.Text = ds.Tables[0].Rows[0]["y"].ToString();

            ds = x.sel_all("payment_approved_dash");
            Label11.Text = ds.Tables[0].Rows[0]["y"].ToString();
            Label12.Text = ds.Tables[0].Rows[0]["y"].ToString();

            ds = x.sel_all("employee_sel_dash");
            Label13.Text = ds.Tables[0].Rows[0]["x"].ToString();
            Label14.Text = ds.Tables[0].Rows[0]["x"].ToString();

            ds = x.sel_all("policy_sel_dash");
            Label15.Text = ds.Tables[0].Rows[0]["x"].ToString();
            Label16.Text = ds.Tables[0].Rows[0]["x"].ToString();

            ds = x.sel_all("investment_sel_dash");
            Label17.Text = ds.Tables[0].Rows[0]["x"].ToString();
            Label18.Text = ds.Tables[0].Rows[0]["x"].ToString();

            ds = x.sel_all("investment_sel_dash");
            Label19.Text = ds.Tables[0].Rows[0]["y"].ToString();
            Label20.Text = ds.Tables[0].Rows[0]["y"].ToString();

            
            cmd = x.all("pending_till_date");
            cmd.Parameters.AddWithValue("@cur_date",cur_date);
            Label21.Text = ds.Tables[0].Rows[0]["x"].ToString();
            Label22.Text = ds.Tables[0].Rows[0]["x"].ToString();


          }
        catch (Exception ex)
        {
            Label1.Text = ex.Message.ToString();
        }
    }
}