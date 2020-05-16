using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;



public partial class Admin_emp_entry : System.Web.UI.Page
{
    Class1 obj = new Class1();
    SqlCommand cmd;
    DataSet ds;
    string img = "";
    protected void Page_Load(object sender, EventArgs e)
    { 
        obj.connection();

        Button3.Visible = false;
        Image1.Visible = false;

        if (!IsPostBack)
        {



            string state = Request.QueryString["state"];
            string id = Request.QueryString["id"];

            
            if (state == "Edit")
            {

                ds = obj.sel_id("emp_sel_id", id);
                Button2.Visible = false;
                Image1.Visible = true;
                Button3.Visible = true;

                TextBox1.Text = ds.Tables[0].Rows[0]["e_name"].ToString();
                TextBox2.Text = ds.Tables[0].Rows[0]["e_pan"].ToString();
                TextBox3.Text = ds.Tables[0].Rows[0]["e_code"].ToString();
                TextBox4.Text = ds.Tables[0].Rows[0]["e_acc_no"].ToString();
                TextBox5.Text = ds.Tables[0].Rows[0]["e_mail"].ToString();
                TextBox6.Text = ds.Tables[0].Rows[0]["e_dob"].ToString();
                Image1.ImageUrl =  "../upload/" + ds.Tables[0].Rows[0]["e_image"].ToString();
                TextBox8.Text = ds.Tables[0].Rows[0]["e_aadhar"].ToString();
                DropDownList1.SelectedValue = ds.Tables[0].Rows[0]["e_status"].ToString();
                TextBox10.Text = ds.Tables[0].Rows[0]["e_contact"].ToString();
                HiddenField1.Value = ds.Tables[0].Rows[0]["e_image"].ToString();
 
            }

        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        try
        {

            ds = obj.sel_id("check_mail", TextBox5.Text.ToString());
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label1.Visible = true;
                Label1.Text = "<script>alert('This Email Already Exists..!');</script>";
            }
            else
            {

                string emp_img = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName.ToString());

                emp_img = System.DateTime.Now.Millisecond + emp_img;

                string str_path = "../upload/" + emp_img;

                FileUpload1.PostedFile.SaveAs(Server.MapPath(str_path).ToString());

                cmd = obj.all("emp_add");

                string c_date = System.DateTime.Now.ToString();
          
           
                cmd.Parameters.AddWithValue("@e_name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@e_pan", TextBox2.Text);
                cmd.Parameters.AddWithValue("@e_code", TextBox3.Text);
                cmd.Parameters.AddWithValue("@e_acc_no", TextBox4.Text);
                cmd.Parameters.AddWithValue("@e_mail", TextBox5.Text);
                cmd.Parameters.AddWithValue("@e_dob", TextBox6.Text);
                cmd.Parameters.AddWithValue("@e_image", emp_img);
                cmd.Parameters.AddWithValue("@e_aadhar", TextBox8.Text);
                cmd.Parameters.AddWithValue("@c_date", c_date);
                cmd.Parameters.AddWithValue("@e_status", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@e_contact", TextBox10.Text);
                cmd.ExecuteNonQuery();


                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox8.Text = "";

                Response.Redirect("employee_list.aspx");
            }
        }
        catch (Exception ex)
        {
            TextBox1.Text = ex.Message.ToString();
        }


    }

    protected void Button3_Click(object sender, EventArgs e)
    {

        try
        {
            string c_date = System.DateTime.Now.ToString();
            
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
            
            cmd = obj.all("employee_up");
            
            cmd.Parameters.AddWithValue("@e_name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@e_pan", TextBox2.Text);
            cmd.Parameters.AddWithValue("@e_code", TextBox3.Text);
            cmd.Parameters.AddWithValue("@e_acc_no", TextBox4.Text);
            cmd.Parameters.AddWithValue("@e_mail", TextBox5.Text);
            cmd.Parameters.AddWithValue("@e_dob", TextBox6.Text);
            cmd.Parameters.AddWithValue("@e_image", img);
            cmd.Parameters.AddWithValue("@e_aadhar", TextBox8.Text);
            cmd.Parameters.AddWithValue("@u_date", c_date);
            cmd.Parameters.AddWithValue("@e_status", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@e_contact", TextBox10.Text);
            cmd.Parameters.AddWithValue("@e_id", Request.Params.Get("id").ToString());
            cmd.ExecuteNonQuery();
            Response.Redirect("employee_list.aspx");

        }
        catch (Exception ex)
        {
            TextBox1.Text = ex.Message.ToString();
        }

    }
}