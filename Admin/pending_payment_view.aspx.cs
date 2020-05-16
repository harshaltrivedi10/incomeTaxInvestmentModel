using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;

public partial class Admin_pendin_payment_view : System.Web.UI.Page
{
    Class1 c = new Class1();
    DataSet ds,ds1;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        c.connection();
        
        try
        {
            if (!IsPostBack)
            {

                ds = c.sel_all("payment_till_date_page");

                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    string pay_id = ds.Tables[0].Rows[i]["inv_id"].ToString();
                    string next_date = ds.Tables[0].Rows[i]["next_pay_date"].ToString();
                    string pay_amnt = ds.Tables[0].Rows[i]["i_premium"].ToString();

                    ds1 = c.sel_data("payment_not_done", pay_id, pay_amnt, next_date);

                    if (ds1.Tables[0].Rows.Count==0)
                    {
                        pendingpay.DataSource = ds;
                        pendingpay.DataBind();
                    }

                }
                
                string state = Request.QueryString["state"];
                string id = Request.QueryString["id"];

                if(state == "Notify")
                {
                    ds = c.sel_id("get_pending_payment", id);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        string contact = ds.Tables[0].Rows[0]["e_contact"].ToString();
                        string premium = ds.Tables[0].Rows[0]["i_premium"].ToString();
                        string name = ds.Tables[0].Rows[0]["h_name"].ToString();
                        string nextdate = ds.Tables[0].Rows[0]["next_pay_date"].ToString();
                        string policy = ds.Tables[0].Rows[0]["p_title"].ToString();

                        WebClient client = new WebClient();
                        string str = client.DownloadString("http://smsc.biz/httpapi/send?username=diehardmessian@gmail.com&password=Harshallm10!&sender_id=PROMOTIONAL&route=P&phonenumber=" + contact + "&message=Holder Name:" + name + "\nDue Date:" + nextdate + "\nPolicy Title:" + policy + "\nAmount:" + premium);

                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Details have been sent successfully to the employee');window.location='pending_payment_view.aspx'", true);
                        //Label1.Text = ds.Tables[0].Rows[0]["e_aadhar"].ToString();
                    }
                    else
                    {
                        //Label1.Text = "Sorry! Such Email doesn't exist";
                    }
                }
            } 
        }
        catch (Exception ex)
        {

            //Label1.Text = ex.Message.ToString();
        }

    }
}