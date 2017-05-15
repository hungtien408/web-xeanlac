<%@ Control Language="C#" AutoEventWireup="true" CodeFile="uc-dich-vu.ascx.cs" Inherits="uc_uc_dich_vu" %>
<div class="list-menu">
    <h1>DANH MỤC DỊCH VỤ</h1>
    <asp:ListView ID="lstServiceCategory" runat="server" DataSourceID="odsServiceCategory"
        EnableModelValidation="True">
        <ItemTemplate>
            <li><a href='<%# progressTitle(Eval("ProductCategoryName")) + "-sci-" + Eval("ProductCategoryID") + ".aspx" %>'><%# Eval("ProductCategoryName") %></a>
                <asp:HiddenField ID="hdnServiceCategoryID" Value='<%# Eval("ProductCategoryID") %>' runat="server" />
                <asp:ListView ID="lstServiceCategorySub" runat="server" DataSourceID="odsServiceCategorySub"
                    EnableModelValidation="True">
                    <ItemTemplate>
                        <li><a href='<%# progressTitle(Eval("ProductCategoryName")) + "-sci-" + Eval("ProductCategoryID") + ".aspx" %>'><%# Eval("ProductCategoryName") %></a></li>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <ul>
                            <li runat="server" id="itemPlaceholder"></li>
                        </ul>
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsServiceCategorySub" runat="server"
                    SelectMethod="ProductCategorySelectAll" TypeName="TLLib.ProductCategory">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="hdnServiceCategoryID" PropertyName="Value" Name="parentID" Type="Int32" />
                        <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
                        <asp:Parameter Name="IsShowOnMenu" Type="String" />
                        <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul>
                <li runat="server" id="itemPlaceholder"></li>
            </ul>
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsServiceCategory" runat="server"
        SelectMethod="ProductCategorySelectAll" TypeName="TLLib.ProductCategory">
        <SelectParameters>
            <asp:Parameter DefaultValue="4" Name="parentID" Type="Int32" />
            <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
            <asp:Parameter Name="IsShowOnMenu" Type="String" />
            <asp:Parameter Name="IsShowOnHomePage" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</div>