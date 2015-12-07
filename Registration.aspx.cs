using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class Registration : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=master;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
          
         if (IsPostBack)
         {
             cn.Open();
             
             string checkuser ="select count(UserName) from Registration where UserName='" + TextBox1.Text + "'";
             SqlCommand cmd1 = new SqlCommand(checkuser, cn);
            int temp = Convert.ToInt32((cmd1.ExecuteScalar()).ToString());
            if (temp >1)
                 {
                     Response.Write("User already Exists...!!    Please select another username");
                    //Label1.Text="User already Exists...!!    Please select another username";
                 }
             cn.Close();    
          }

          
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Guid newGuid = Guid.NewGuid();
            cn.Open();
            string insertQuery = "insert into Registration(ID,UserName,Email,Password,UserType) values(@Id,@Uname,@email,@password,@Utype)";
            SqlCommand cmd = new SqlCommand(insertQuery, cn);
            cmd.Parameters.AddWithValue("@Id",newGuid.ToString());
            cmd.Parameters.AddWithValue("@Uname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@email", TextBox2.Text);
            cmd.Parameters.AddWithValue("@password", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Utype", DropDownList1.SelectedItem.ToString());

            cmd.ExecuteNonQuery();
            /*if (i > 0)
            {
                
                Label2.Text = "Registration Successful";
            }*/
           // Response.Write("Registration Successful");
            Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Registration Successful..!!')</script>");
            cn.Close();
        }
        catch(Exception ex)
        {
            Response.Write("Error:"+ ex.ToString());
        }
        

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}
