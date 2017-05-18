using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class thu_vien : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Page.Title = "Thư Viện";
            var meta = new HtmlMeta() { Name = "description", Content = "Thư Viện" };
            Header.Controls.Add(meta);
        }
    }
    protected string progressTitle(object input)
    {
        return TLLib.Common.ConvertTitle(input.ToString());
    }
    protected void lstNewCategory2_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        var odsNew = (ObjectDataSource)e.Item.FindControl("odsNew");
        var DataPager1 = (DataPager)e.Item.FindControl("DataPager1");

        if (((DataView)odsNew.Select()).Count <= DataPager1.PageSize)
        {
            DataPager1.Visible = false;
        }
    }
}