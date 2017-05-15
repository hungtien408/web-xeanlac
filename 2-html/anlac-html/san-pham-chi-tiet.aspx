<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="san-pham-chi-tiet.aspx.cs" Inherits="san_pham_chi_tiet" %>

<%@ Register Src="~/uc/uc-san-pham.ascx" TagPrefix="uc1" TagName="ucsanpham" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>An Lạc</title>
    <meta name="description" content="An Lạc" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="banner-main">
        <img src="assets/images/banner5.jpg" alt="" />
    </div>
    <div class="container wapper-main">
        <div class="wrapper-main">
            <div class="ColContent">
                <div id="site" class="corner">
                    <a href="san-pham.aspx" runat="server"><span>Ô tô chuyên dụng</span></a><span>/</span><span> Phát sóng lưu động</span>
                </div>
                <div class="product-detail">
                    <div class="product-slider">
                        <div id="slideProduct" class="product-slide">
                            <div class="slider-big">
                                <div class="slider slider-for">
                                    <div class="item-big">
                                        <img src="assets/images/product-big1.jpg" alt="" />
                                    </div>
                                    <div class="item-big">
                                        <img src="assets/images/product-big1.jpg" alt="" />
                                    </div>

                                    <div class="item-big">
                                        <img src="assets/images/product-big1.jpg" alt="" />
                                    </div>

                                    <div class="item-big">
                                        <img src="assets/images/product-big1.jpg" alt="" />
                                    </div>

                                    <div class="item-big">
                                        <img src="assets/images/product-big1.jpg" alt="" />
                                    </div>

                                    <div class="item-big">
                                        <img src="assets/images/product-big1.jpg" alt="" />
                                    </div>

                                </div>
                            </div>
                            <div class="slider-small">
                                <div class="slider slider-nav">
                                    <div class="item-small">
                                        <img src="assets/images/product-small1.jpg" alt="" />
                                    </div>
                                    <div class="item-small">
                                        <img src="assets/images/product-small1.jpg" alt="" />
                                    </div>
                                    <div class="item-small">
                                        <img src="assets/images/product-small1.jpg" alt="" />
                                    </div>
                                    <div class="item-small">
                                        <img src="assets/images/product-small1.jpg" alt="" />
                                    </div>
                                    <div class="item-small">
                                        <img src="assets/images/product-small1.jpg" alt="" />
                                    </div>
                                    <div class="item-small">
                                        <img src="assets/images/product-small1.jpg" alt="" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product-box">
                        <h1>Xe phát sóng lưu động</h1>
                        <div class="box-text">
                            <p>Liên hệ ngay để được tư vấn:</p>
                            <p><span>(+84 8) 37562 666 - 37562 888 - 37562 999</span></p>
                        </div>
                    </div>
                </div>
                <div class="detail-main">
                    <h1>Mô tả chi tiết</h1>
                    <div class="detail-box">
                        <p>
                            Phát sóng cho các mục đích để ứng cứu thông tin như một trạm BTS (đối với các đơn vị thông tin như Vinaphone, Mobiphone, Viettel,Beeline,...) hoặc truyền dẫn vệ tinh - uplink (đối với các đơn vị truyền dẫn thông tin, truyền hình lưu động,...).
                        </p>
                        <br />
                        <p>Cột ăng-ten BTS nâng hạ thủy lực cao từ 7-12m.</p>
                        <br />
                        <p>Chảo ăng-ten uplink có đường kính đến 2,5m.</p>
                        <br />
                        <p>Trang bị máy phát điện từ 5,5 KVA đến 12 KVA.</p>
                    </div>
                </div>
                <div class="feedback-main">
                    <h1>Thông tin phản hồi</h1>
                    <p>Vui lòng điền đầy đủ thông tin vào form bên dưới, chúng tôi sẽ trả lời bạn ngay sau khi nhận được thông tin.</p>
                    <div class="form-feedback">
                        <div class="form-box">
                            <div class="feedback-input">
                                <asp:TextBox ID="txtFullName" CssClass="feedback-textbox" runat="server" placeholder="Họ Tên"></asp:TextBox>
                            </div>
                            <div class="feedback-input">
                                <asp:TextBox ID="TextBox1" CssClass="feedback-textbox" runat="server" placeholder="Email"></asp:TextBox>
                            </div>
                            <div class="feedback-input">
                                <asp:TextBox ID="TextBox2" CssClass="feedback-textbox" runat="server" placeholder="Số điện thoại"></asp:TextBox>
                            </div>
                            <div class="feedback-input">
                                <asp:TextBox ID="TextBox3" CssClass="feedback-textbox" runat="server" placeholder="Tiêu đề"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-area">
                            <div class="feedback-input feedbackarea">
                                <asp:TextBox ID="TextBox4" CssClass="feedback-area" runat="server" TextMode="MultiLine" placeholder="Nội dung lời nhắn"></asp:TextBox>
                            </div>
                            <div class="feedback-input feedback-code">
                                <asp:TextBox ID="TextBox5" CssClass="feedback-textbox" runat="server" placeholder="Mã xác nhận"></asp:TextBox>
                            </div>
                            <div class="feedback-button">
                                <div class="feedback-btn">
                                    <asp:Button ID="Button1" CssClass="button-btn" runat="server" Text="GỬI" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="product-all">
                    <div class="title-box"><h1>Sản phẩm liên quan</h1></div>
                    <div id="sliderProduct" class="owl-carousel wrapper-product">
                        <div class="item">
                            <div class="item-img">
                                <a href="san-pham-chi-tiet.aspx">
                                    <img src="assets/images/img9.jpg" alt="" />
                                    <div class="item-hover">
                                        <p>Phát sóng cho các mục đích để ứng cứu thông tin như một trạm BTS (đối với các đơn vị thông tin như: Vinaphone, Mobiphone, Viettel,Beeline,...) </p>
                                    </div>
                                </a>
                            </div>
                            <div class="item-name"><a href="san-pham-chi-tiet.aspx">Xe phát sóng lưu động</a></div>
                            <div class="view-all"><a href="san-pham-chi-tiet.aspx">Xem thêm</a></div>
                        </div>
                        <div class="item">
                            <div class="item-img">
                                <a href="san-pham-chi-tiet.aspx">
                                    <img src="assets/images/img9.jpg" alt="" />
                                    <div class="item-hover">
                                        <p>Phát sóng cho các mục đích để ứng cứu thông tin như một trạm BTS (đối với các đơn vị thông tin như: Vinaphone, Mobiphone, Viettel,Beeline,...) </p>
                                    </div>
                                </a>
                            </div>
                            <div class="item-name"><a href="san-pham-chi-tiet.aspx">Xe phát sóng lưu động</a></div>
                            <div class="view-all"><a href="san-pham-chi-tiet.aspx">Xem thêm</a></div>
                        </div>
                        <div class="item">
                            <div class="item-img">
                                <a href="san-pham-chi-tiet.aspx">
                                    <img src="assets/images/img9.jpg" alt="" />
                                    <div class="item-hover">
                                        <p>Phát sóng cho các mục đích để ứng cứu thông tin như một trạm BTS (đối với các đơn vị thông tin như: Vinaphone, Mobiphone, Viettel,Beeline,...) </p>
                                    </div>
                                </a>
                            </div>
                            <div class="item-name"><a href="san-pham-chi-tiet.aspx">Xe phát sóng lưu động</a></div>
                            <div class="view-all"><a href="san-pham-chi-tiet.aspx">Xem thêm</a></div>
                        </div>
                        <div class="item">
                            <div class="item-img">
                                <a href="san-pham-chi-tiet.aspx">
                                    <img src="assets/images/img9.jpg" alt="" />
                                    <div class="item-hover">
                                        <p>Phát sóng cho các mục đích để ứng cứu thông tin như một trạm BTS (đối với các đơn vị thông tin như: Vinaphone, Mobiphone, Viettel,Beeline,...) </p>
                                    </div>
                                </a>
                            </div>
                            <div class="item-name"><a href="san-pham-chi-tiet.aspx">Xe phát sóng lưu động</a></div>
                            <div class="view-all"><a href="san-pham-chi-tiet.aspx">Xem thêm</a></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="ColAside">
                <uc1:ucsanpham runat="server" ID="ucsanpham" />
            </div>
        </div>
    </div>
</asp:Content>

