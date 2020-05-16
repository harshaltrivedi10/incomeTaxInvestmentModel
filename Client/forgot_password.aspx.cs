using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
public partial class Client_Default : System.Web.UI.Page
{
    Class1 c = new Class1();
    DataSet ds;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        c.connection();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

               ds = c.sel_id("forgot_password_client", TextBox1.Text.ToString());

                if (ds.Tables[0].Rows.Count > 0)
                {
                    string contact = ds.Tables[0].Rows[0]["e_contact"].ToString();
                    string password = ds.Tables[0].Rows[0]["e_aadhar"].ToString();

                    WebClient client = new WebClient();
                    string str = client.DownloadString("http://smsc.biz/httpapi/send?username=harshal30897@gmail.com&password=Harshal1!&sender_id=PROMOTIONAL&route=P&phonenumber=" + contact + "&message=Password :" + password);

                    ScriptManager.RegisterClientScriptBlock(this,this.GetType(),"alertMessage","alert('Your password has been sent to your registered mobile address successfully');window.location='login.aspx'",true);
                    //Label1.Text = ds.Tables[0].Rows[0]["e_aadhar"].ToString();
                }
                else
                {
                    Label1.Text = "Sorry! Such Email doesn't exist";
                }
              
           
        }
        catch (Exception ex)
        {
            TextBox1.Text = ex.Message.ToString();
        }

    }
}