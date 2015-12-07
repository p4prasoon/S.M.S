using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=master;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        if (IsPostBack)
        {
            cn.Open();
            string checkuser = "select count(UserName) from Registration where UserName='" + TextBox1.Text + "'";
            SqlCommand cmd1 = new SqlCommand(checkuser, cn);
            int temp = Convert.ToInt32(cmd1.ExecuteScalar().ToString());
            cn.Close();
            if (temp == 1)
            {
                cn.Open();
                string checkpasswordQuery = "select Password from Registration where UserName='" + TextBox1.Text + "'";
                SqlCommand cmd = new SqlCommand(checkpasswordQuery, cn);
                string Password = cmd.ExecuteScalar().ToString();
                string checkUserTypeQuery = "select UserType from Registration where UserName='" + TextBox1.Text + "'";
                SqlCommand cmd2 = new SqlCommand(checkUserTypeQuery, cn);
                string UserType = cmd2.ExecuteScalar().ToString();
                if (Password == TextBox2.Text && UserType == DropDownList1.SelectedItem.ToString())
               // if (Password == TextBox2.Text)
                {
                    Session["New"]=TextBox1.Text; 
                    Response.Write("Password is correct");
                    string user = DropDownList1.SelectedItem.ToString();
                    //Response.Redirect("~/Teacher.aspx");
                    if (user.Equals("Teacher"))
                    {
                        
                        Response.Redirect("~/Teacher.aspx");
                    }
                    else if (user.Equals("Student"))
                    {
                        Response.Redirect("~/Parent.aspx");
                    }
                    else if(user.Equals("Administrator"))
                    {
                        Response.Redirect("~/Admin.aspx");
                    }

                }
                else
                {
                    Response.Write("Password is not correct");
                }

            }
            else
            {
                Response.Write("UserName is not correct");
                }

        }
    }
}