using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            Label1.Text += Session["New"].ToString();
        }
        else
        {
            Response.Redirect("~/Login.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string opt = RadioButtonList1.SelectedValue;
        int opt1 = Convert.ToInt32(opt);
        if (opt1 == 1)
        {
            Response.Redirect("~/marks.aspx");
        }
        else if(opt1==2)
        {
            Response.Redirect("~/Fee.aspx");
        }
        else
        {
            Response.Redirect("~/Attendance.aspx");

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("~/Login.aspx");
    }
}