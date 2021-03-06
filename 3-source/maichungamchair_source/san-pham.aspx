﻿<%@ Page Title="" Language="C#" MasterPageFile="~/site-product.master" AutoEventWireup="true"
    CodeFile="san-pham.aspx.cs" Inherits="san_pham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphSite" runat="Server">
    <span><asp:Label ID="lblTitle" runat="server" Text=""></asp:Label></span>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:HiddenField ID="hdnSanPham" runat="server" />
            <a class="a-link-sp" href="<%= hdnSanPham.Value %>"></a>
    <asp:ListView ID="lstProduct" runat="server" DataSourceID="odsProduct" EnableModelValidation="True">
        <ItemTemplate>
            <div class="col-xs-4 element-item">
                <div class="product-box text-center scale-animate">
                    <%--<div class="icon-hot">
                        <%# Eval("IsHot").ToString().Equals("True") ? "<img class='img-responsive' src='assets/images/icon-hot.png' alt='' />" : "" %>
                        <%# Eval("IsNew").ToString().Equals("True") ? "<img class='img-responsive' src='assets/images/icon-new.png' alt='' />" : "" %></div>--%>
                    <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'
                        class="product-img contain-img">
                        <img id="Img1" class="hideo" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/product-img-1.jpg" %>'
                            runat="server" /></a>
                    <h4 class="product-name">
                        <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>
                            <%# Eval("ProductName") %></a></h4>
                    <div class="product-code">
                        <%# Eval("Tag") %></div>
                    <div class="product-price">
                        <strong>
                            <%# string.IsNullOrEmpty(Eval("OtherPrice").ToString()) ?(string.Format("{0:##,###.##}", Eval("Price")).Replace('.', '*').Replace(',', '.').Replace('*', ',')) :  Eval("OtherPrice") %><%# string.IsNullOrEmpty(Eval("Price").ToString()) ? "" : "<u>đ</u>"%></strong>
                    </div>
                </div>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <div class="product-tb row">
                <span runat="server" id="itemPlaceholder" />
            </div>
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsProduct" runat="server" SelectMethod="ProductSelectAll"
        TypeName="TLLib.Product">
        <SelectParameters>
            <asp:Parameter Name="StartRowIndex" Type="String" />
            <asp:Parameter Name="EndRowIndex" Type="String" />
            <asp:Parameter Name="Keyword" Type="String" />
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="PriceFrom" Type="String" />
            <asp:Parameter Name="PriceTo" Type="String" />
            <asp:QueryStringParameter QueryStringField="pci" Name="CategoryID" Type="String" />
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
    <div class="pager">
        <asp:DataPager ID="DataPager1" runat="server" PageSize="9" PagedControlID="lstProduct">
            <Fields>
                <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="true" ShowNextPageButton="false"
                    ShowPreviousPageButton="false" ButtonCssClass="first fa fa-backward" RenderDisabledButtonsAsLabels="true"
                    FirstPageText="" />
                <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="false" ShowNextPageButton="false"
                    ShowPreviousPageButton="true" ButtonCssClass="prev fa fa-caret-left" RenderDisabledButtonsAsLabels="true"
                    PreviousPageText="" />
                <asp:NumericPagerField ButtonCount="5" NumericButtonCssClass="numer-paging" CurrentPageLabelCssClass="current" />
                <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="false" ButtonCssClass="next fa fa-caret-right"
                    ShowNextPageButton="true" ShowPreviousPageButton="false" RenderDisabledButtonsAsLabels="true"
                    NextPageText="" />
                <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="True" ButtonCssClass="last fa fa-forward"
                    ShowNextPageButton="false" ShowPreviousPageButton="false" RenderDisabledButtonsAsLabels="true"
                    LastPageText="" />
            </Fields>
        </asp:DataPager>
    </div>
</asp:Content>
