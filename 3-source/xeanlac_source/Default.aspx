<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="banner">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <asp:ListView ID="lstBanner1" runat="server"
                    DataSourceID="odsBanner" EnableModelValidation="True">
                    <ItemTemplate>
                        <li data-target="#carousel-example-generic" data-slide-to='<%# Container.DataItemIndex %>' class='<%# (Container.DataItemIndex) == 0 ? "active" : "" %>'></li>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <asp:ListView ID="lstBanner2" runat="server"
                    DataSourceID="odsBanner" EnableModelValidation="True">
                    <ItemTemplate>
                        <div class='<%# (Container.DataItemIndex) == 0 ? "item active" : "item" %>'>
                            <img alt='<%# Eval("FileName") %>' src='<%# "~/res/advertisement/" + Eval("FileName") %>'
                                visible='<%# string.IsNullOrEmpty(Eval("FileName").ToString()) ? false : true %>' runat="server" />
                            <div class="carousel-caption">
                            </div>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsBanner" runat="server"
                    SelectMethod="AdsBannerSelectAll"
                    TypeName="TLLib.AdsBanner">
                    <SelectParameters>
                        <asp:Parameter Name="StartRowIndex" Type="String" />
                        <asp:Parameter Name="EndRowIndex" Type="String" />
                        <asp:Parameter DefaultValue="5" Name="AdsCategoryID" Type="String" />
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
        </div>
    </div>
    <div class="container wapper-main">
        <div class="default-about">
            <div class="title-main">
                <h1>VỀ CHÚNG TÔI</h1>
            </div>
            <div class="about-content">

                <asp:ListView ID="lstAbout" runat="server" DataSourceID="odsAbout"
                    EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="about-right">
                            <div class="about-img">
                                <h1>an lac corporation</h1>
                                <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/product/" + Eval("ImageName") %>'
                                    visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                    runat="server" />
                            </div>
                        </div>
                        <div class="about-left">
                            <div class="description">
                                <%# Eval("Description") %>
                            </div>
                            <div class="view-more"><a href="gioi-thieu.aspx">Xem thêm</a></div>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsAbout" runat="server" SelectMethod="ProductSelectAll"
                    TypeName="TLLib.Product">
                    <SelectParameters>
                        <asp:Parameter Name="StartRowIndex" Type="String" />
                        <asp:Parameter Name="EndRowIndex" Type="String" />
                        <asp:Parameter Name="Keyword" Type="String" />
                        <asp:Parameter Name="ProductName" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="PriceFrom" Type="String" />
                        <asp:Parameter Name="PriceTo" Type="String" />
                        <asp:Parameter DefaultValue="1" Name="CategoryID" Type="String" />
                        <asp:Parameter Name="ManufacturerID" Type="String" />
                        <asp:Parameter Name="OriginID" Type="String" />
                        <asp:Parameter Name="Tag" Type="String" />
                        <asp:Parameter Name="InStock" Type="String" />
                        <asp:Parameter Name="IsHot" Type="String" />
                        <asp:Parameter Name="IsNew" Type="String" />
                        <asp:Parameter Name="IsBestSeller" Type="String" />
                        <asp:Parameter Name="IsSaleOff" Type="String" />
                        <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                        <asp:Parameter Name="FromDate" Type="String" />
                        <asp:Parameter Name="ToDate" Type="String" />
                        <asp:Parameter Name="Priority" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </div>
        </div>
        <div class="default-video">
            <div class="row">
                <asp:ListView ID="lstVideoHome" runat="server" DataSourceID="odsVideoHome"
                    EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="col-md-4">
                            <div class="wrapper-video">
                                <div class="video-details">
                                    <div id='<%# "jwplayer" + Eval("VideoID") %>'></div>
                                    <script type="text/javascript">
                                        $(document).ready(function () {
                                            jwplayer(<%# "jwplayer" + Eval("VideoID") %>).setup({
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
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsVideoHome" runat="server" SelectMethod="VideoSelectAll" TypeName="TLLib.Video">
                    <SelectParameters>
                        <asp:Parameter Name="Title" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Description" Type="String"></asp:Parameter>
                        <asp:Parameter Name="VideoCategoryID" Type="String"></asp:Parameter>
                        <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String"></asp:Parameter>
                        <asp:Parameter DefaultValue="True" Name="IsShowOnHomePage" Type="String"></asp:Parameter>
                        <asp:Parameter Name="IsHot" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Priority" Type="String"></asp:Parameter>
                        <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String"></asp:Parameter>
                    </SelectParameters>
                </asp:ObjectDataSource>
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
                <div class="view-more"><a href="san-pham.aspx">Xem thêm</a></div>
            </div>
            <div class="product-content">
                <asp:ListView ID="lstProductHot" runat="server" DataSourceID="odsProductHot"
                    EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="proinfo">
                            <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>
                                <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/product/" + Eval("ImageName") %>'
                                    visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                    runat="server" />
                                <div class="text-hover">
                                    <p><%# Eval("ProductName") %></p>
                                </div>
                            </a>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsProductHot" runat="server" SelectMethod="ProductSelectAll"
                    TypeName="TLLib.Product">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                        <asp:Parameter DefaultValue="8" Name="EndRowIndex" Type="String" />
                        <asp:Parameter Name="Keyword" Type="String" />
                        <asp:Parameter Name="ProductName" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="PriceFrom" Type="String" />
                        <asp:Parameter Name="PriceTo" Type="String" />
                        <asp:Parameter DefaultValue="3" Name="CategoryID" Type="String" />
                        <asp:Parameter Name="ManufacturerID" Type="String" />
                        <asp:Parameter Name="OriginID" Type="String" />
                        <asp:Parameter Name="Tag" Type="String" />
                        <asp:Parameter Name="InStock" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsHot" Type="String" />
                        <asp:Parameter Name="IsNew" Type="String" />
                        <asp:Parameter Name="IsBestSeller" Type="String" />
                        <asp:Parameter Name="IsSaleOff" Type="String" />
                        <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                        <asp:Parameter Name="FromDate" Type="String" />
                        <asp:Parameter Name="ToDate" Type="String" />
                        <asp:Parameter Name="Priority" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </div>
        </div>

    </div>
    <div class="title-main">
        <h1>DỊCH VỤ</h1>
    </div>
    <div class="default-service">
        <div class="container">
            <div class="row">
                <asp:ListView ID="lstServiceCategory" runat="server" DataSourceID="odsServiceCategory"
                    EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="col-md-4">
                            <div class="serinfo">
                                <a href='<%# progressTitle(Eval("ProductCategoryName")) + "-sci-" + Eval("ProductCategoryID") + ".aspx" %>'>
                                    <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/productcategory/" + Eval("ImageName") %>'
                                        visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                        runat="server" />
                                    <h1><%# Eval("ProductCategoryName") %></h1>
                                    <p>
                                        <%# Eval("Description") %>
                                    </p>
                                </a>
                            </div>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsServiceCategory" runat="server"
                    SelectMethod="ProductCategorySelectAll" TypeName="TLLib.ProductCategory">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="4" Name="parentID" Type="Int32" />
                        <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
                        <asp:Parameter Name="IsShowOnMenu" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsShowOnHomePage" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
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
                    <asp:ListView ID="lstNewCategory" runat="server" DataSourceID="odsNewCategory"
                        EnableModelValidation="True">
                        <ItemTemplate>
                            <li role="presentation"><a href='<%# "#tab" + Eval("ProductCategoryID") %>' onclick="initSlider(this)" data-toggle="tab"><%# Eval("ProductCategoryName") %></a></li>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsNewCategory" runat="server"
                        SelectMethod="ProductCategorySelectAll" TypeName="TLLib.ProductCategory">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="2" Name="parentID" Type="Int32" />
                            <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
                            <asp:Parameter Name="IsShowOnMenu" Type="String" />
                            <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </ul>
            </div>
            <div class="list-product">
                <div class="tab-product">
                    <!-- Tab panes -->
                    <div class="tab-content">
                        <asp:ListView ID="lstNewCategory2" runat="server" DataSourceID="odsNewCategory"
                            EnableModelValidation="True">
                            <ItemTemplate>
                                <div role="tabpanel" class="tab-pane product-main" id='<%# "tab" + Eval("ProductCategoryID") %>'>
                                    <asp:HiddenField ID="hdnNewCateogryID" Value='<%# Eval("ProductCategoryID") %>' runat="server" />
                                    <div id='<%# "silderProduct" + Eval("ProductCategoryID") %>' class="owl-carousel">
                                        <asp:ListView ID="lstNewHot" runat="server" DataSourceID="odsNewHot"
                                            EnableModelValidation="True">
                                            <ItemTemplate>
                                                <div class="item">
                                                    <div class="item-img">
                                                        <a href='<%# progressTitle(Eval("ProductName")) + "-tt-" + Eval("ProductID") + ".aspx" %>'>
                                                            <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/product/" + Eval("ImageName") %>'
                                                                visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                                                runat="server" /></a>
                                                    </div>
                                                    <div class="item-box">
                                                        <div class="item-name">
                                                            <a href='<%# progressTitle(Eval("ProductName")) + "-tt-" + Eval("ProductID") + ".aspx" %>'><%# TLLib.Common.SplitSummary(Eval("ProductName").ToString(), 60) %></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                            <LayoutTemplate>
                                                <span runat="server" id="itemPlaceholder" />
                                            </LayoutTemplate>
                                        </asp:ListView>
                                        <asp:ObjectDataSource ID="odsNewHot" runat="server" SelectMethod="ProductSelectAll"
                                            TypeName="TLLib.Product">
                                            <SelectParameters>
                                                <asp:Parameter Name="StartRowIndex" Type="String" />
                                                <asp:Parameter Name="EndRowIndex" Type="String" />
                                                <asp:Parameter Name="Keyword" Type="String" />
                                                <asp:Parameter Name="ProductName" Type="String" />
                                                <asp:Parameter Name="Description" Type="String" />
                                                <asp:Parameter Name="PriceFrom" Type="String" />
                                                <asp:Parameter Name="PriceTo" Type="String" />
                                                <asp:ControlParameter ControlID="hdnNewCateogryID" PropertyName="Value" Name="CategoryID" Type="String" />
                                                <asp:Parameter Name="ManufacturerID" Type="String" />
                                                <asp:Parameter Name="OriginID" Type="String" />
                                                <asp:Parameter Name="Tag" Type="String" />
                                                <asp:Parameter Name="InStock" Type="String" />
                                                <asp:Parameter DefaultValue="True" Name="IsHot" Type="String" />
                                                <asp:Parameter Name="IsNew" Type="String" />
                                                <asp:Parameter Name="IsBestSeller" Type="String" />
                                                <asp:Parameter Name="IsSaleOff" Type="String" />
                                                <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                                                <asp:Parameter Name="FromDate" Type="String" />
                                                <asp:Parameter Name="ToDate" Type="String" />
                                                <asp:Parameter Name="Priority" Type="String" />
                                                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                                            </SelectParameters>
                                        </asp:ObjectDataSource>
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
    </div>
</asp:Content>



