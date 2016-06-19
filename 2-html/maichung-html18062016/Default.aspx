<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>AC</title>
    <meta name="description" content="AC" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container bg-white">
        <div class="project-tabs">
                <ul class="nav nav-tabs" role="tablist">
                    <li><a href="Default.aspx">sản phẩm tiêu biểu</a></li>
                    <li><a href="san-pham-moi-nhat.aspx">sản phẩm mới nhất</a></li>
                    <li><a href="san-pham-ban-chay.aspx">thiết bị chống trộm</a></li>
                </ul>
                  <!-- Tab panes -->
                  <div class="tab-content">
                        <div class="product-tb row">
                            <div class="col-md-3 col-xs-4 element-item">
                                <div class="product-box text-center scale-animate">
                                    <div class="icon-hot"><img class="img-responsive" src="assets/images/icon-hot.png" alt=""/></div>
                                    <a href="san-pham-chi-tiet.aspx" class="product-img fullbox-img contain-img"><img class="hideo" src="assets/images/product-img-1.jpg" alt=""/></a>
                                    <h4 class="product-name"><a href="san-pham-chi-tiet.aspx">Ghế gỗ Ultrices</a></h4>
                                    <div class="product-code">MC-519</div>
                                    <div class="product-price">
                                        <strong>70.000<u>đ</u></strong>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-xs-4 element-item">
                                <div class="product-box text-center scale-animate">
                                    <div class="icon-hot"><img class="img-responsive" src="assets/images/icon-new.png" alt=""/></div>
                                    <a href="san-pham-chi-tiet.aspx" class="product-img fullbox-img contain-img">
                                        <img class="hideo" src="assets/images/product-img-1.jpg" alt=""/>
                                    </a>
                                    <h4 class="product-name"><a href="san-pham-chi-tiet.aspx">Ghế gỗ Ultrices</a></h4>
                                    <div class="product-code">MC-519</div>
                                    <div class="product-price">
                                        <strong>70.000<u>đ</u></strong>
                                    </div>
                                </div>
                            </div>
                             <div class="col-md-3 col-xs-4 element-item">
                                <div class="product-box text-center scale-animate">
                                    <div class="icon-hot"><img class="img-responsive" src="assets/images/icon-hot.png" alt=""/></div>
                                    <a href="san-pham-chi-tiet.aspx" class="product-img fullbox-img contain-img"><img class="hideo" src="assets/images/product-img-1.jpg" alt=""/></a>
                                    <h4 class="product-name"><a href="san-pham-chi-tiet.aspx">Ghế gỗ Ultrices</a></h4>
                                    <div class="product-code">MC-519</div>
                                    <div class="product-price">
                                        <strong>70.000<u>đ</u></strong>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-xs-4 element-item">
                                <div class="product-box text-center scale-animate">
                                    <div class="icon-hot"><img class="img-responsive" src="assets/images/icon-new.png" alt=""/></div>
                                    <a href="san-pham-chi-tiet.aspx" class="product-img fullbox-img contain-img">
                                        <img class="hideo" src="assets/images/product-img-1.jpg" alt=""/>
                                    </a>
                                    <h4 class="product-name"><a href="san-pham-chi-tiet.aspx">Ghế gỗ Ultrices</a></h4>
                                    <div class="product-code">MC-519</div>
                                    <div class="product-price">
                                        <strong>70.000<u>đ</u></strong>
                                    </div>
                                </div>
                            </div>
                             <div class="col-md-3 col-xs-4 element-item">
                                <div class="product-box text-center scale-animate">
                                    <div class="icon-hot"><img class="img-responsive" src="assets/images/icon-hot.png" alt=""/></div>
                                    <a href="san-pham-chi-tiet.aspx" class="product-img fullbox-img contain-img"><img class="hideo" src="assets/images/product-img-1.jpg" alt=""/></a>
                                    <h4 class="product-name"><a href="san-pham-chi-tiet.aspx">Ghế gỗ Ultrices</a></h4>
                                    <div class="product-code">MC-519</div>
                                    <div class="product-price">
                                        <strong>70.000<u>đ</u></strong>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-xs-4 element-item">
                                <div class="product-box text-center scale-animate">
                                    <div class="icon-hot"><img class="img-responsive" src="assets/images/icon-new.png" alt=""/></div>
                                    <a href="san-pham-chi-tiet.aspx" class="product-img fullbox-img contain-img">
                                        <img class="hideo" src="assets/images/product-img-1.jpg" alt=""/>
                                    </a>
                                    <h4 class="product-name"><a href="san-pham-chi-tiet.aspx">Ghế gỗ Ultrices</a></h4>
                                    <div class="product-code">MC-519</div>
                                    <div class="product-price">
                                        <strong>70.000<u>đ</u></strong>
                                    </div>
                                </div>
                            </div>
                       </div>             
                        <div class="pager">
                            <a href="#" class="first fa fa-backward"></a>
                            <a href="#" class="prev fa fa-caret-left"></a>
                            <a href="#" class="current">1</a>
                            <a href="#">2</a>
                            <a href="#">3</a>
                            <a href="#" class="next fa fa-caret-right"></a>
                            <a href="#" class="last fa fa-forward"></a>
                        </div>
                    </div>            
                </div>
    </div>
</asp:Content>


