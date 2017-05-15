<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="video-chi-tiet.aspx.cs" Inherits="video_chi_tiet" %>

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
        <div class="container wapper-main">
            <div id="site" class="corner">
                <a href="thu-vien.aspx" runat="server"><span>Thư viện</span></a><span>/</span><span> Video</span>
            </div>
            <div class="video-bg">
                <div class="video-detail">
                    <h1>VIDEO XE THÙNG KÍN</h1>
                    <div class="wrapper-video">
                        <div class="video-details">
                            <div id="jwplayer3"></div>
                            <script type="text/javascript">
                                $(document).ready(function () {
                                    jwplayer('jwplayer3').setup({
                                        //image: "assets/images/video2.jpg",
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
                <div class="video-all">
                    <h1>VIDEO KHÁC</h1>
                    <div id="librarySlide" class="owl-carousel">
                        <div class="item">
                            <div class="item-video">
                                <a href="#">
                                    <div class="video-img">
                                        <img src="assets/images/video3.jpg" /></div>
                                </a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="item-video">
                                <a href="#">
                                    <div class="video-img">
                                        <img src="assets/images/video3.jpg" /></div>
                                </a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="item-video">
                                <a href="#">
                                    <div class="video-img">
                                        <img src="assets/images/video3.jpg" /></div>
                                </a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="item-video">
                                <a href="#">
                                    <div class="video-img">
                                        <img src="assets/images/video3.jpg" /></div>
                                </a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="item-video">
                                <a href="#">
                                    <div class="video-img">
                                        <img src="assets/images/video3.jpg" /></div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

