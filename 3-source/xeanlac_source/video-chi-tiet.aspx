<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="video-chi-tiet.aspx.cs" Inherits="video_chi_tiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="banner-main">
        <asp:ListView ID="lstBannerLibrary" runat="server" DataSourceID="odsBannerLibrary"
            EnableModelValidation="True">
            <ItemTemplate>
                <img alt='<%# Eval("FileName") %>' src='<%# "~/res/advertisement/" + Eval("FileName") %>'
                    visible='<%# string.IsNullOrEmpty(Eval("FileName").ToString()) ? false : true %>' runat="server" />
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsBannerLibrary" runat="server"
            SelectMethod="AdsBannerSelectAll"
            TypeName="TLLib.AdsBanner">
            <SelectParameters>
                <asp:Parameter Name="StartRowIndex" Type="String" />
                <asp:Parameter Name="EndRowIndex" Type="String" />
                <asp:Parameter DefaultValue="10" Name="AdsCategoryID" Type="String" />
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
        <div class="title-main">
            <h1>THƯ VIỆN</h1>
        </div>
        <div class="container wapper-main">
            <div id="site" class="corner">
                <a href="thu-vien.aspx" runat="server"><span>Thư viện</span></a><span>/</span><span> Video</span>
            </div>
            <div class="video-bg">
                <div class="video-detail">
                    <asp:ListView ID="lstVideoDetail" runat="server" DataSourceID="odsVideoDetail"
                        EnableModelValidation="True">
                        <ItemTemplate>
                            <h1><%# Eval("Title") %></h1>
                            <div class="wrapper-video">
                                <div class="video-details">
                                    <div id="jwplayervideodetails"></div>
                                    <script type="text/javascript">
                                        $(document).ready(function () {
                                            jwplayer('jwplayervideodetails').setup({
                                                image: '<%# "res/video/thumbs/" + Eval("ImagePath") %>',
                                                file: '<%# string.IsNullOrEmpty(Eval("VideoPath").ToString()) ? Eval("GLobalEmbedScript") : "res/video/" + Eval("VideoPath") %>',
                                                flashplayer: "assets/js/jwplayer.flash.swf",
                                                width: '100%',
                                                aspectratio: '16:9',
                                                primary: "html5",
                                            });
                                        });
                                    </script>
                                </div>
                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsVideoDetail" runat="server" SelectMethod="VideoSelectOne" TypeName="TLLib.Video">
                        <SelectParameters>
                            <asp:QueryStringParameter QueryStringField="vd" Name="VideoID" Type="String"></asp:QueryStringParameter>
                        </SelectParameters>
                    </asp:ObjectDataSource>

                </div>
                <div class="video-all">
                    <h1>VIDEO KHÁC</h1>
                    <div id="librarySlide" class="owl-carousel">
                        <asp:ListView ID="lstVideoSame" runat="server" DataSourceID="odsVideoSame"
                            EnableModelValidation="True">
                            <ItemTemplate>
                                <div class="item">
                                    <div class="item-video">
                                        <a href='<%# progressTitle(Eval("Title")) + "-vd-" + Eval("VideoID") + ".aspx" %>'>
                                            <div class="video-img">
                                                <img alt='<%# Eval("ImagePath") %>' src='<%# "~/res/video/thumbs/" + Eval("ImagePath") %>'
                                                    visible='<%# string.IsNullOrEmpty( Eval("ImagePath").ToString()) ? false : true %>'
                                                    runat="server" />
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsVideoSame" runat="server" SelectMethod="VideoSelectAll" TypeName="TLLib.Video">
                            <SelectParameters>
                                <asp:Parameter Name="Title" Type="String"></asp:Parameter>
                                <asp:Parameter Name="Description" Type="String"></asp:Parameter>
                                <asp:Parameter Name="VideoCategoryID" Type="String"></asp:Parameter>
                                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String"></asp:Parameter>
                                <asp:Parameter Name="IsShowOnHomePage" Type="String"></asp:Parameter>
                                <asp:Parameter Name="IsHot" Type="String"></asp:Parameter>
                                <asp:Parameter Name="Priority" Type="String"></asp:Parameter>
                                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String"></asp:Parameter>
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

