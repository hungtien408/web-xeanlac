<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="tin-tuc.aspx.cs" Inherits="tin_tuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>An Lạc</title>
    <meta name="description" content="An Lạc" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="banner-main">
        <img src="assets/images/banner2.jpg" alt="" />
    </div>
    <div class="container wapper-main">
        <div class="title-main">
            <h1>TIN TỨC</h1>
        </div>
        <div class="news-hot default-news">
            <div id="silderNews" class="owl-carousel">
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
        <div class="tab-news">
            <div class="list-tab">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs tabpro" role="tablist">
                    <li><a href="#tab3" data-toggle="tab">Tin trong ngành</a></li>
                    <li><a href="#tab4" data-toggle="tab">Tin khuyến mãi</a></li>
                </ul>
            </div>
            <div class="list-product">
                <div class="tab-product">
                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane product-main" id="tab3">
                            <div class="news-all">
                                <ul>
                                    <li>
                                        <div class="news-img">
                                            <a href="tin-tuc-chi-tiet.aspx">
                                                <img src="assets/images/news4.jpg" /></a>
                                        </div>
                                        <div class="news-info">
                                            <div class="news-name"><a href="tin-tuc-chi-tiet.aspx">Cơ hội tăng giá nhờ hạ tầng.</a></div>
                                            <div class="description">Theo quy hoạch đến năm 2025, khu Đông sẽ trở thành trung tâm đô thị tri thức và công nghệ cao của TP HCM và tập trung nhiều dự án hạ tầng giao thông quy mô trọng điểm. </div>
                                            <div class="view-all"><a href="tin-tuc-chi-tiet.aspx">Xem thêm</a></div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="news-img">
                                            <a href="tin-tuc-chi-tiet.aspx">
                                                <img src="assets/images/news5.jpg" /></a>
                                        </div>
                                        <div class="news-info">
                                            <div class="news-name"><a href="tin-tuc-chi-tiet.aspx">Cơ hội tăng giá nhờ hạ tầng.</a></div>
                                            <div class="description">Theo quy hoạch đến năm 2025, khu Đông sẽ trở thành trung tâm đô thị tri thức và công nghệ cao của TP HCM và tập trung nhiều dự án hạ tầng giao thông quy mô trọng điểm. </div>
                                            <div class="view-all"><a href="tin-tuc-chi-tiet.aspx">Xem thêm</a></div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="news-img">
                                            <a href="tin-tuc-chi-tiet.aspx">
                                                <img src="assets/images/news6.jpg" /></a>
                                        </div>
                                        <div class="news-info">
                                            <div class="news-name"><a href="tin-tuc-chi-tiet.aspx">Cơ hội tăng giá nhờ hạ tầng.</a></div>
                                            <div class="description">Theo quy hoạch đến năm 2025, khu Đông sẽ trở thành trung tâm đô thị tri thức và công nghệ cao của TP HCM và tập trung nhiều dự án hạ tầng giao thông quy mô trọng điểm. </div>
                                            <div class="view-all"><a href="tin-tuc-chi-tiet.aspx">Xem thêm</a></div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="news-img">
                                            <a href="tin-tuc-chi-tiet.aspx">
                                                <img src="assets/images/news7.jpg" /></a>
                                        </div>
                                        <div class="news-info">
                                            <div class="news-name"><a href="tin-tuc-chi-tiet.aspx">Cơ hội tăng giá nhờ hạ tầng.</a></div>
                                            <div class="description">Theo quy hoạch đến năm 2025, khu Đông sẽ trở thành trung tâm đô thị tri thức và công nghệ cao của TP HCM và tập trung nhiều dự án hạ tầng giao thông quy mô trọng điểm. </div>
                                            <div class="view-all"><a href="tin-tuc-chi-tiet.aspx">Xem thêm</a></div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="news-img">
                                            <a href="tin-tuc-chi-tiet.aspx">
                                                <img src="assets/images/news8.jpg" /></a>
                                        </div>
                                        <div class="news-info">
                                            <div class="news-name"><a href="tin-tuc-chi-tiet.aspx">Cơ hội tăng giá nhờ hạ tầng.</a></div>
                                            <div class="description">Theo quy hoạch đến năm 2025, khu Đông sẽ trở thành trung tâm đô thị tri thức và công nghệ cao của TP HCM và tập trung nhiều dự án hạ tầng giao thông quy mô trọng điểm. </div>
                                            <div class="view-all"><a href="tin-tuc-chi-tiet.aspx">Xem thêm</a></div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="news-img">
                                            <a href="tin-tuc-chi-tiet.aspx">
                                                <img src="assets/images/news9.jpg" /></a>
                                        </div>
                                        <div class="news-info">
                                            <div class="news-name"><a href="tin-tuc-chi-tiet.aspx">Cơ hội tăng giá nhờ hạ tầng.</a></div>
                                            <div class="description">Theo quy hoạch đến năm 2025, khu Đông sẽ trở thành trung tâm đô thị tri thức và công nghệ cao của TP HCM và tập trung nhiều dự án hạ tầng giao thông quy mô trọng điểm. </div>
                                            <div class="view-all"><a href="tin-tuc-chi-tiet.aspx">Xem thêm</a></div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="pager">
                                <a href="#" class="current">1</a>
                                <a href="#">2</a>
                                <a href="#">3</a>
                                <a href="#" class="next fa fa-caret-right"></a>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane product-main" id="tab4">
                            <div class="news-all">
                                <ul>
                                    <li>
                                        <div class="news-img">
                                            <a href="tin-tuc-chi-tiet.aspx">
                                                <img src="assets/images/news5.jpg" /></a>
                                        </div>
                                        <div class="news-info">
                                            <div class="news-name"><a href="tin-tuc-chi-tiet.aspx">Cơ hội tăng giá nhờ hạ tầng.</a></div>
                                            <div class="description">Theo quy hoạch đến năm 2025, khu Đông sẽ trở thành trung tâm đô thị tri thức và công nghệ cao của TP HCM và tập trung nhiều dự án hạ tầng giao thông quy mô trọng điểm. </div>
                                            <div class="view-all"><a href="tin-tuc-chi-tiet.aspx">Xem thêm</a></div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

