using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Windows.Forms;

public partial class applicationsubmit : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=master;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select max(FormNo) from Admission";
        cmd.Connection = cn;
        object cnt = cmd.ExecuteScalar();
        TextBox1.Text = cnt.ToString();
        string a = cnt.ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/index1.aspx");
    }
}