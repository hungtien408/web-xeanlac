using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class site : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            Page.Header.DataBind();
            string page = Request.Url.PathAndQuery.ToLower();

            string startScript = "<script type='text/javascript'>";
            string endScript = "')</script>";
            string activePage = "";

            if (page.Contains("-pci-"))
                activePage = "san-pham.aspx";
            else if (page.Contains("-si-"))
                activePage = "dich-vu.aspx";
            else if (page.Contains("-tt-"))
                activePage = "tin-tuc.aspx";
            else if (page.Contains("-vd-"))
                activePage = "thu-vien.aspx";
            else if (!page.EndsWith("default.aspx"))
                activePage = Path.GetFileName(page);

            if (!string.IsNullOrEmpty(activePage))
                runScript.InnerHtml = startScript + "changeActiveMenu('" + activePage + endScript;

            runScript.InnerHtml += startScript + "changeSubActiveMenu('" + Path.GetFileName(page) + endScript;
        }
    }
    protected void btnUngTuyen_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            if (RadCaptcha1.IsValid)
            {

                //send email         
                sendEmail();
                ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "runtime", " $(document).ready(function () {alert('Cám ơn bạn đã liên lạc với chúng tôi. Thông báo của bạn đã được gửi đi. Chúng tôi sẽ liên lạc với bạn trong thời gian sớm nhất!')});", true);
                txtFullName.Text = "";
                txtPhone.Text = "";
                txtEmail.Text = "";
                txtNoiDung.Text = "";
            }
            else
            {

            }
        }
    }
    private void sendEmail()
    {
        var strFileName = "";
        if (FileUngTuyen.UploadedFiles.Count > 0)
        {
            strFileName = FileUngTuyen.UploadedFiles.Count > 0 ? FileUngTuyen.UploadedFiles[0].GetName() : "";
            string strUngTuyenPath = "~/res/career/file/" + strFileName;
            FileUngTuyen.UploadedFiles[0].SaveAs(Server.MapPath(strUngTuyenPath));
        }

        string msg = "<h3>AN LẠC: ỨNG TUYỂN</h3><br/>";
        msg += "<b>Họ tên: </b>" + txtFullName.Text.Trim().ToString() + "<br />";
        msg += "<b>Email: </b>" + txtEmail.Text.Trim().ToString() + "<br />";
        msg += "<b>Điện thoại: </b>" + txtPhone.Text.Trim().ToString() + "<br />";
        msg += "<b>Nội dung lời nhắn: </b>" + txtNoiDung.Text.Trim().ToString();
        msg += "<b>File đính kèm: </b><a href='" + strFileName + "'>" + strFileName + "</a>";

        TLLib.Common.SendMail("smtp.gmail.com", 587, "webmastersendmail0401@gmail.com", "web123master", "vietdien1904@gmail.com", "", "ỨNG TUYỂN AN LẠC", msg, true);
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        Response.Redirect("tim-kiem.aspx?kw=" + txtSearch.Text.Trim());
    }
}
