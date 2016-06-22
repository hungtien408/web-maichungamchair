<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>AC</title>
    <meta name="description" content="AC" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="bg-white">
            <div class="project-tabs">
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#tabs1" aria-controls="camera" role="tab"
                        data-toggle="tab">sản phẩm tiêu biểu</a></li>
                    <li role="presentation"><a href="#tabs2" aria-controls="dencamung" role="tab" data-toggle="tab">
                        sản phẩm mới nhất</a></li>
                    <li role="presentation"><a href="#tabs3" aria-controls="thietbichongtrom" role="tab"
                        data-toggle="tab">sản phẩm bán chạy</a></li>
                </ul>
                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="tabs1">
                        <div class="product-tab row">
                            <asp:ListView ID="lstProductHot" runat="server" DataSourceID="odsProductHot" EnableModelValidation="True">
                                <ItemTemplate>
                                    <div class="col-md-3 col-sm-4 col-xs-6 element-item">
                                        <div class="product-box text-center scale-animate">
                                            <%--<div class="icon-hot">
                                                <%# Eval("IsHot").ToString().Equals("True") ? "<img class='img-responsive' src='assets/images/icon-hot.png' alt='' />" : "" %></div>--%>
                                            <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'
                                                class="product-img contain-img">
                                                <img id="Img1" class="hideo" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/product-img-1.jpg" %>'
                                                    runat="server" />
                                            </a>
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
                                    <span runat="server" id="itemPlaceholder" />
                                </LayoutTemplate>
                            </asp:ListView>
                            <asp:ObjectDataSource ID="odsProductHot" runat="server" SelectMethod="ProductSelectAll"
                                TypeName="TLLib.Product">
                                <SelectParameters>
                                    <asp:Parameter Name="StartRowIndex" Type="String" />
                                    <asp:Parameter Name="EndRowIndex" Type="String" />
                                    <asp:Parameter Name="Keyword" Type="String" />
                                    <asp:Parameter Name="ProductName" Type="String" />
                                    <asp:Parameter Name="Description" Type="String" />
                                    <asp:Parameter Name="PriceFrom" Type="String" />
                                    <asp:Parameter Name="PriceTo" Type="String" />
                                    <asp:Parameter Name="CategoryID" Type="String" />
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
                        <div class="clearfix">
                        </div>
                        <div class="pager">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="8" PagedControlID="lstProductHot">
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
                    </div>
                    <div role="tabpanel" class="tab-pane" id="tabs2">
                        <div class="product-tab row">
                            <asp:ListView ID="lstProductNew" runat="server" DataSourceID="odsProductNew" EnableModelValidation="True">
                                <ItemTemplate>
                                    <div class="col-md-3 col-sm-4 col-xs-6 element-item">
                                        <div class="product-box text-center scale-animate">
                                            <%--<div class="icon-hot">
                                                <%# Eval("IsNew").ToString().Equals("True") ? "<img class='img-responsive' src='assets/images/icon-new.png' alt='' />" : "" %></div>--%>
                                            <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'
                                                class="product-img contain-img">
                                                <img id="Img1" class="hideo" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/product-img-1.jpg" %>'
                                                    runat="server" />
                                            </a>
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
                                    <span runat="server" id="itemPlaceholder" />
                                </LayoutTemplate>
                            </asp:ListView>
                            <asp:ObjectDataSource ID="odsProductNew" runat="server" SelectMethod="ProductSelectAll"
                                TypeName="TLLib.Product">
                                <SelectParameters>
                                    <asp:Parameter Name="StartRowIndex" Type="String" />
                                    <asp:Parameter Name="EndRowIndex" Type="String" />
                                    <asp:Parameter Name="Keyword" Type="String" />
                                    <asp:Parameter Name="ProductName" Type="String" />
                                    <asp:Parameter Name="Description" Type="String" />
                                    <asp:Parameter Name="PriceFrom" Type="String" />
                                    <asp:Parameter Name="PriceTo" Type="String" />
                                    <asp:Parameter Name="CategoryID" Type="String" />
                                    <asp:Parameter Name="ManufacturerID" Type="String" />
                                    <asp:Parameter Name="OriginID" Type="String" />
                                    <asp:Parameter Name="Tag" Type="String" />
                                    <asp:Parameter Name="InStock" Type="String" />
                                    <asp:Parameter Name="IsHot" Type="String" />
                                    <asp:Parameter DefaultValue="True" Name="IsNew" Type="String" />
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
                        <div class="clearfix">
                        </div>
                        <div class="pager">
                            <asp:DataPager ID="DataPager2" runat="server" PageSize="8" PagedControlID="lstProductNew">
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
                    </div>
                    <div role="tabpanel" class="tab-pane" id="tabs3">
                        <div class="product-tab row">
                            <asp:ListView ID="lstBestSeller" runat="server" DataSourceID="odsProductBestSeller" EnableModelValidation="True">
                                <ItemTemplate>
                                    <div class="col-md-3 col-sm-4 col-xs-6 element-item">
                                        <div class="product-box text-center scale-animate">
                                            <%--<div class="icon-hot">
                                                <%# Eval("IsHot").ToString().Equals("True") ? "<img class='img-responsive' src='assets/images/icon-hot.png' alt='' />" : "" %>
                                                <%# Eval("IsNew").ToString().Equals("True") ? "<img class='img-responsive' src='assets/images/icon-new.png' alt='' />" : "" %></div>--%>
                                            <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'
                                                class="product-img contain-img">
                                                <img id="Img1" class="hideo" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/product-img-1.jpg" %>'
                                                    runat="server" />
                                            </a>
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
                                    <span runat="server" id="itemPlaceholder" />
                                </LayoutTemplate>
                            </asp:ListView>
                            <asp:ObjectDataSource ID="odsProductBestSeller" runat="server" SelectMethod="ProductSelectAll"
                                TypeName="TLLib.Product">
                                <SelectParameters>
                                    <asp:Parameter Name="StartRowIndex" Type="String" />
                                    <asp:Parameter Name="EndRowIndex" Type="String" />
                                    <asp:Parameter Name="Keyword" Type="String" />
                                    <asp:Parameter Name="ProductName" Type="String" />
                                    <asp:Parameter Name="Description" Type="String" />
                                    <asp:Parameter Name="PriceFrom" Type="String" />
                                    <asp:Parameter Name="PriceTo" Type="String" />
                                    <asp:Parameter Name="CategoryID" Type="String" />
                                    <asp:Parameter Name="ManufacturerID" Type="String" />
                                    <asp:Parameter Name="OriginID" Type="String" />
                                    <asp:Parameter Name="Tag" Type="String" />
                                    <asp:Parameter Name="InStock" Type="String" />
                                    <asp:Parameter Name="IsHot" Type="String" />
                                    <asp:Parameter Name="IsNew" Type="String" />
                                    <asp:Parameter DefaultValue="True" Name="IsBestSeller" Type="String" />
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
                        <div class="clearfix">
                        </div>
                        <div class="pager">
                            <asp:DataPager ID="DataPager3" runat="server" PageSize="8" PagedControlID="lstBestSeller">
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
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
