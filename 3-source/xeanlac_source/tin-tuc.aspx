<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="tin-tuc.aspx.cs" Inherits="tin_tuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="banner-main">
        <asp:ListView ID="lstBannerNew" runat="server" DataSourceID="odsBannerNew"
            EnableModelValidation="True">
            <ItemTemplate>
                <img alt='<%# Eval("FileName") %>' src='<%# "~/res/advertisement/" + Eval("FileName") %>'
                    visible='<%# string.IsNullOrEmpty(Eval("FileName").ToString()) ? false : true %>' runat="server" />
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsBannerNew" runat="server"
            SelectMethod="AdsBannerSelectAll"
            TypeName="TLLib.AdsBanner">
            <SelectParameters>
                <asp:Parameter Name="StartRowIndex" Type="String" />
                <asp:Parameter Name="EndRowIndex" Type="String" />
                <asp:Parameter DefaultValue="9" Name="AdsCategoryID" Type="String" />
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
            <h1>TIN TỨC</h1>
        </div>
        <div class="news-hot default-news">
            <div id="silderNews" class="owl-carousel">
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
                        <asp:Parameter DefaultValue="2" Name="CategoryID" Type="String" />
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
        <div class="tab-news">
            <div class="list-tab">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs tabpro" role="tablist">
                    <asp:ListView ID="lstNewCategory" runat="server" DataSourceID="odsNewCategory"
                        EnableModelValidation="True">
                        <ItemTemplate>
                            <li><a href='<%# "#tab" + Eval("ProductCategoryID") %>' data-toggle="tab"><%# Eval("ProductCategoryName") %></a></li>
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
                            EnableModelValidation="True" OnItemDataBound="lstNewCategory2_ItemDataBound">
                            <ItemTemplate>
                                <div role="tabpanel" class="tab-pane product-main" id='<%# "tab" + Eval("ProductCategoryID") %>'>
                                    <asp:HiddenField ID="hdnNewCateogryID" Value='<%# Eval("ProductCategoryID") %>' runat="server" />
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                            <div class="news-all">
                                                <asp:ListView ID="lstNew" runat="server" DataSourceID="odsNew"
                                                    EnableModelValidation="True">
                                                    <ItemTemplate>
                                                        <li>
                                                            <div class="new-box">
                                                                <div class="news-img">
                                                                    <a href='<%# progressTitle(Eval("ProductName")) + "-tt-" + Eval("ProductID") + ".aspx" %>'>
                                                                        <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/product/" + Eval("ImageName") %>'
                                                                            visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                                                            runat="server" /></a>
                                                                </div>
                                                                <div class="news-info">
                                                                    <div class="news-name"><a href='<%# progressTitle(Eval("ProductName")) + "-tt-" + Eval("ProductID") + ".aspx" %>'><%# Eval("ProductName") %></a></div>
                                                                    <div class="description"><%# Eval("Description") %></div>
                                                                    <div class="view-all"><a href='<%# progressTitle(Eval("ProductName")) + "-tt-" + Eval("ProductID") + ".aspx" %>'>Xem thêm</a></div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ItemTemplate>
                                                    <LayoutTemplate>
                                                        <ul>
                                                            <li runat="server" id="itemPlaceholder"></li>
                                                        </ul>
                                                    </LayoutTemplate>
                                                </asp:ListView>
                                                <asp:ObjectDataSource ID="odsNew" runat="server" SelectMethod="ProductSelectAll"
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
                                            <div class="pager">
                                                <asp:DataPager ID="DataPager1" runat="server" PageSize="6" PagedControlID="lstNew">
                                                    <Fields>
                                                        <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="false" ShowNextPageButton="false"
                                                            ShowPreviousPageButton="true" ButtonCssClass="prev fa fa-caret-left" RenderDisabledButtonsAsLabels="true"
                                                            PreviousPageText="" />
                                                        <asp:NumericPagerField ButtonCount="5" NumericButtonCssClass="numer-paging"
                                                            CurrentPageLabelCssClass="current" />
                                                        <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="false" ShowNextPageButton="true"
                                                            ShowPreviousPageButton="false" ButtonCssClass="next fa fa-caret-right" RenderDisabledButtonsAsLabels="true"
                                                            NextPageText="" />

                                                    </Fields>
                                                </asp:DataPager>
                                            </div>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
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

