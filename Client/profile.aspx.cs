using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Client_Default : System.Web.UI.Page
{
    
    Class1 c = new Class1();
    DataSet ds;
    string img = "";
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

        c.connection();
        Image1.Visible = true;
        if (!IsPostBack)
        {
            try
            {

                ds = c.sel_id("profile_details_emp", Session["c_mail"].ToString());
                
                TextBox1.Text = ds.Tables[0].Rows[0]["e_name"].ToString();
                TextBox2.Text = ds.Tables[0].Rows[0]["e_pan"].ToString();
                TextBox3.Text = ds.Tables[0].Rows[0]["e_code"].ToString();
                TextBox4.Text = ds.Tables[0].Rows[0]["e_acc_no"].ToString();
                TextBox5.Text = ds.Tables[0].Rows[0]["e_mail"].ToString();
                TextBox6.Text = ds.Tables[0].Rows[0]["e_dob"].ToString();
                Image1.ImageUrl = "../upload/" + ds.Tables[0].Rows[0]["e_image"].ToString();
                TextBox8.Text = ds.Tables[0].Rows[0]["e_aadhar"].ToString();
                TextBox10.Text = ds.Tables[0].Rows[0]["e_contact"].ToString();
                HiddenField1.Value = ds.Tables[0].Rows[0]["e_image"].ToString();

            
            }
            catch (Exception ex)
            {

            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
           
            string emp_img = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName.ToString());

            if (emp_img.Length > 0)
            {
                emp_img = System.DateTime.Now.Millisecond + emp_img;

                string str_path = "../upload/" + emp_img;
                FileUpload1.PostedFile.SaveAs(Server.MapPath(str_path).ToString());

                img = emp_img;
            }
            else
            {
                img = HiddenField1.Value;
            }


            string c_date = System.DateTime.Now.ToString();
            cmd = c.all("profile_upd");

            cmd.Parameters.AddWithValue("@e_name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@e_pan", TextBox2.Text);
            cmd.Parameters.AddWithValue("@e_code", TextBox3.Text);
            cmd.Parameters.AddWithValue("@e_acc_no", TextBox4.Text);
            cmd.Parameters.AddWithValue("@e_dob", TextBox6.Text);
            cmd.Parameters.AddWithValue("@e_image", img);
            cmd.Parameters.AddWithValue("@u_date", c_date);
            cmd.Parameters.AddWithValue("@e_contact", TextBox10.Text);
            cmd.Parameters.AddWithValue("@e_mail", Session["c_mail"].ToString());
            cmd.ExecuteNonQuery();


        }
        catch (Exception ex)
        {
        }

        Response.Redirect("index.aspx");

    }
    protected void TextBox8_TextChanged(object sender, EventArgs e)
    {

    }
}