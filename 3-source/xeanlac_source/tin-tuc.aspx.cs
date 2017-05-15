using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using TLLib;

public partial class tin_tuc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string strTitle, strDescription, strMetaTitle, strMetaDescription;
            if (!string.IsNullOrEmpty(Request.QueryString["tt"]))
            {
                var oProduct = new Product();
                var dv = oProduct.ProductSelectOne(Request.QueryString["tt"]).DefaultView;

                if (dv != null && dv.Count <= 0) return;
                var row = dv[0];
                strTitle = Server.HtmlDecode(row["ProductName"].ToString());
                strDescription = Server.HtmlDecode(row["Description"].ToString());
                strMetaTitle = Server.HtmlDecode(row["MetaTittle"].ToString());
                strMetaDescription = Server.HtmlDecode(row["MetaDescription"].ToString());
            }
            else
            {
                strTitle = strMetaTitle = "Tin Tức";
                strDescription = "Tin Tức";
                strMetaDescription = "Tin Tức";
            }
            Page.Title = !string.IsNullOrEmpty(strMetaTitle) ? strMetaTitle : strTitle;
            var meta = new HtmlMeta()
            {
                Name = "description",
                Content = !string.IsNullOrEmpty(strMetaDescription) ?
                    strMetaDescription : strDescription
            };
            Header.Controls.Add(meta);
            //lblProductTitle.Text = strTitle;
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