<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="lien-he.aspx.cs" Inherits="lien_he" %>

<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<%@ Register TagPrefix="asp" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
                                <asp:TextBox ID="txtFullName" CssClass="contact-textbox" runat="server"></asp:TextBox>
                                <asp:TextBoxWatermarkExtender ID="txtFullName_WatermarkExtender" runat="server" Enabled="True"
                                    WatermarkText="Họ Tên" TargetControlID="txtFullName">
                                </asp:TextBoxWatermarkExtender>
                                <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator1" runat="server"
                                    Display="Dynamic" ValidationGroup="SendEmail" ControlToValidate="txtFullName"
                                    ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="contact-input contact-mail">
                                <asp:TextBox ID="txtEmail" CssClass="contact-textbox" runat="server"></asp:TextBox>
                                <asp:TextBoxWatermarkExtender ID="txtEmail_WatermarkExtender" runat="server" Enabled="True"
                                    WatermarkText="Email" TargetControlID="txtEmail">
                                </asp:TextBoxWatermarkExtender>
                                <asp:RegularExpressionValidator CssClass="lb-error" ID="RegularExpressionValidator1"
                                    runat="server" ValidationGroup="SendEmail" ControlToValidate="txtEmail" ErrorMessage="Email không đúng!"
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"
                                    ForeColor="Red"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator2" runat="server"
                                    ValidationGroup="SendEmail" ControlToValidate="txtEmail" ErrorMessage="Thông tin bắt buộc!"
                                    Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="contact-input contact-phone">
                                <asp:TextBox ID="txtPhone" CssClass="contact-textbox" runat="server"></asp:TextBox>
                                <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" Enabled="True"
                                    WatermarkText="Điện thoại" TargetControlID="txtPhone">
                                </asp:TextBoxWatermarkExtender>
                                <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator4" runat="server"
                                    Display="Dynamic" ValidationGroup="SendEmail" ControlToValidate="txtPhone"
                                    ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="contact-w">
                            <div class="contact-input contactarea">
                                <asp:TextBox ID="txtNoiDung" CssClass="contact-area" runat="server" TextMode="MultiLine"></asp:TextBox>
                                <asp:TextBoxWatermarkExtender ID="txtNoiDung_WatermarkExtender" runat="server" Enabled="True"
                                    WatermarkText="Nội dung lời nhắn" TargetControlID="txtNoiDung">
                                </asp:TextBoxWatermarkExtender>
                                <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator3" runat="server"
                                    ValidationGroup="SendEmail" Display="Dynamic" ControlToValidate="txtNoiDung"
                                    ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6">
                                <div class="contact-w">
                                    <div class="contact-input">
                                        <div class="wcodes">
                                            <asp:TextBox ID="txtVerifyCode" CssClass="contact-textbox" runat="server"></asp:TextBox>
                                            <asp:TextBoxWatermarkExtender ID="txtVerifyCode_WatermarkExtender" runat="server"
                                                Enabled="True" WatermarkText="Code" TargetControlID="txtVerifyCode">
                                            </asp:TextBoxWatermarkExtender>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="contact-w">
                                    <div class="contact-input">
                                        <div class="wcodes">
                                            <asp:RadCaptcha ID="RadCaptcha1" ValidatedTextBoxID="txtVerifyCode" ValidationGroup="SendEmail"
                                                runat="server" Display="Dynamic" ErrorMessage="Mã xác nhận: không chính xác."
                                                CaptchaLinkButtonText="Refesh" CssClass="capcha" EnableRefreshImage="True">
                                                <CaptchaImage RenderImageOnly="True" Width="125" Height="35" BackgroundNoise="High"
                                                    BackgroundColor="White" TextColor="Black" FontFamily="Tohoma" TextLength="5" />
                                            </asp:RadCaptcha>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="contact-button">
                            <div class="contact-btn">
                                <asp:Button ID="btGui" CssClass="button-btn" runat="server" Text="GỬI" ValidationGroup="SendEmail"
                                    OnClick="btGui_Click" />
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>

