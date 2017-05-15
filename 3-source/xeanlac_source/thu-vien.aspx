<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="thu-vien.aspx.cs" Inherits="thu_vien" %>

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
        <div class="library-picture">
            <div id="librarySlide" class="owl-carousel">
                <asp:ListView ID="lstLibrary" runat="server" DataSourceID="odsLibrary"
                    EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="item">
                            <div class="proinfo">
                                <a data-modal='<%# "#login-modal" + Eval("PhotoAlbumCategoryID") %>' href="javascript:void(0);">
                                    <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/photoalbumcategory/" + Eval("ImageName") %>'
                                        visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                        runat="server" />
                                    <div class="text-hover">
                                        <p><%# Eval("PhotoAlbumCategoryName") %></p>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsLibrary" runat="server" SelectMethod="PhotoAlbumCategorySelectAll" TypeName="TLLib.PhotoAlbumCategory">
                    <SelectParameters>
                        <asp:Parameter Name="PhotoAlbumCategoryName" Type="String"></asp:Parameter>
                        <asp:Parameter Name="IsShowOnMenu" Type="String"></asp:Parameter>
                        <asp:Parameter Name="IsShowOnHomePage" Type="String"></asp:Parameter>
                        <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Priority" Type="String"></asp:Parameter>
                        <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String"></asp:Parameter>
                    </SelectParameters>
                </asp:ObjectDataSource>
            </div>
        </div>

        <div class="video-main">
            <asp:ListView ID="lstVideoHot" runat="server" DataSourceID="odsVideoHot"
                EnableModelValidation="True">
                <ItemTemplate>
                    <div class="video-hot">
                        <a href='<%# progressTitle(Eval("Title")) + "-vd-" + Eval("VideoID") + ".aspx" %>'>
                            <div class="videoimg">
                                <img alt='<%# Eval("ImagePath") %>' src='<%# "~/res/video/thumbs/" + Eval("ImagePath") %>'
                                    visible='<%# string.IsNullOrEmpty( Eval("ImagePath").ToString()) ? false : true %>'
                                    runat="server" />
                            </div>
                        </a>
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsVideoHot" runat="server" SelectMethod="VideoSelectAll" TypeName="TLLib.Video">
                <SelectParameters>
                    <asp:Parameter Name="Title" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Description" Type="String"></asp:Parameter>
                    <asp:Parameter Name="VideoCategoryID" Type="String"></asp:Parameter>
                    <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String"></asp:Parameter>
                    <asp:Parameter Name="IsShowOnHomePage" Type="String"></asp:Parameter>
                    <asp:Parameter DefaultValue="True" Name="IsHot" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Priority" Type="String"></asp:Parameter>
                    <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String"></asp:Parameter>
                </SelectParameters>
            </asp:ObjectDataSource>
            <div class="video-box">
                <h1>VIDEO DỰ ÁN KHÁC</h1>
                <div id="videoSlide" class="wrapper-video">
                    <asp:ListView ID="lstVideo" runat="server" DataSourceID="odsVideo"
                        EnableModelValidation="True">
                        <ItemTemplate>
                            <div class="item-video">
                                <a href='<%# progressTitle(Eval("Title")) + "-vd-" + Eval("VideoID") + ".aspx" %>'>
                                    <div class="video-img">
                                        <img alt='<%# Eval("ImagePath") %>' src='<%# "~/res/video/thumbs/" + Eval("ImagePath") %>'
                                            visible='<%# string.IsNullOrEmpty( Eval("ImagePath").ToString()) ? false : true %>'
                                            runat="server" />
                                    </div>
                                </a>
                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsVideo" runat="server" SelectMethod="VideoSelectAll" TypeName="TLLib.Video">
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
        <asp:ListView ID="lstLibrary2" runat="server" DataSourceID="odsLibrary"
            EnableModelValidation="True">
            <ItemTemplate>
                <div id='<%# "login-modal" + Eval("PhotoAlbumCategoryID") %>' class="modal" style="display: none;">
                    <asp:HiddenField ID="hdnPhotoAlbumCategoryID" Value='<%# Eval("PhotoAlbumCategoryID") %>' runat="server" />
                    <div class="sliderGallery gallery-slider">
                        <div class="slider-for">
                            <asp:ListView ID="lstImageLibraryBig" runat="server" DataSourceID="odsImageLibrary"
                                EnableModelValidation="True">
                                <ItemTemplate>
                                    <div class="slider-big">
                                        <div class="gallery-group">
                                            <div class="gallery-img">
                                                <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/photoalbum/" + Eval("ImageName") %>'
                                                    visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                                    runat="server" />
                                                <span><%# Eval("Title") %></span>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <span runat="server" id="itemPlaceholder" />
                                </LayoutTemplate>
                            </asp:ListView>
                            <asp:ObjectDataSource ID="odsImageLibrary" runat="server" SelectMethod="PhotoAlbumSelectAll" TypeName="TLLib.PhotoAlbum">
                                <SelectParameters>
                                    <asp:Parameter Name="Keyword" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Title" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Descripttion" Type="String"></asp:Parameter>
                                    <asp:ControlParameter ControlID="hdnPhotoAlbumCategoryID" PropertyName="Value" Name="PhotoAlbumCategoryID" Type="String"></asp:ControlParameter>
                                    <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Priority" Type="String"></asp:Parameter>
                                    <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String"></asp:Parameter>
                                </SelectParameters>
                            </asp:ObjectDataSource>
                        </div>
                        <div class="gallery-smalls">
                            <div class="slider-nav">
                                <asp:ListView ID="lstImageLibrarySmall" runat="server" DataSourceID="odsImageLibrary"
                                    EnableModelValidation="True">
                                    <ItemTemplate>
                                        <div class="slider-small">
                                            <div class="gallery-small">
                                                <div class="small-box">
                                                    <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/photoalbum/thumbs/" + Eval("ImageName") %>'
                                                        visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                                        runat="server" />
                                                </div>
                                            </div>
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
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
    </div>

</asp:Content>

