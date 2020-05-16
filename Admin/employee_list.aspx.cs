using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Admin_employee_list : System.Web.UI.Page
{

    Class1 c1 = new Class1();
    DataSet ds;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        c1.connection();

        try
        {

            if (!IsPostBack)
            {

                ds = c1.sel_all("emp_sel");
                employee.DataSource = ds;
                employee.DataBind();

                string state = Request.QueryString["state"];
                string id = Request.QueryString["id"];



                if (state == "Delete")
                {
                    cmd = c1.all("emp_del");
                    cmd.Parameters.AddWithValue("@e_id", id);
                    cmd.ExecuteNonQuery();
                    Response.Redirect("employee_list.aspx");

                }
            }
        }
        catch (Exception ex)
        {

            Label1.Text = ex.Message.ToString();

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            Response.Redirect("emp_entry.aspx");
        }
        catch (Exception ex)
        {}

    }
}