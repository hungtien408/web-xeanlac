<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="lien-he.aspx.cs" Inherits="lien_he" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>An Lạc</title>
    <meta name="description" content="An Lạc" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="mapshow"></div>
    <div class="container">
        <div class="wrapper-contact">
            <div class="title-main">
                <h1>LIÊN HỆ</h1>
                <p>Hãy liên hệ chúng tôi theo địa chỉ có trên bản đồ hoặc gửi tin nhắn cho chúng tôi theo mẫu form sau đây, chúng tôi sẽ trả lời sớm nhất ngay khi nhận được email của quý khách.</p>
            </div>
            <div class="contact-main">
                <div class="wrapper-map">
                    <div class="wrap-send">
                        <div class="contact-w">
                            <div class="contact-input">
                                <asp:TextBox ID="txtFullName" CssClass="contact-textbox" runat="server" placeholder="Họ Tên"></asp:TextBox>
                            </div>
                            <div class="contact-input contact-mail">
                                <asp:TextBox ID="Textbox1" CssClass="contact-textbox" runat="server" placeholder="Email"></asp:TextBox>
                            </div>
                            <div class="contact-input contact-phone">
                                <asp:TextBox ID="Textbox2" CssClass="contact-textbox" runat="server" placeholder="Điện thoại"></asp:TextBox>
                            </div>
                        </div>
                        <div class="contact-w">
                            <div class="contact-input contactarea">
                                <asp:TextBox ID="TextBox4" CssClass="contact-area" runat="server" TextMode="MultiLine" placeholder="Nội dung lời nhắn"></asp:TextBox>
                            </div>
                        </div>
                        <div class="contact-button">
                            <div class="contact-btn">
                                <asp:Button ID="Button1" CssClass="button-btn" runat="server" Text="GỬI" />
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>

