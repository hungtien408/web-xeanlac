﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class tuyen_dung : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Page.Title = "Tuyển Dụng";
            var meta = new HtmlMeta() { Name = "description", Content = "Tuyển Dụng" };
            Header.Controls.Add(meta);
        }
    }
}