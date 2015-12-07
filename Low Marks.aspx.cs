using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;
using System.Windows.Forms;

public partial class Low_Marks : System.Web.UI.Page
{
    
    SqlConnection cn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=master;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    /* protected void Button1_Click(object sender, EventArgs e)
     {
         cn.Open();
         SqlCommand cmd = new SqlCommand();
         cmd.CommandText = "select FormNo,name from Admission where clas='" + DropDownList3.SelectedValue + "' and English > 45";
         cmd.Connection = cn;
         SqlDataReader rd = cmd.ExecuteReader();
         DataTable dt = new DataTable();
         dt.Load(rd);
         GridView1.DataBind();
         cn.Close();
     }*/
    protected void Button1_Click1(object sender, EventArgs e)
     {
       /*  cn.Open();
         SqlCommand cmd = new SqlCommand();
         cmd.CommandText=" select FormNo,Name,English from Admission where clas='"+ DropDownList3.SelectedValue + "'and English between '"+ TextBox1.Text+ "'and'" + TextBox2.Text + "'";
         cmd.Connection=cn;
         SqlDataReader rd= cmd.ExecuteReader();
         DataTable dt=new DataTable();
         dt.Load(rd);
         GridView1.DataBind();
         cn.Close();*/
     }
}