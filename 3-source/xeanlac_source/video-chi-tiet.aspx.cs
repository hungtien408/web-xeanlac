using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using TLLib;

public partial class video_chi_tiet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string strTitle, strDescription, strMetaTitle, strMetaDescription;
            if (!string.IsNullOrEmpty(Request.QueryString["vd"]))
            {
                var oVideo = new Video();
                var dv = oVideo.VideoSelectOne(Request.QueryString["vd"]).DefaultView;

                if (dv != null && dv.Count <= 0) return;
                var row = dv[0];
                strTitle = Server.HtmlDecode(row["Title"].ToString());
                strDescription = Server.HtmlDecode(row["Title"].ToString());
                strMetaTitle = Server.HtmlDecode(row["Title"].ToString());
                strMetaDescription = Server.HtmlDecode(row["Title"].ToString());
            }
            else
            {
                strTitle = strMetaTitle = "Video";
                strDescription = "Video";
                strMetaDescription = "Video";
            }
            Page.Title = !string.IsNullOrEmpty(strMetaTitle) ? strMetaTitle : strTitle;
            var meta = new HtmlMeta()
            {
                Name = "description",
                Content = !string.IsNullOrEmpty(strMetaDescription) ?
                    strMetaDescription : strDescription
            };
            Header.Controls.Add(meta);
        }
    }
    protected string progressTitle(object input)
    {
        return TLLib.Common.ConvertTitle(input.ToString());
    }
}