<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="tin-tuc.aspx.cs" Inherits="gioi_thieu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="site" class="corner">
        <div class="container">
            <a href="~/" runat="server"><span class="fa fa-home"></span></a>/<span><asp:Label
                ID="lblTitle" runat="server"></asp:Label></span>
        </div>
    </div>
    <div class="container">
        <asp:ListView ID="lstNews" runat="server" DataSourceID="odsNews" EnableModelValidation="True">
            <ItemTemplate>
                <div class="wrapper-text about-us">
                    <h4 class="text-uppercase title tit-640">
                        <%# Eval("ArticleTitle")%></h4>
                    <p>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Content") %>'></asp:Label></p>
                </div>
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsNews" runat="server" SelectMethod="ArticleSelectOne"
            TypeName="TLLib.Article">
            <SelectParameters>
                <asp:QueryStringParameter Name="ArticleID" QueryStringField="tt" 
                    Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
</asp:Content>
