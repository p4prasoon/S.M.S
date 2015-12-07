using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Parent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string opt = RadioButtonList1.SelectedValue;
        int opt1 = Convert.ToInt32(opt);
        if (opt1 == 1)
        {
            Response.Redirect("~/ViewMarks.aspx");
        }
        else if (opt1 == 2)
        {
            Response.Redirect("~/ViewFees.aspx");
        }
        else
        {
            Response.Redirect("~/ViewAttendance.aspx");
        }
    }
}