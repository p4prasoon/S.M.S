﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Windows.Forms;

public partial class Fee : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=master;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
     string month = DropDownList1.SelectedValue;
       if (month.Equals("January"))
       {

           string query = @"update Admission set January=@amount where FormNo=" + TextBox1.Text;
           using (SqlCommand cmd = new SqlCommand(query, cn))
           {
               cmd.Parameters.AddWithValue("@amount", TextBox2.Text);
               cn.Open();
               cmd.ExecuteNonQuery();
               cn.Close();
               //Response.Write("jan1");
           }
          // Response.Write("jan");
       }
        else if (month.Equals("February"))
       {

           string query = @"update Admission set February=@amount where FormNo=" + TextBox1.Text;
           using (SqlCommand cmd = new SqlCommand(query, cn))
           {
               cmd.Parameters.AddWithValue("@amount", TextBox2.Text);
               cn.Open();
               cmd.ExecuteNonQuery();
               cn.Close();
           }
       }
       else if (month.Equals("March"))
       {

           string query = @"update Admission set March=@amount where FormNo=" + TextBox1.Text;
           using (SqlCommand cmd = new SqlCommand(query, cn))
           {
               cmd.Parameters.AddWithValue("@amount", TextBox2.Text);
               cn.Open();
               cmd.ExecuteNonQuery();
               cn.Close();
           }
       }
       else if (month.Equals("April"))
       {

           string query = @"update Admission set April=@amount where FormNo=" + TextBox1.Text;
           using (SqlCommand cmd = new SqlCommand(query, cn))
           {
               cmd.Parameters.AddWithValue("@amount", TextBox2.Text);
               cn.Open();
               cmd.ExecuteNonQuery();
               cn.Close();
           }
       }
       else if (month.Equals("May"))
       {

           string query = @"update Admission set May=@amount where FormNo=" + TextBox1.Text;
           using (SqlCommand cmd = new SqlCommand(query, cn))
           {
               cmd.Parameters.AddWithValue("@amount", TextBox2.Text);
               cn.Open();
               cmd.ExecuteNonQuery();
               cn.Close();
           }
       }
       else if (month.Equals("June"))
       {

           string query = @"update Admission set June=@amount where FormNo=" + TextBox1.Text;
           using (SqlCommand cmd = new SqlCommand(query, cn))
           {
               cmd.Parameters.AddWithValue("@amount", TextBox2.Text);
               cn.Open();
               cmd.ExecuteNonQuery();
               cn.Close();
           }
       }
       else if (month.Equals("July"))
       {

           string query = @"update Admission set July=@amount where FormNo=" + TextBox1.Text;
           using (SqlCommand cmd = new SqlCommand(query, cn))
           {
               cmd.Parameters.AddWithValue("@amount", TextBox2.Text);
               cn.Open();
               cmd.ExecuteNonQuery();
               cn.Close();
           }
       }
       else if (month.Equals("August"))
       {

           string query = @"update Admission set August=@amount where FormNo=" + TextBox1.Text;
           using (SqlCommand cmd = new SqlCommand(query, cn))
           {
               cmd.Parameters.AddWithValue("@amount", TextBox2.Text);
               cn.Open();
               cmd.ExecuteNonQuery();
               cn.Close();
           }
       }
       else if (month.Equals("September"))
       {

           string query = @"update Admission set September=@amount where FormNo=" + TextBox1.Text;
           using (SqlCommand cmd = new SqlCommand(query, cn))
           {
               cmd.Parameters.AddWithValue("@amount", TextBox2.Text);
               cn.Open();
               cmd.ExecuteNonQuery();
               cn.Close();
           }
       }
       else if (month.Equals("October"))
       {

           string query = @"update Admission set October=@amount where FormNo=" + TextBox1.Text;
           using (SqlCommand cmd = new SqlCommand(query, cn))
           {
               cmd.Parameters.AddWithValue("@amount", TextBox2.Text);
               cn.Open();
               cmd.ExecuteNonQuery();
               cn.Close();
           }
       }
       else if (month.Equals("November"))
       {

           string query = @"update Admission set November=@amount where FormNo=" + TextBox1.Text;
           using (SqlCommand cmd = new SqlCommand(query, cn))
           {
               cmd.Parameters.AddWithValue("@amount", TextBox2.Text);
               cn.Open();
               cmd.ExecuteNonQuery();
               cn.Close();
           }
       }
       else if (month.Equals("December"))
       {

           string query = @"update Admission set December=@amount where FormNo=" + TextBox1.Text;
           using (SqlCommand cmd = new SqlCommand(query, cn))
           {
               cmd.Parameters.AddWithValue("@amount", TextBox2.Text);
               cn.Open();
               cmd.ExecuteNonQuery();
               cn.Close();
           }
       }
    }
    }
