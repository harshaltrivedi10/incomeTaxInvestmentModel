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

public partial class Admin_Admin : System.Web.UI.MasterPage
{
    Class1 x = new Class1();
    DataSet ds;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        x.connection();

        try
        {
            if (Session["login"].ToString() != null || Session["image"].ToString() != null || Session["last"].ToString() != null)
            {
                Label1.Text = Session["last"].ToString();
                Label2.Text = Session["login"].ToString();

                Image1.ImageUrl = "img/" + Session["image"].ToString();

            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }
        catch (Exception ex)
        {
            Response.Redirect("login.aspx");
        }

        try
        {
            ds = x.sel_all("check_invest_mail");

            string email = "";
            string today = System.DateTime.Now.ToShortDateString();
            DateTime i_date;
            DateTime pay_date;
            string p_date = "";
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {

                if (ds.Tables[0].Rows[i]["i_installment"].ToString() == "Monthly")
                {
                    
                    email = email + ds.Tables[0].Rows[i]["e_mail"].ToString();
                    i_date = DateTime.Parse(ds.Tables[0].Rows[i]["i_date"].ToString());
                    pay_date = i_date.AddMonths(1);
                    while (pay_date < DateTime.Parse(ds.Tables[0].Rows[i]["i_maturity"].ToString()))
                    {
                       
                        p_date = pay_date.ToShortDateString();
                        if ((DateTime.Parse(p_date) > DateTime.Parse(p_date).AddMonths(-1)) && DateTime.Parse(p_date) < System.DateTime.Now)
                        {
                            string[] tokens = p_date.Split('/');
                            string dat = tokens[2] + "-" + tokens[1] + "-" + tokens[0];
                            string inv_id = ds.Tables[0].Rows[i]["inv_id"].ToString();
                            if (ds.Tables[0].Rows[i]["pay_status"].ToString() == "Active")
                            {
                                try
                                {
                                    using (MailMessage mm = new MailMessage("harshal30897@gmail.com", email.ToString()))
                                    {
                                        mm.Subject = "Monthly Installment Policy Payment - Income Tax Model.";
                                        string d = System.DateTime.Now.ToShortDateString() + ":" + System.DateTime.Now.ToShortTimeString();

                                        mm.Body = "<table width=100% style=font-family: SHREE_GUJ_OTF_0760><tr align=left><td colspan=2>Dear Employee,</td></tr><tr align=left><td colspan=2>&nbsp;</td></tr><tr align=left><td colspan=2>Your Payment Date: " + d + "</td></tr><tr align=left><td colspan=2>&nbsp;</td></tr><tr align=left><td colspan=2>Your Payment Date : " + p_date + "</td></tr><tr align=left><td colspan=2>&nbsp;</td></tr><tr align=left><td colspan=2>Thanks,<br/> The Investment Model Admin.</td></tr></tablel>";


                                        mm.IsBodyHtml = true;
                                        SmtpClient smtp = new SmtpClient();
                                        smtp.Host = "smtp.gmail.com";
                                        smtp.EnableSsl = true;
                                        NetworkCredential NetworkCred = new NetworkCredential("harshal30897@gmail.com", "thegamehbmt");
                                        smtp.UseDefaultCredentials = true;
                                        smtp.Credentials = NetworkCred;
                                        smtp.Port = 587;
                                        smtp.Send(mm);

                                        Page.ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email sent.');", true);
                                        cmd = x.all("payment_mail_up");
                                        cmd.Parameters.AddWithValue("@inv_id", inv_id);
                                        cmd.Parameters.AddWithValue("@next_pay_date", dat);
                                        cmd.ExecuteNonQuery();
                                    }
                                }
                                catch (Exception ex)
                                {
                                    ex.Message.ToString();
                                }
                            }
                         }

                        pay_date = pay_date.AddMonths(1);

                    }
                }
                p_date = "";
                email = "";

                if (ds.Tables[0].Rows[i]["i_installment"].ToString() == "Quarterly")
                {
                    email = email + ds.Tables[0].Rows[i]["e_mail"].ToString();
                    i_date = DateTime.Parse(ds.Tables[0].Rows[i]["i_date"].ToString());
                    pay_date = i_date.AddMonths(3);

                    while (pay_date < DateTime.Parse(ds.Tables[0].Rows[i]["i_maturity"].ToString()))
                    {
                        p_date = pay_date.ToShortDateString();
                        string[] tokens = p_date.Split('/');
                        string dat = tokens[2] + "-" + tokens[1] + "-" + tokens[0];
                        string inv_id = ds.Tables[0].Rows[i]["inv_id"].ToString();
                        if (ds.Tables[0].Rows[i]["pay_status"].ToString() == "Active")
                        {
                            try
                            {
                                using (MailMessage mm = new MailMessage("harshal30897@gmail.com", email.ToString()))
                                {
                                    mm.Subject = "Quarterly Installment Policy Payment - Incom Tax Model.";
                                    string d = System.DateTime.Now.ToShortDateString() + ":" + System.DateTime.Now.ToShortTimeString();

                                    mm.Body = "<table width=100% style=font-family: SHREE_GUJ_OTF_0760><tr align=left><td colspan=2>Dear User,</td></tr><tr align=left><td colspan=2>&nbsp;</td></tr><tr align=left><td colspan=2>Your Charity Ngo Password Recovery On" + d + "</td></tr><tr align=left><td colspan=2>&nbsp;</td></tr><tr align=left><td colspan=2>Your Payment Date : " + p_date + "</td></tr><tr align=left><td colspan=2>&nbsp;</td></tr><tr align=left><td colspan=2>Thanks,<br/> The Charity Team.</td></tr></tablel>";


                                    mm.IsBodyHtml = true;
                                    SmtpClient smtp = new SmtpClient();
                                    smtp.Host = "smtp.gmail.com";
                                    smtp.EnableSsl = true;
                                    NetworkCredential NetworkCred = new NetworkCredential("harshal30897@gmail.com", "thegamehbmt");
                                    smtp.UseDefaultCredentials = true;
                                    smtp.Credentials = NetworkCred;
                                    smtp.Port = 587;
                                    smtp.Send(mm);
                                    Page.ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email sent.');", true);


                                    cmd = x.all("payment_mail_up");
                                    cmd.Parameters.AddWithValue("@inv_id", inv_id);
                                    cmd.Parameters.AddWithValue("@next_pay_date",dat);
                                    cmd.ExecuteNonQuery();
                                }
                            }
                            catch (Exception ex)
                            {
                                ex.Message.ToString();
                            }
                        }
                        pay_date = pay_date.AddMonths(3);
                    }
                }
                p_date = "";
                email = "";

                if (ds.Tables[0].Rows[i]["i_installment"].ToString() == "Half-yearly")
                {
                    email = email + ds.Tables[0].Rows[i]["e_mail"].ToString();
                    i_date = DateTime.Parse(ds.Tables[0].Rows[i]["i_date"].ToString());
                    pay_date = i_date.AddMonths(6);
                    while (pay_date < DateTime.Parse(ds.Tables[0].Rows[i]["i_maturity"].ToString()))
                    {
                        p_date = pay_date.ToShortDateString();
                        string[] tokens = p_date.Split('/');
                        string dat = tokens[2] + "-" + tokens[1] + "-" + tokens[0];
                        
                        string inv_id = ds.Tables[0].Rows[i]["inv_id"].ToString();
                        if (ds.Tables[0].Rows[i]["pay_status"].ToString() == "Active")
                        {
                            try
                            {
                                using (MailMessage mm = new MailMessage("harshal30897@gmail.com", email.ToString()))
                                {
                                    mm.Subject = "Half - Yearly Installment Policy Payment - Incom Tax Model.";
                                    string d = System.DateTime.Now.ToShortDateString() + ":" + System.DateTime.Now.ToShortTimeString();

                                    mm.Body = "<table width=100% style=font-family: SHREE_GUJ_OTF_0760><tr align=left><td colspan=2>Dear User,</td></tr><tr align=left><td colspan=2>&nbsp;</td></tr><tr align=left><td colspan=2>Your Charity Ngo Password Recovery On" + d + "</td></tr><tr align=left><td colspan=2>&nbsp;</td></tr><tr align=left><td colspan=2>Your Payment Date : " + p_date + "</td></tr><tr align=left><td colspan=2>&nbsp;</td></tr><tr align=left><td colspan=2>Thanks,<br/> The Charity Team.</td></tr></tablel>";


                                    mm.IsBodyHtml = true;
                                    SmtpClient smtp = new SmtpClient();
                                    smtp.Host = "smtp.gmail.com";
                                    smtp.EnableSsl = true;
                                    NetworkCredential NetworkCred = new NetworkCredential("harshal30897@gmail.com", "thegamehbmt");
                                    smtp.UseDefaultCredentials = true;
                                    smtp.Credentials = NetworkCred;
                                    smtp.Port = 587;
                                    smtp.Send(mm);
                                    Page.ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email sent.');", true);


                                    cmd = x.all("payment_mail_up");
                                    cmd.Parameters.AddWithValue("@inv_id", inv_id);
                                    cmd.Parameters.AddWithValue("@next_pay_date", dat);
                                    cmd.ExecuteNonQuery();
                                }
                            }
                            catch (Exception ex)
                            {
                                ex.Message.ToString();
                            }
                        }
                        pay_date = pay_date.AddMonths(6);
                    }
                }
                p_date = "";
                email = "";

                if (ds.Tables[0].Rows[i]["i_installment"].ToString() == "Yearly")
                {
                    email = email + ds.Tables[0].Rows[i]["e_mail"].ToString();
                    i_date = DateTime.Parse(ds.Tables[0].Rows[i]["i_date"].ToString());
                    pay_date = i_date.AddYears(1);
                    while (pay_date < DateTime.Parse(ds.Tables[0].Rows[i]["i_maturity"].ToString()))
                    {
                        p_date = pay_date.ToShortDateString();
                        string[] tokens = p_date.Split('/');
                        string dat = tokens[2] + "-" + tokens[1] + "-" + tokens[0];
                        string inv_id = ds.Tables[0].Rows[i]["inv_id"].ToString();
                        if (ds.Tables[0].Rows[i]["pay_status"].ToString() == "Active")
                        {
                            try
                            {
                                using (MailMessage mm = new MailMessage("harshal30897@gmail.com", email.ToString()))
                                {
                                    mm.Subject = "Yearly Installment Policy Payment - Incom Tax Model.";
                                    string d = System.DateTime.Now.ToShortDateString() + ":" + System.DateTime.Now.ToShortTimeString();

                                    mm.Body = "<table width=100% style=font-family: SHREE_GUJ_OTF_0760><tr align=left><td colspan=2>Dear User,</td></tr><tr align=left><td colspan=2>&nbsp;</td></tr><tr align=left><td colspan=2>Your Charity Ngo Password Recovery On" + d + "</td></tr><tr align=left><td colspan=2>&nbsp;</td></tr><tr align=left><td colspan=2>Your Payment Date : " + p_date + "</td></tr><tr align=left><td colspan=2>&nbsp;</td></tr><tr align=left><td colspan=2>Thanks,<br/> The Charity Team.</td></tr></tablel>";


                                    mm.IsBodyHtml = true;
                                    SmtpClient smtp = new SmtpClient();
                                    smtp.Host = "smtp.gmail.com";
                                    smtp.EnableSsl = true;
                                    NetworkCredential NetworkCred = new NetworkCredential("harshal30897@gmail.com", "thegamehbmt");
                                    smtp.UseDefaultCredentials = true;
                                    smtp.Credentials = NetworkCred;
                                    smtp.Port = 587;
                                    smtp.Send(mm);
                                    Page.ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email sent.');", true);


                                    cmd = x.all("payment_mail_up");
                                    cmd.Parameters.AddWithValue("@inv_id", inv_id);
                                    cmd.Parameters.AddWithValue("@next_pay_date", dat);
                                    cmd.ExecuteNonQuery();
                                }
                            }
                            catch (Exception ex)
                            {
                                ex.Message.ToString();
                            }
                        }
                        pay_date = pay_date.AddYears(1);
                    }
                }
            }
            p_date = "";
            email = "";
        }
        catch (Exception ex)
        {

        }

    }
}
