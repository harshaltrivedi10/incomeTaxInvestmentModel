using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
// libray
using System.Data;
// sql data base
using System.Data.SqlClient;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
    // header decleration glob

    SqlConnection cn;
    SqlCommand cmd;
    DataSet ds;
    SqlDataAdapter adp;
	public Class1()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    // connection

    public void connection()
    {
        cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=tax_db;Integrated Security=True");
        cn.Open();
    }

    // insert - update - delete 

    public SqlCommand all(string str)
    {
        cmd = new SqlCommand(str, cn);
        cmd.CommandType = CommandType.StoredProcedure;
        return cmd;

    }

    // select all data
    public DataSet sel_all(string str)
    {
        cmd = new SqlCommand(str, cn);
        cmd.CommandType = CommandType.StoredProcedure;

        ds = new DataSet();
        adp = new SqlDataAdapter();

        adp.SelectCommand = cmd;
        adp.Fill(ds);
        return ds;

    }

    // select data_id
    public DataSet sel_id(string str,string id)
    {
        cmd = new SqlCommand(str, cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@id", id);
        ds = new DataSet();
        adp = new SqlDataAdapter();

        adp.SelectCommand = cmd;
        adp.Fill(ds);
        return ds;

    }


    // select login data
    public DataSet sel_login(string str, string username, string password)
    {
        cmd = new SqlCommand(str, cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@username",username);
        cmd.Parameters.AddWithValue("@password",password);
        ds = new DataSet();
        adp = new SqlDataAdapter();

        adp.SelectCommand = cmd;
        adp.Fill(ds);
        return ds;

    }

    public DataSet sel_data(string str, string username, string password, string nextdate)
    {
        cmd = new SqlCommand(str, cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@inv_id", Convert.ToInt32(username));
        cmd.Parameters.AddWithValue("@pay_amnt", Convert.ToInt32(password));
        cmd.Parameters.AddWithValue("@next_date", nextdate);
        ds = new DataSet();
        adp = new SqlDataAdapter();

        adp.SelectCommand = cmd;
        adp.Fill(ds);
        return ds;

    }
    //search

    public DataSet sel_search(string str)
    {
        cmd = new SqlCommand(str, cn);
        ds = new DataSet();
        adp = new SqlDataAdapter();

        adp.SelectCommand = cmd;
        adp.Fill(ds);
        return ds;

    }


}