<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="thu-vien.aspx.cs" Inherits="thu_vien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>An Lạc</title>
    <meta name="description" content="An Lạc" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="banner-main">
        <img src="assets/images/banner4.jpg" alt="" />
    </div>
    <div class="container wapper-main">
        <div class="title-main">
            <h1>THƯ VIỆN</h1>
        </div>
        <div class="library-picture">
            <div id="librarySlide" class="owl-carousel">
                <div class="item">
                    <div class="proinfo">
                        <a data-modal="#login-modal" href="javascript:void(0);">
                            <img src="assets/images/img1.jpg" alt="" />
                            <div class="text-hover">
                                <p>Xe phát sống lưu động</p>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="item">
                    <div class="proinfo">
                        <a data-modal="#login-modal1" href="javascript:void(0);">
                            <img src="assets/images/img2.jpg" alt="" />
                            <div class="text-hover">
                                <p>Xe phát sống lưu động</p>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="item">
                    <div class="proinfo">
                        <a data-modal="#login-modal2" href="javascript:void(0);">
                            <img src="assets/images/img3.jpg" alt="" />
                            <div class="text-hover">
                                <p>Xe phát sống lưu động</p>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="item">
                    <div class="proinfo">
                        <a data-modal="#login-modal3" href="javascript:void(0);">
                            <img src="assets/images/img4.jpg" alt="" />
                            <div class="text-hover">
                                <p>Xe phát sống lưu động</p>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="item">
                    <div class="proinfo">
                        <a data-modal="#login-modal4" href="javascript:void(0);">
                            <img src="assets/images/img5.jpg" alt="" />
                            <div class="text-hover">
                                <p>Xe phát sống lưu động</p>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
      
        <div class="video-main">
            <div class="video-hot">
                <a href="video-chi-tiet.aspx">
                    <div class="videoimg">
                        <img src="assets/images/video2.jpg" />
                    </div>
                </a>
            </div>
            <div class="video-box">
                <h1>VIDEO DỰ ÁN KHÁC</h1>
                <div id="videoSlide" class="wrapper-video">
                    <div class="item-video">
                        <a href="video-chi-tiet.aspx">
                            <div class="video-img">
                                <img src="assets/images/video3.jpg" />
                            </div>
                        </a>
                    </div>
                    <div class="item-video">
                        <a href="video-chi-tiet.aspx">
                            <div class="video-img">
                                <img src="assets/images/video4.jpg" />
                            </div>
                        </a>
                    </div>
                    <div class="item-video">
                        <a href="#">
                            <div class="video-img">
                                <img src="assets/images/video3.jpg" />
                            </div>
                        </a>
                    </div>
                    <div class="item-video">
                        <a href="#">
                            <div class="video-img">
                                <img src="assets/images/video4.jpg" />
                            </div>
                        </a>
                    </div>
                    <div class="item-video">
                        <a href="#">
                            <div class="video-img">
                                <img src="assets/images/video3.jpg" />
                            </div>
                        </a>
                    </div>
                    <div class="item-video">
                        <a href="#">
                            <div class="video-img">
                                <img src="assets/images/video4.jpg" />
                            </div>
                        </a>
                    </div>
                    <div class="item-video">
                        <a href="#">
                            <div class="video-img">
                                <img src="assets/images/video3.jpg" />
                            </div>
                        </a>
                    </div>
                    <div class="item-video">
                        <a href="#">
                            <div class="video-img">
                                <img src="assets/images/video4.jpg" />
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div id="login-modal" class="modal" style="display: none;">
            <div class="sliderGallery gallery-slider">
                <div class="slider-for">
                    <div class="slider-big">
                        <div class="gallery-group">
                            <div class="gallery-img">
                                <img src="assets/images/img1-big.jpg" alt="" />
                                <span>XE Ô TÔ THÙNG KÍN</span>
                            </div>
                        </div>
                    </div>
                    <div class="slider-big">
                        <div class="gallery-group">
                            <div class="gallery-img">
                                <img src="assets/images/img2-big.jpg" alt="" />
                                <span>XE Ô TÔ THÙNG KÍN 2</span>
                            </div>
                        </div>
                    </div>
                    <div class="slider-big">
                        <div class="gallery-group">
                            <div class="gallery-img">
                                <img src="assets/images/img3-big.jpg" alt="" />
                                <span>XE Ô TÔ THÙNG KÍN 3</span>
                            </div>
                        </div>
                    </div>
                    <div class="slider-big">
                        <div class="gallery-group">
                            <div class="gallery-img">
                                <img src="assets/images/img4-big.jpg" alt="" />
                                <span>XE Ô TÔ THÙNG KÍN 4</span>
                            </div>
                        </div>
                    </div>
                    <div class="slider-big">
                        <div class="gallery-group">
                            <div class="gallery-img">
                                <img src="assets/images/img5-big.jpg" alt="" />
                                <span>XE Ô TÔ THÙNG KÍN 5</span>
                            </div>
                        </div>
                    </div>
                    <div class="slider-big">
                        <div class="gallery-group">
                            <div class="gallery-img">
                                <img src="assets/images/img6-big.jpg" alt="" />
                                <span>XE Ô TÔ THÙNG KÍN 6</span>
                            </div>
                        </div>
                    </div>
                    <div class="slider-big">
                        <div class="gallery-group">
                            <div class="gallery-img">
                                <img src="assets/images/img7-big.jpg" alt="" />
                                <span>XE Ô TÔ THÙNG KÍN 7</span>
                            </div>
                        </div>
                    </div>
                    <div class="slider-big">
                        <div class="gallery-group">
                            <div class="gallery-img">
                                <img src="assets/images/img1-big.jpg" alt="" />
                                <span>XE Ô TÔ THÙNG KÍN</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="gallery-smalls">
                    <div class="slider-nav">
                        <div class="slider-small">
                            <div class="gallery-small">
                                <div class="small-box">
                                    <img src="assets/images/img1-small.jpg" />
                                </div>
                            </div>
                        </div>
                        <div class="slider-small">
                            <div class="gallery-small">
                                <div class="small-box">
                                    <img src="assets/images/img2-small.jpg" />
                                </div>
                            </div>
                        </div>
                        <div class="slider-small">
                            <div class="gallery-small">
                                <div class="small-box">
                                    <img src="assets/images/img3-small.jpg" />
                                </div>
                            </div>
                        </div>
                        <div class="slider-small">
                            <div class="gallery-small">
                                <div class="small-box">
                                    <img src="assets/images/img4-small.jpg" />
                                </div>
                            </div>
                        </div>
                        <div class="slider-small">
                            <div class="gallery-small">
                                <div class="small-box">
                                    <img src="assets/images/img5-small.jpg" />
                                </div>
                            </div>
                        </div>
                        <div class="slider-small">
                            <div class="gallery-small">
                                <div class="small-box">
                                    <img src="assets/images/img6-small.jpg" />
                                </div>
                            </div>
                        </div>
                        <div class="slider-small">
                            <div class="gallery-small">
                                <div class="small-box">
                                    <img src="assets/images/img7-small.jpg" />
                                </div>
                            </div>
                        </div>
                        <div class="slider-small">
                            <div class="gallery-small">
                                <div class="small-box">
                                    <img src="assets/images/img1-small.jpg" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="login-modal1" class="modal" style="display: none;">
                <div class="sliderGallery gallery-slider">
                    <div class="slider-for">
                        <div class="slider-big">
                            <div class="gallery-group">
                                <div class="gallery-img">
                                    <img src="assets/images/img1-big.jpg" alt="" />
                                    <span>XE Ô TÔ THÙNG KÍN</span>
                                </div>
                            </div>
                        </div>
                        <div class="slider-big">
                            <div class="gallery-group">
                                <div class="gallery-img">
                                    <img src="assets/images/img2-big.jpg" alt="" />
                                    <span>XE Ô TÔ THÙNG KÍN 2</span>
                                </div>
                            </div>
                        </div>
                        <div class="slider-big">
                            <div class="gallery-group">
                                <div class="gallery-img">
                                    <img src="assets/images/img3-big.jpg" alt="" />
                                    <span>XE Ô TÔ THÙNG KÍN 3</span>
                                </div>
                            </div>
                        </div>
                        <div class="slider-big">
                            <div class="gallery-group">
                                <div class="gallery-img">
                                    <img src="assets/images/img4-big.jpg" alt="" />
                                    <span>XE Ô TÔ THÙNG KÍN 4</span>
                                </div>
                            </div>
                        </div>
                        <div class="slider-big">
                            <div class="gallery-group">
                                <div class="gallery-img">
                                    <img src="assets/images/img5-big.jpg" alt="" />
                                    <span>XE Ô TÔ THÙNG KÍN 5</span>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="gallery-smalls">
                        <div class="slider-nav">
                            <div class="slider-small">
                                <div class="gallery-small">
                                    <div class="small-box">
                                        <img src="assets/images/img1-small.jpg" />
                                    </div>
                                </div>
                            </div>
                            <div class="slider-small">
                                <div class="gallery-small">
                                    <div class="small-box">
                                        <img src="assets/images/img2-small.jpg" />
                                    </div>
                                </div>
                            </div>
                            <div class="slider-small">
                                <div class="gallery-small">
                                    <div class="small-box">
                                        <img src="assets/images/img3-small.jpg" />
                                    </div>
                                </div>
                            </div>
                            <div class="slider-small">
                                <div class="gallery-small">
                                    <div class="small-box">
                                        <img src="assets/images/img4-small.jpg" />
                                    </div>
                                </div>
                            </div>
                            <div class="slider-small">
                                <div class="gallery-small">
                                    <div class="small-box">
                                        <img src="assets/images/img5-small.jpg" />
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div id="login-modal2" class="modal" style="display: none;">
                <div class="sliderGallery gallery-slider">
                    <div class="slider-for">
                        <div class="slider-big">
                            <div class="gallery-group">
                                <div class="gallery-img">
                                    <img src="assets/images/img1-big.jpg" alt="" />
                                    <span>XE Ô TÔ THÙNG KÍN</span>
                                </div>
                            </div>
                        </div>
                        <div class="slider-big">
                            <div class="gallery-group">
                                <div class="gallery-img">
                                    <img src="assets/images/img2-big.jpg" alt="" />
                                    <span>XE Ô TÔ THÙNG KÍN 2</span>
                                </div>
                            </div>
                        </div>
                        <div class="slider-big">
                            <div class="gallery-group">
                                <div class="gallery-img">
                                    <img src="assets/images/img3-big.jpg" alt="" />
                                    <span>XE Ô TÔ THÙNG KÍN 3</span>
                                </div>
                            </div>
                        </div>
                        <div class="slider-big">
                            <div class="gallery-group">
                                <div class="gallery-img">
                                    <img src="assets/images/img4-big.jpg" alt="" />
                                    <span>XE Ô TÔ THÙNG KÍN 4</span>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="gallery-smalls">
                        <div class="slider-nav">
                            <div class="slider-small">
                                <div class="gallery-small">
                                    <div class="small-box">
                                        <img src="assets/images/img1-small.jpg" />
                                    </div>
                                </div>
                            </div>
                            <div class="slider-small">
                                <div class="gallery-small">
                                    <div class="small-box">
                                        <img src="assets/images/img2-small.jpg" />
                                    </div>
                                </div>
                            </div>
                            <div class="slider-small">
                                <div class="gallery-small">
                                    <div class="small-box">
                                        <img src="assets/images/img3-small.jpg" />
                                    </div>
                                </div>
                            </div>
                            <div class="slider-small">
                                <div class="gallery-small">
                                    <div class="small-box">
                                        <img src="assets/images/img4-small.jpg" />
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div id="login-modal3" class="modal" style="display: none;">
                <div class="sliderGallery gallery-slider">
                    <div class="slider-for">
                        <div class="slider-big">
                            <div class="gallery-group">
                                <div class="gallery-img">
                                    <img src="assets/images/img1-big.jpg" alt="" />
                                    <span>XE Ô TÔ THÙNG KÍN</span>
                                </div>
                            </div>
                        </div>
                        <div class="slider-big">
                            <div class="gallery-group">
                                <div class="gallery-img">
                                    <img src="assets/images/img2-big.jpg" alt="" />
                                    <span>XE Ô TÔ THÙNG KÍN 2</span>
                                </div>
                            </div>
                        </div>
                        <div class="slider-big">
                            <div class="gallery-group">
                                <div class="gallery-img">
                                    <img src="assets/images/img3-big.jpg" alt="" />
                                    <span>XE Ô TÔ THÙNG KÍN 3</span>
                                </div>
                            </div>
                        </div>
                        <div class="slider-big">
                            <div class="gallery-group">
                                <div class="gallery-img">
                                    <img src="assets/images/img4-big.jpg" alt="" />
                                    <span>XE Ô TÔ THÙNG KÍN 4</span>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="gallery-smalls">
                        <div class="slider-nav">
                            <div class="slider-small">
                                <div class="gallery-small">
                                    <div class="small-box">
                                        <img src="assets/images/img1-small.jpg" />
                                    </div>
                                </div>
                            </div>
                            <div class="slider-small">
                                <div class="gallery-small">
                                    <div class="small-box">
                                        <img src="assets/images/img2-small.jpg" />
                                    </div>
                                </div>
                            </div>
                            <div class="slider-small">
                                <div class="gallery-small">
                                    <div class="small-box">
                                        <img src="assets/images/img3-small.jpg" />
                                    </div>
                                </div>
                            </div>
                            <div class="slider-small">
                                <div class="gallery-small">
                                    <div class="small-box">
                                        <img src="assets/images/img4-small.jpg" />
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div id="login-modal4" class="modal" style="display: none;">
                <div class="sliderGallery gallery-slider">
                    <div class="slider-for">
                        <div class="slider-big">
                            <div class="gallery-group">
                                <div class="gallery-img">
                                    <img src="assets/images/img1-big.jpg" alt="" />
                                    <span>XE Ô TÔ THÙNG KÍN</span>
                                </div>
                            </div>
                        </div>
                        <div class="slider-big">
                            <div class="gallery-group">
                                <div class="gallery-img">
                                    <img src="assets/images/img2-big.jpg" alt="" />
                                    <span>XE Ô TÔ THÙNG KÍN 2</span>
                                </div>
                            </div>
                        </div>
                        <div class="slider-big">
                            <div class="gallery-group">
                                <div class="gallery-img">
                                    <img src="assets/images/img3-big.jpg" alt="" />
                                    <span>XE Ô TÔ THÙNG KÍN 3</span>
                                </div>
                            </div>
                        </div>
                        <div class="slider-big">
                            <div class="gallery-group">
                                <div class="gallery-img">
                                    <img src="assets/images/img4-big.jpg" alt="" />
                                    <span>XE Ô TÔ THÙNG KÍN 4</span>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="gallery-smalls">
                        <div class="slider-nav">
                            <div class="slider-small">
                                <div class="gallery-small">
                                    <div class="small-box">
                                        <img src="assets/images/img1-small.jpg" />
                                    </div>
                                </div>
                            </div>
                            <div class="slider-small">
                                <div class="gallery-small">
                                    <div class="small-box">
                                        <img src="assets/images/img2-small.jpg" />
                                    </div>
                                </div>
                            </div>
                            <div class="slider-small">
                                <div class="gallery-small">
                                    <div class="small-box">
                                        <img src="assets/images/img3-small.jpg" />
                                    </div>
                                </div>
                            </div>
                            <div class="slider-small">
                                <div class="gallery-small">
                                    <div class="small-box">
                                        <img src="assets/images/img4-small.jpg" />
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

