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

public partial class Default3 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=master;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string subject = DropDownList1.SelectedValue;
        if (subject.Equals("English"))
        {

            string query = @"update Admission set English=@marks where FormNo=" + TextBox2.Text;
            using (SqlCommand cmd = new SqlCommand(query, cn))
            {
                cmd.Parameters.AddWithValue("@marks", TextBox1.Text);
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
            }
        }

        if (subject.Equals("Maths"))
        {

            string query = @"update Admission set Maths=@marks where FormNo=" + TextBox2.Text;
            using (SqlCommand cmd = new SqlCommand(query, cn))
            {
                cmd.Parameters.AddWithValue("@marks", TextBox1.Text);
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
            }
        }
        if (subject.Equals("Hindi"))
        {

            string query = @"update Admission set HindiBengali=@marks where FormNo=" + TextBox2.Text;
            using (SqlCommand cmd = new SqlCommand(query, cn))
            {
                cmd.Parameters.AddWithValue("@marks", TextBox1.Text);
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
            }
        }
        if (subject.Equals("Science"))
        {

            string query = @"update Admission set Science=@marks where FormNo=" + TextBox2.Text;
            using (SqlCommand cmd = new SqlCommand(query, cn))
            {
                cmd.Parameters.AddWithValue("@marks", TextBox1.Text);
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
            }
        }
        if (subject.Equals("Social"))
        {

            string query = @"update Admission set SocialScience=@marks where FormNo=" + TextBox2.Text;
            using (SqlCommand cmd = new SqlCommand(query, cn))
            {
                cmd.Parameters.AddWithValue("@marks", TextBox1.Text);
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
            }
        }
        if (subject.Equals("Computer"))
        {

            string query = @"update Admission set Computer=@marks where FormNo=" + TextBox2.Text;
            using (SqlCommand cmd = new SqlCommand(query, cn))
            {
                cmd.Parameters.AddWithValue("@marks", TextBox1.Text);
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
            }
        }
        Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Your Data Has Been Saved')</script>");

    }
}
