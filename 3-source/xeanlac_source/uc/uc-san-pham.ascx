<%@ Control Language="C#" AutoEventWireup="true" CodeFile="uc-san-pham.ascx.cs" Inherits="uc_uc_san_pham" %>
<div class="list-menu">
    <h1>DANH MỤC SẢN PHẨM</h1>
    <asp:ListView ID="lstProductCategory" runat="server" DataSourceID="odsProductCategory"
        EnableModelValidation="True">
        <ItemTemplate>
            <li><a href='<%# progressTitle(Eval("ProductCategoryName")) + "-pci-" + Eval("ProductCategoryID") + ".aspx" %>'><%# Eval("ProductCategoryName") %></a>
                <asp:HiddenField ID="hdnProductCategoryID" Value='<%# Eval("ProductCategoryID") %>' runat="server" />
                <asp:ListView ID="lstProductCategorySub" runat="server" DataSourceID="odsProductCategorySub"
                    EnableModelValidation="True">
                    <ItemTemplate>
                        <li><a href='<%# progressTitle(Eval("ProductCategoryName")) + "-pci-" + Eval("ProductCategoryID") + ".aspx" %>'><%# Eval("ProductCategoryName") %></a></li>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <ul>
                            <li runat="server" id="itemPlaceholder"></li>
                        </ul>
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsProductCategorySub" runat="server"
                    SelectMethod="ProductCategorySelectAll" TypeName="TLLib.ProductCategory">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="hdnProductCategoryID" PropertyName="Value" Name="parentID" Type="Int32" />
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
    <asp:ObjectDataSource ID="odsProductCategory" runat="server"
        SelectMethod="ProductCategorySelectAll" TypeName="TLLib.ProductCategory">
        <SelectParameters>
            <asp:Parameter DefaultValue="3" Name="parentID" Type="Int32" />
            <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
            <asp:Parameter Name="IsShowOnMenu" Type="String" />
            <asp:Parameter Name="IsShowOnHomePage" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</div>
