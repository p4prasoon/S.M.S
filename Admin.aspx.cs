﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string option = DropDownList1.SelectedValue;
        if(option.Equals("Marks"))
        {
            Response.Redirect("~/Low Marks.aspx");
        }
        else if (option.Equals("Fees"))
        {
            Response.Redirect("");
        }
        else
        {
            Response.Redirect(" ");
        }

    }
}