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

public partial class Admin_pending_email_notifier : System.Web.UI.Page
{
    Class1 c = new Class1();
    DataSet ds;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        c.connection();
        try
        {
            string id = Request.QueryString["id"];
            ds =  c.sel_id("email_notifier",id);

            string hname = ds.Tables[0].Rows[0]["h_name"].ToString();
            string ename = ds.Tables[0].Rows[0]["e_name"].ToString();
            string i_premium = ds.Tables[0].Rows[0]["i_premium"].ToString();
            string paydate = ds.Tables[0].Rows[0]["next_pay_date"].ToString();
            string p_title = ds.Tables[0].Rows[0]["p_title"].ToString();
            string email = ds.Tables[0].Rows[0]["e_mail"].ToString();
            //Label1.Text = hname.ToString(); /*+ ename + i_premium + paydate + paydate + p_title + email*/
            using (MailMessage mm = new MailMessage("harshal30897@gmail.com", email.ToString()))
            {
                mm.Subject = "Installment Policy Payment - Income Tax Model.";
                string d = System.DateTime.Now.ToShortDateString() + ":" + System.DateTime.Now.ToShortTimeString();

                mm.Body = "<table width=100% style=font-family: SHREE_GUJ_OTF_0760><tr align=left><td colspan=2>Dear " + ename + " your pending payment details are given below. Please perform the payment at the earliest. Also, enter the payment details once the payment has been completed successfully, Please ignore this message if you have already completed the formalities:- </td></tr><tr align=left><td colspan=2> Policy:" + p_title + "</td></tr><tr align=left><td colspan=2>&nbsp;</td></tr><tr align=left><td colspan=2>Holder of the policy: " + hname + "</td></tr><tr align=left><td colspan=2>Your Payment Date: " + paydate + "</td></tr><tr align=left><td colspan=2>&nbsp;</td></tr><tr align=left><td colspan=2>Premium to be paid: " + i_premium + "</td></tr><tr align=left><td colspan=2>&nbsp;</td></tr><tr align=left><td colspan=2>Thanks,<br/> The Investment Model Admin.</td></tr></tablel>";


                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential("harshal30897@gmail.com", "thegamehbmt");
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);

                //Page.ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email sent.');", true);
                Response.Redirect("pending_payment_view.aspx");
            }
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message.ToString();
   
        }
    }
}