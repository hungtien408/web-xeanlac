<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>An Lạc</title>
    <meta name="description" content="An Lạc" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="banner">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item">
                    <img src="assets/images/banner-img-1.jpg" alt="" />
                </div>
                <div class="item">
                    <img src="assets/images/banner-img-2.jpg" alt="" />
                </div>
            </div>
        </div>
    </div>
    <div class="container wapper-main">
        <div class="default-about">
            <div class="title-main">
                <h1>VỀ CHÚNG TÔI</h1>
            </div>
            <div class="about-content">
                <div class="about-right">
                    <div class="about-img">
                        <h1>an lac corporation</h1>
                        <img src="assets/images/about1.jpg" alt="" />
                    </div>
                </div>
                <div class="about-left">
                    <div class="description">
                        <p><span style="font-family: 'UTM DaxBold';">Công Ty Cổ Phần An Lạc</span> tọa lạc trong khu công nghiệp Tân Tạo - Tp.Hồ Chí Minh, là Công ty chuyên thiết kế, chế tạo, sản xuất, cung ứng xe và các thiết bị chuyên dùng. Trong đó, chúng tôi đặc biệt quan tâm đến các hoạt động cung cấp dịch vụ sửa chữa, bảo hành xe và các thiết bị chuyên dùng.</p>
                        <br />
                        <p>Với sự chuyên nghiệp trong lĩnh vực ô tô, <span style="font-family: 'UTM DaxBold';">An Lạc</span> đang là nơi hội tụ các kỹ thuật viên lành nghề chuyên về đồng, sơn, điện lạnh, máy, gầm và các lĩnh vực hỗ trợ khác cùng đội ngũ kỹ sư dày kinh nghiệm đã trải qua nhiếu năm trong nghề.</p>
                    </div>
                    <div class="view-more"><a href="#">Xem thêm</a></div>
                </div>


            </div>
        </div>
        <div class="default-video">
            <div class="row">
                <div class="col-md-4">
                    <div class="wrapper-video">
                        <div class="video-details">
                            <div id="jwplayer1"></div>
                            <script type="text/javascript">
                                $(document).ready(function () {
                                    jwplayer('jwplayer1').setup({
                                        image: "assets/images/video1.jpg",
                                        //image: '<%# "res/product/" + Eval("ImageName") %>',
                                        //file: '<%# !string.IsNullOrEmpty( Eval("VideoPath").ToString()) ? "res/product/video/" + Eval("VideoPath") : ""%>',
                                        file: "https://youtu.be/PDZH-x2nNRM",
                                        flashplayer: "assets/js/jwplayer.flash.swf",
                                        width: '100%',
                                        aspectratio: '16:9',
                                        primary: "html5",
                                    });
                                });
                            </script>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="wrapper-video">
                        <div class="video-details">
                            <div id="jwplayer2"></div>
                            <script type="text/javascript">
                                $(document).ready(function () {
                                    jwplayer('jwplayer2').setup({
                                        image: "assets/images/video1.jpg",
                                        //image: '<%# "res/product/" + Eval("ImageName") %>',
                                        //file: '<%# !string.IsNullOrEmpty( Eval("VideoPath").ToString()) ? "res/product/video/" + Eval("VideoPath") : ""%>',
                                        file: "https://youtu.be/PDZH-x2nNRM",
                                        flashplayer: "assets/js/jwplayer.flash.swf",
                                        width: '100%',
                                        aspectratio: '16:9',
                                        primary: "html5",
                                    });
                                });
                            </script>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="wrapper-video">
                        <div class="video-details">
                            <div id="jwplayer3"></div>
                            <script type="text/javascript">
                                $(document).ready(function () {
                                    jwplayer('jwplayer3').setup({
                                        image: "assets/images/video1.jpg",
                                        //image: '<%# "res/product/" + Eval("ImageName") %>',
                                        //file: '<%# !string.IsNullOrEmpty( Eval("VideoPath").ToString()) ? "res/product/video/" + Eval("VideoPath") : ""%>',
                                        file: "https://youtu.be/PDZH-x2nNRM",
                                        flashplayer: "assets/js/jwplayer.flash.swf",
                                        width: '100%',
                                        aspectratio: '16:9',
                                        primary: "html5",
                                    });
                                });
                            </script>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="default-product">
            <div class="title-main">
                <h1>SẢN PHẨM NỔI BẬT</h1>
            </div>
            <div class="product-text">
                <p>
                    <span style="font-family: 'UTM DaxBold';">Công Ty Cổ Phần An Lạc</span> với thế mạnh của mình từ đội ngũ quản lý và Trung tâm thiết kế với những phần mềm thiết kế tính toán tiên tiến cung cấp cho khách hàng những sản phẩm tốt nhất trong từng tính năng,kết cấu, kỹ thuật và giải pháp.
                </p>
                <div class="view-more"><a href="#">Xem thêm</a></div>
            </div>
            <div class="product-content">
                <div class="proinfo">
                    <a href="#">
                        <img src="assets/images/img1.jpg" alt="" />
                        <div class="text-hover">
                            <p>Xe phát sống lưu động</p>
                        </div>
                    </a>
                </div>
                <div class="proinfo">
                    <a href="#">
                        <img src="assets/images/img2.jpg" alt="" />
                        <div class="text-hover">
                            <p>Xe phát sống lưu động</p>
                        </div>
                    </a>
                </div>
                <div class="proinfo">
                    <a href="#">
                        <img src="assets/images/img3.jpg" alt="" />
                        <div class="text-hover">
                            <p>Xe phát sống lưu động</p>
                        </div>
                    </a>
                </div>
                <div class="proinfo">
                    <a href="#">
                        <img src="assets/images/img4.jpg" alt="" />
                        <div class="text-hover">
                            <p>Xe phát sống lưu động</p>
                        </div>
                    </a>
                </div>
                <div class="proinfo">
                    <a href="#">
                        <img src="assets/images/img5.jpg" alt="" />
                        <div class="text-hover">
                            <p>Xe phát sống lưu động</p>
                        </div>
                    </a>
                </div>
                <div class="proinfo">
                    <a href="#">
                        <img src="assets/images/img6.jpg" alt="" />
                        <div class="text-hover">
                            <p>Xe phát sống lưu động</p>
                        </div>
                    </a>
                </div>
                <div class="proinfo">
                    <a href="#">
                        <img src="assets/images/img7.jpg" alt="" />
                        <div class="text-hover">
                            <p>Xe phát sống lưu động</p>
                        </div>
                    </a>
                </div>
                <div class="proinfo">
                    <a href="#">
                        <img src="assets/images/img8.jpg" alt="" />
                        <div class="text-hover">
                            <p>Xe phát sống lưu động</p>
                        </div>
                    </a>
                </div>
            </div>
        </div>

    </div>
    <div class="title-main">
        <h1>DỊCH VỤ</h1>
    </div>
    <div class="default-service">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="serinfo">
                        <a href="#">
                            <img src="assets/images/icon6.png" alt="" />
                            <h1>SỬA CHỮA & BẢO DƯỠNG</h1>
                            <p>
                                Sửa chữa tất cả các loại ô tô, xe tải
                            </p>
                        </a>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="serinfo">
                        <a href="#">
                            <img src="assets/images/icon7.png" alt="" />
                            <h1>CÔNG NGHỆ GIA CÔNG</h1>
                            <p>
                                Các thiết bị, phụ kiện chuyên dụng
                            </p>
                        </a>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="serinfo">
                        <a href="#">
                            <img src="assets/images/icon8.png" alt="" />
                            <h1>GIA CÔNG KIM LOẠI</h1>
                            <p>
                                Nhận gia công kim loại tấm, sơn tĩnh điện
                            </p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="default-news">
            <div class="title-main">
                <h1>TIN TỨC</h1>
            </div>
            <div class="list-tab">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs tabpro" role="tablist">
                    <li role="presentation"><a href="#tab1" onclick="initSlider(this)" data-toggle="tab">Tin trong ngành</a></li>
                    <li role="presentation"><a href="#tab2" onclick="initSlider(this)" data-toggle="tab">Tin tuyển dụng</a></li>
                </ul>
            </div>
            <div class="list-product">
                <div class="tab-product">
                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane product-main" id="tab1">
                            <div id="silderProduct1" class="owl-carousel">
                                <div class="item">
                                    <div class="item-img">
                                        <a href="tin-tuc-chi-tiet.aspx">
                                            <img src="assets/images/news1.jpg" alt="" /></a>
                                    </div>
                                    <div class="item-box">
                                        <div class="item-name">
                                            <a href="tin-tuc-chi-tiet.aspx">Trường Hải, Honda, Toyota… đồng loạt hiến kế giúp ngành ô tô Việt “cất cánh”.</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="item-img">
                                        <a href="tin-tuc-chi-tiet.aspx">
                                            <img src="assets/images/news2.jpg" alt="" /></a>
                                    </div>
                                    <div class="item-box">
                                        <div class="item-name">
                                            <a href="tin-tuc-chi-tiet.aspx">Ô tô Việt trước sức ép thuế nhập khẩu 0%</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="item-img">
                                        <a href="tin-tuc-chi-tiet.aspx">
                                            <img src="assets/images/news3.jpg" alt="" /></a>
                                    </div>
                                    <div class="item-box">
                                        <div class="item-name">
                                            <a href="tin-tuc-chi-tiet.aspx">Từ 2018, ô tô Việt Nam sẽ đắt hơn nhiều ô tô Thái, Indonesia?</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="item-img">
                                        <a href="tin-tuc-chi-tiet.aspx">
                                            <img src="assets/images/news1.jpg" alt="" /></a>
                                    </div>
                                    <div class="item-box">
                                        <div class="item-name">
                                            <a href="tin-tuc-chi-tiet.aspx">Trường Hải, Honda, Toyota… đồng loạt hiến kế giúp ngành ô tô Việt “cất cánh”.</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane product-main" id="tab2">
                            <div id="silderProject2" class="owl-carousel">
                                <div class="item">
                                    <div class="item-img">
                                        <a href="tin-tuc-chi-tiet.aspx">
                                            <img src="assets/images/news1.jpg" alt="" /></a>
                                    </div>
                                    <div class="item-box">
                                        <div class="item-name">
                                            <a href="tin-tuc-chi-tiet.aspx">Ý nghĩa hoa sen</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
       
    </div>
</asp:Content>



