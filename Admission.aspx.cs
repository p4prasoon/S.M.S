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

public partial class _Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=master;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //cn.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        string clas, name, fname, mname, fo, mo, peradd, padd, rmob, mob, email, dob, gender, blood, cat, last;
        string sec,roll, jan, feb, mar, apr, may, june, july, aug, sept, oct, nov, dec, eng, maths, hb, sci, social, comp, janA, febA, marA, aprA, mayA, junA, julA, augA, septA, octA, novA, decA;
        clas = DropDownList1.SelectedValue.ToString();
        name = TextBox2.Text;
        fname = TextBox3.Text;
        mname = TextBox4.Text;
        fo = TextBox5.Text;
        mo = TextBox6.Text;
        peradd = TextBox7.Text;
        padd = TextBox8.Text;
        rmob = TextBox9.Text;
        mob = TextBox10.Text;
        email = TextBox11.Text;
        dob = TextBox12.Text;
        gender = RadioButtonList1.SelectedValue;
        blood = DropDownList2.SelectedValue.ToString();
        cat = RadioButtonList2.SelectedValue;
        last = TextBox13.Text;

       sec = roll = jan = feb = mar = apr = may = june = july = aug = sept = oct = nov = dec = eng = maths = hb = sci = social = comp = janA = febA = marA = aprA = mayA = junA = julA = augA = septA = octA = novA = decA= " ";

        cn.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "insert Admission values('" + clas + "','" + name + "','" + fname + "','" + mname + "','" + fo + "','" + mo + "','" + peradd + "','" + padd + "','" + rmob + "','" + mob + "','" + email + "','" + dob + "','" + gender + "','" + blood + "','" + cat + "','" + last + "','" + sec + "','" + jan + "','" + feb + "','" + mar + "','" + apr + "','" + may + "','" + june + "','" + july + "','" + aug + "','" + sept + "','" + oct + "','" + nov + "','" + dec + "','" + eng + "','" + maths + "','" + hb + "','" + sci + "','" + social + "','" + comp + "','" + janA + "','" + febA + "','" + marA + "','" + aprA + "','" + mayA + "','" + junA + "','" + julA + "','" + augA + "','" + septA + "','" + octA + "','" + novA + "','" + decA + "','"+ roll + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cmd.CommandText = "select max(FormNo) from Admission";

        object cnt = cmd.ExecuteScalar();
        TextBox1.Text = cnt.ToString();
        string a = cnt.ToString();

       // MessageBox.Show("Application Submitted");
        cn.Close();
       // Response.Write("Application Submitted");


        Response.Redirect("~/applicationsubmit.aspx");
    }
  /*  protected void  Button2_Click(object sender, EventArgs e)
{
        string clas = DropDownList1.SelectedValue.ToString();
        string name = TextBox2.Text;
        string form = TextBox1.Text;
        string sec = " ";
        string jan =" ";
        string feb = " ";
        string mar = " ";
        string eng = " ";
        string maths = " ";
        cn.Open();
        SqlCommand cmd1 = new SqlCommand();
       // cmd1.CommandText= "select clas from Admission";
       // object cnt1 = cmd1.ExecuteScalar();
       // string std = cnt1.ToString();
       // Response.Write(clas);
       // int std = Convert.ToInt32(std1); 
       if (clas == "1")
       {
           Response.Write(clas);
            cmd1.CommandText = "insert Standard1 values('" +form+"','"+ name + "','"+sec+"','"+jan+"','"+feb+"','"+mar +"','"+eng +"','"+maths+"')";
            cmd1.Connection = cn;
            cmd1.ExecuteNonQuery();
            cn.Close();
        }
        if (clas == "2")
        {
            cmd1.CommandText = "insert Standard2 values('" + name + "')";
        }
        if (clas == "5")
        {
            Response.Write(clas);
            Response.Write(form);
            Response.Write(name);
            cmd1.CommandText = "insert Standard5 values('" +form+"','"+ name + "')";
            cmd1.Connection = cn;
            cmd1.ExecuteNonQuery();
            cn.Close();
        }
        cn.Close();

}
    protected void TextBox10_TextChanged(object sender, EventArgs e)
    {

    }*/

}