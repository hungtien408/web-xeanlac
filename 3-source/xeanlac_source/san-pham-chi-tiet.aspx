<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="san-pham-chi-tiet.aspx.cs" Inherits="san_pham_chi_tiet" %>

<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<%@ Register TagPrefix="asp" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register Src="~/uc/uc-san-pham.ascx" TagPrefix="uc1" TagName="ucsanpham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:HiddenField ID="hdnSanPhamChiTiet" runat="server" />
    <a class="a-link-spct" href="<%= hdnSanPhamChiTiet.Value %>"></a>
    <div class="banner-main">
        <asp:ListView ID="lstBannerProduct" runat="server" DataSourceID="odsBannerProduct"
            EnableModelValidation="True">
            <ItemTemplate>
                <img alt='<%# Eval("FileName") %>' src='<%# "~/res/advertisement/" + Eval("FileName") %>'
                    visible='<%# string.IsNullOrEmpty(Eval("FileName").ToString()) ? false : true %>' runat="server" />
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsBannerProduct" runat="server"
            SelectMethod="AdsBannerSelectAll"
            TypeName="TLLib.AdsBanner">
            <SelectParameters>
                <asp:Parameter Name="StartRowIndex" Type="String" />
                <asp:Parameter Name="EndRowIndex" Type="String" />
                <asp:Parameter DefaultValue="7" Name="AdsCategoryID" Type="String" />
                <asp:Parameter Name="CompanyName" Type="String" />
                <asp:Parameter Name="Website" Type="String" />
                <asp:Parameter Name="FromDate" Type="String" />
                <asp:Parameter Name="ToDate" Type="String" />
                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                <asp:Parameter Name="Priority" Type="String" />
                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
    <div class="container wapper-main">
        <div class="wrapper-main">
            <div class="ColContent">
                <div id="site" class="corner">
                    <asp:ListView ID="lstBreadcrum" runat="server" DataSourceID="odsBreadcrum"
                        EnableModelValidation="True">
                        <ItemTemplate>
                            <%# "<a href='" + progressTitle(Eval("ProductCategoryName")) + "-pci-" + Eval("ProductCategoryID") + ".aspx" + "'><span>" + Eval("ProductCategoryName") + "</span></a><span>/</span>"%>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <a id="A2" href="~/" runat="server"><span>Trang chủ</span></a><span>/</span><span
                                runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsBreadcrum" runat="server" SelectMethod="ProductCategoryHierarchyToTopSelectAll"
                        TypeName="TLLib.ProductCategory">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="CurrentProductCategoryID" QueryStringField="pci" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                    <asp:Label ID="lblProductTitle" runat="server"></asp:Label>
                </div>
                <div class="product-detail">
                    <div class="product-slider">
                        <div id="slideProduct" class="product-slide">
                            <div class="slider-big">
                                <div class="slider slider-for">
                                    <asp:ListView ID="lstImageBig" runat="server" DataSourceID="odsProductAlbum"
                                        EnableModelValidation="True">
                                        <ItemTemplate>
                                            <div class="item-big">
                                                <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/product/album/" + Eval("ImageName") %>'
                                                    visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                                    runat="server" />
                                            </div>
                                        </ItemTemplate>
                                        <LayoutTemplate>
                                            <span runat="server" id="itemPlaceholder" />
                                        </LayoutTemplate>
                                    </asp:ListView>
                                    <asp:ObjectDataSource ID="odsProductAlbum" runat="server" SelectMethod="ProductImageSelectAll"
                                        TypeName="TLLib.ProductImage">
                                        <SelectParameters>
                                            <asp:QueryStringParameter QueryStringField="pi" Name="ProductID" Type="String" />
                                            <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                            <asp:Parameter Name="Priority" Type="String" />
                                            <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                                        </SelectParameters>
                                    </asp:ObjectDataSource>
                                </div>
                            </div>
                            <div class="slider-small">
                                <div class="slider slider-nav">
                                    <asp:ListView ID="lstImageSmall" runat="server" DataSourceID="odsProductAlbum"
                                        EnableModelValidation="True">
                                        <ItemTemplate>
                                            <div class="item-small">
                                                <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/product/album/thumbs/" + Eval("ImageName") %>'
                                                    visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                                    runat="server" />
                                            </div>
                                        </ItemTemplate>
                                        <LayoutTemplate>
                                            <span runat="server" id="itemPlaceholder" />
                                        </LayoutTemplate>
                                    </asp:ListView>
                                </div>
                            </div>
                        </div>
                    </div>
                    <asp:ListView ID="lstProductDetail1" runat="server" DataSourceID="odsProductDetail"
                        EnableModelValidation="True">
                        <ItemTemplate>
                            <div class="product-box">
                                <h1><%# Eval("ProductName") %></h1>
                                <div class="box-text">
                                    <p>Liên hệ ngay để được tư vấn:</p>
                                    <p><span>(+84 8) 37562 666 - 37562 888 - 37562 999</span></p>
                                </div>
                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsProductDetail" runat="server" SelectMethod="ProductSelectOne"
                        TypeName="TLLib.Product">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="ProductID" QueryStringField="pi" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </div>
                <div class="detail-main">
                    <h1>Mô tả chi tiết</h1>
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="odsProductDetail"
                        EnableModelValidation="True">
                        <ItemTemplate>
                            <div class="detail-box">
                                <%# Eval("Content") %>
                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                </div>
                <div class="feedback-main">
                    <h1>Thông tin phản hồi</h1>
                    <p>Vui lòng điền đầy đủ thông tin vào form bên dưới, chúng tôi sẽ trả lời bạn ngay sau khi nhận được thông tin.</p>
                    <div class="form-feedback">
                        <div class="form-box">
                            <div class="feedback-input">
                                <asp:TextBox ID="txtFullName" CssClass="feedback-textbox" runat="server"></asp:TextBox>
                                <asp:TextBoxWatermarkExtender ID="txtFullName_WatermarkExtender" runat="server" Enabled="True"
                                    WatermarkText="Họ Tên" TargetControlID="txtFullName">
                                </asp:TextBoxWatermarkExtender>
                                <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator1" runat="server"
                                    Display="Dynamic" ValidationGroup="SendFeedback" ControlToValidate="txtFullName"
                                    ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="feedback-input">
                                <asp:TextBox ID="txtEmail" CssClass="feedback-textbox" runat="server"></asp:TextBox>
                                <asp:TextBoxWatermarkExtender ID="txtEmail_WatermarkExtender" runat="server" Enabled="True"
                                    WatermarkText="Email" TargetControlID="txtEmail">
                                </asp:TextBoxWatermarkExtender>
                                <asp:RegularExpressionValidator CssClass="lb-error" ID="RegularExpressionValidator1"
                                    runat="server" ValidationGroup="SendFeedback" ControlToValidate="txtEmail" ErrorMessage="Email không đúng!"
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"
                                    ForeColor="Red"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator2" runat="server"
                                    ValidationGroup="SendFeedback" ControlToValidate="txtEmail" ErrorMessage="Thông tin bắt buộc!"
                                    Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="feedback-input">
                                <asp:TextBox ID="txtPhone" CssClass="feedback-textbox" runat="server"></asp:TextBox>
                                <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" Enabled="True"
                                    WatermarkText="Điện thoại" TargetControlID="txtPhone">
                                </asp:TextBoxWatermarkExtender>
                                <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator4" runat="server"
                                    Display="Dynamic" ValidationGroup="SendFeedback" ControlToValidate="txtPhone"
                                    ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="feedback-input">
                                <asp:TextBox ID="txtTitle" CssClass="feedback-textbox" runat="server"></asp:TextBox>
                                <asp:TextBoxWatermarkExtender ID="txtTitle_WatermarkExtender" runat="server" Enabled="True"
                                    WatermarkText="Tiêu đề" TargetControlID="txtTitle">
                                </asp:TextBoxWatermarkExtender>
                                <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator3" runat="server"
                                    Display="Dynamic" ValidationGroup="SendFeedback" ControlToValidate="txtTitle"
                                    ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-area">
                            <div class="feedback-input feedbackarea">
                                <asp:TextBox ID="txtNoiDung" CssClass="feedback-area" runat="server" TextMode="MultiLine" placeholder="Nội dung lời nhắn"></asp:TextBox>
                                <asp:TextBoxWatermarkExtender ID="txtNoiDung_WatermarkExtender" runat="server" Enabled="True"
                                    WatermarkText="Nội dung lời nhắn" TargetControlID="txtNoiDung">
                                </asp:TextBoxWatermarkExtender>
                                <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator5" runat="server"
                                    ValidationGroup="SendFeedback" Display="Dynamic" ControlToValidate="txtNoiDung"
                                    ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="feedback-input feedback-code">
                                <asp:TextBox ID="txtVerifyCode" CssClass="feedback-textbox" runat="server"></asp:TextBox>
                                <asp:TextBoxWatermarkExtender ID="txtVerifyCode_WatermarkExtender" runat="server"
                                    Enabled="True" WatermarkText="Code" TargetControlID="txtVerifyCode">
                                </asp:TextBoxWatermarkExtender>
                            </div>
                            <div class="feedback-input feedback-code">
                                <asp:RadCaptcha ID="RadCaptcha1" ValidatedTextBoxID="txtVerifyCode" ValidationGroup="SendFeedback"
                                    runat="server" Display="Dynamic" ErrorMessage="Mã xác nhận: không chính xác."
                                    CaptchaLinkButtonText="Refesh" CssClass="capcha" EnableRefreshImage="True">
                                    <CaptchaImage RenderImageOnly="True" Width="125" Height="35" BackgroundNoise="High"
                                        BackgroundColor="White" TextColor="Black" FontFamily="Tohoma" TextLength="5" />
                                </asp:RadCaptcha>
                            </div>
                            <div class="feedback-button">
                                <div class="feedback-btn">
                                    <asp:Button ID="btnFeedback" CssClass="button-btn" runat="server" Text="GỬI" ValidationGroup="SendFeedback" OnClick="btnFeedback_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="product-all">
                    <div class="title-box">
                        <h1>Sản phẩm liên quan</h1>
                    </div>
                    <div id="sliderProduct" class="owl-carousel wrapper-product">
                        <asp:ListView ID="lstProductSame" runat="server" DataSourceID="odsProductSame"
                            EnableModelValidation="True">
                            <ItemTemplate>
                                <div class="item">
                                    <div class="item-img">
                                        <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>
                                            <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/product/" + Eval("ImageName") %>'
                                                visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                                runat="server" />
                                            <div class="item-hover">
                                                <p><%# Eval("Description") %></p>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="item-name"><a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'><%# Eval("ProductName") %></a></div>
                                    <div class="view-all"><a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>Xem thêm</a></div>
                                </div>
                            </ItemTemplate>
                            <EmptyDataTemplate>
                                <span>Đang cập nhật</span>
                            </EmptyDataTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsProductSame" runat="server" SelectMethod="ProductSameSelectAll"
                            TypeName="TLLib.Product">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="10" Name="RerultCount" Type="String" />
                                <asp:QueryStringParameter DefaultValue="" Name="ProductID" QueryStringField="pi" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </div>
                </div>
            </div>
            <div class="ColAside">
                <uc1:ucsanpham runat="server" ID="ucsanpham" />
            </div>
        </div>
    </div>
</asp:Content>

