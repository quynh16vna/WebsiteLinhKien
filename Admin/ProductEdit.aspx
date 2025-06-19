﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="ProductEdit.aspx.cs" Inherits="Admin_ProductEdit" %>

<%@ Register Src="~/Admin/UserControl/ucMessage.ascx" TagPrefix="uc1" TagName="ucMessage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <div class="content">
        <div class="breadLine">
            <ul class="breadcrumb">
                <!--Nút ẩn/hiện menu bên góc trái-->
                <li>
                    <a href="#" title="Ẩn thanh menu" class="sidebarControl menu-arrow">
                        <span class="icon-arrow-left"></span>
                    </a>
                </li>
                <!--Thanh breadcrumb-->
                <li>
                    <a href="Default.aspx">Bàn Làm Việc</a>
                    <span class="divider">&gt;</span>
                </li>
                <li>
                    <a href="ProductMainCategoryList.aspx">Loại Sản Phẩm (cấp cha)</a>
                    <span class="divider">&gt;</span>
                </li>
                <li>
                    <a href="ProductCategoryList.aspx">Loại Sản Phẩm (cấp con)</a>
                    <span class="divider">&gt;</span>
                </li>
                <li>
                    <a href="ProductList.aspx">Danh Sách Sản Phẩm</a>
                    <span class="divider">&gt;</span>
                </li>
                <li>
                    <a href="ProductEdit.aspx">Chỉnh Sửa / Thêm Mới Sản Phẩm </a>
                </li>
            </ul>
        </div>

        <div class="workplace">
            <!--Tiêu đề-->
            <div class="page-header">
                <h1>Thêm / Chỉnh sửa sản phẩm
                </h1>
            </div>
            <!--Nội dung-->
            <div class="row-fluid">
                <div class="span12">
                    <div class="head clearfix">
                        <div class="isw-list">
                        </div>
                        <h1>Thêm / chỉnh sửa sản phẩm
                        </h1>
                    </div>
                    <div class="block-fluid customize accordion">
                        <h3>Thông tin cơ bản
                        </h3>
                        <div class="article-basic-info">
                            <!--Danh mục-->
                            <div class="row-form clearfix">
                                <div class="span2">
                                    Loại danh mục:
                                </div>
                                <div class="span10">
                                    <asp:DropDownList runat="server" ID="DropDownList_Category" />
                                </div>
                            </div>
                            <!--Mã số + vị trí-->
                            <div class="row-form clearfix">
                                <div class="span2">
                                    Mã số:
                                </div>
                                <div class="span2">
                                    <input runat="server" id="input_ID" type="text" class="tipb" readonly="readonly" title="Mã số tự động (không cần nhập)" />
                                </div>
                                <div class="span1">
                                    Vị trí:
                                </div>
                                <div class="span1" style="margin-left: 2px;">
                                    <input runat="server" id="input_Position" type="text" class="tipb" title="Dùng để sắp xếp thứ tự" />
                                </div>
                                <div class="span1">
                                    Code:
                                </div>
                                <div class="span2">
                                    <input runat="server" id="input_Code" type="text" class="tipb" title="Dùng để tìm kiếm hoặc phân loại" />
                                </div>
                                <div class="span3">
                                    <span>(Vị trí và Code: được phép để trống)</span>
                                </div>
                            </div>
                            <!--Tiêu đề-->
                            <div class="row-form clearfix">
                                <div class="span2">
                                    Tiêu đề:
                                </div>
                                <div class="span10">
                                    <input runat="server" id="input_Title" type="text" />
                                    <span>Tiêu đề của bài báo. Nhập ngắn gọn, thể hiện đúng nội dung chính.</span>
                                </div>
                            </div>
                            <!--Mô tả-->
                            <div class="row-form clearfix">
                                <div class="span2">
                                    Mô tả:
                                </div>
                                <div class="span10">
                                    <textarea runat="server" id="textarea_Decription" style="min-height: 100px; width: 100%;"></textarea>
                                    <span>Tóm tắt ngắn gọn nội dung của bài báo.</span>
                                </div>
                            </div>
                            <!--Cấu hình-->
                            <div class="row-form clearfix hide">
                                <div class="span2">
                                    Cấu hình:
                                </div>
                                <div class="span10">
                                    <textarea runat="server" id="textarea_Specification" style="min-height: 100px; width: 100%;"></textarea>
                                </div>
                            </div>
                            <!--Giá-->
                            <div class="row-form clearfix">
                                <div class="span2">
                                    Giá mới:
                                </div>
                                <div class="span2">
                                    <input runat="server" id="input_Price" type="text" class="tipb" title="Vui lòng nhập giá mới" />
                                </div>
                                <div class="span1">
                                    Giá cũ
                                </div>
                                <div class="span2" style="margin-left: 2px;">
                                    <input runat="server" id="input_OldPrice" type="text" class="tipb" title="Vui lòng nhập giá cũ" />
                                </div>
                                <div class="span2">
                                    <span>(Để trống nếu giá liên hệ)
                                    </span>
                                </div>
                                <div class="span1">
                                    Số lượng
                                </div>
                                <div class="span2" style="margin-left: 2px;">
                                    <input runat="server" id="input_Quantity" type="text" class="tipb" title="Vui lòng nhập số lượng" />
                                </div>
                            </div>
                            <!--Hình đại diện-->
                            <div class="row-form clearfix">
                                <div class="span2">
                                    Hình đại diện:
                                </div>
                                <div class="span10">
                                    <a runat="server" id="a_Avatar" href="./css/img/no_image.jpg" class="fancybox lightbox-preview" rel="group">
                                        <img runat="server" id="img_Avatar" src="./css/img/no_image.jpg" alt="avatar" class="default-image img-polaroid avatar-preview" style="width: 180px; height: 135px;" />
                                    </a>
                                    <br />
                                    <asp:FileUpload runat="server" ID="FileUpload_Avatar" class="skip" preview="avatar-preview" />
                                    <br />
                                    <span>Hình đại diện cho bài báo. Bạn có thể upload hình mới nếu muốn.
                                                    Các Loại file hỗ trợ: *.jpg, *.jpeg, *.gif, *.png
                                    </span>
                                </div>
                            </div>
                            <!--Hình sản phẩm-->
                            <div class="row-form clearfix">
                                <div class="span2">
                                    Hình sản phẩm:
                                </div>
                                <div class="span10">
                                    <input type="file" name="files[]" multiple="multiple" class="file-multi-upload image-list skip" data-folder="/fileuploads/Product" />
                                    <input runat="server" id="hidden_ImageLists" type="hidden" class="urls-file-multi-upload" />

                                    <%--Nơi hiển thị danh sách hình đã lưu trước đó--%>
                                    <div class="jFiler jFiler-theme-dragdropbox">
                                        <div class="jFiler-items jFiler-row">
                                            <ul class="jFiler-items-list jFiler-items-grid">
                                                <asp:Repeater runat="server" ID="Repeater_ImageList">
                                                    <ItemTemplate>
                                                        <li class="jFiler-item" data-jfiler-index="4" style="">
                                                            <div class="jFiler-item-container">
                                                                <div class="jFiler-item-inner">
                                                                    <div class="jFiler-item-thumb">
                                                                        <div class="jFiler-item-status"></div>
                                                                        <div class="jFiler-item-thumb-image">
                                                                            <img src='<%# Container.DataItem %>' draggable="false">
                                                                        </div>
                                                                    </div>
                                                                    <div class="jFiler-item-assets jFiler-row">
                                                                        <ul class="list-inline pull-left">
                                                                            <li>
                                                                                <div class="jFiler-jProgressBar" style="display: none;">
                                                                                    <div class="bar" style="width: 100%;"></div>
                                                                                </div>
                                                                                <div class="jFiler-item-others textsuccess"><i class="icon-jfi-check-circle"></i></div>
                                                                            </li>
                                                                        </ul>
                                                                        <ul class="list-inline pull-left">
                                                                            <li>
                                                                                <input data-url='<%# Container.DataItem %>' value='<%# Container.ItemIndex + 1 %>' class="number hide" type="text" placeholder="Số thứ tự sắp xếp" style="display: inline-block;" />
                                                                            </li>
                                                                        </ul>
                                                                        <ul class="list-inline pull-right">
                                                                            <li><a class="icon-jfi-trash jFiler-item-trash-action"></a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Khuyến mãi-->
                            <div class="row-form clearfix">
                                <div class="span2">
                                    Khuyến mãi:
                                </div>
                                <div class="span10">
                                    <input runat="server" id="input_Promotion" type="text" />
                                </div>
                            </div>
                            <!--Bảo hành-->
                            <div class="row-form clearfix hide">
                                <div class="span2">
                                    Bảo hành:
                                </div>
                                <div class="span10">
                                    <input runat="server" id="input_WarrantyPolicy" type="text" />
                                </div>
                            </div>
                            <!--Phụ kiên-->
                            <div class="row-form clearfix hide">
                                <div class="span2">
                                    Phụ kiện:
                                </div>
                                <div class="span10">
                                    <input runat="server" id="input_Accessories" type="text" />
                                </div>
                            </div>
                            <!--Trạng thái-->
                            <div class="row-form clearfix">
                                <div class="span2">
                                    Trạng thái:
                                </div>
                                <div class="span10">
                                    <label class="checkbox inline">
                                        <input runat="server" id="radio_Active" type="radio" checked />

                                        Cho phép hiển thị
                                    </label>
                                    <label class="checkbox inline">
                                        <input runat="server" id="radio_Lock" type="radio" />

                                        Tạm ẩn
                                    </label>
                                </div>
                            </div>
                            <!--Trích nguồn-->
                            <div class="row-form clearfix">
                                <div class="span2">
                                    Trích nguồn:
                                </div>
                                <div class="span2">
                                    <input runat="server" id="input_SourcePage" type="text" />
                                    <span>Tên trang nguồn. VD: Dân Trí</span>
                                </div>
                                <div class="span2" style="text-align: right">
                                    Link nguồn:
                                </div>
                                <div class="span6">
                                    <input type="text" runat="server" id="input_SourchLink" />
                                    <span>Liên kết trỏ đến bài ở trang nguồn nào? VD: http://dantri.com/tinmoi/index.html?id=1</span>
                                </div>
                            </div>
                        </div>
                        <h3>Nội dung chi tiết
                        </h3>
                         <div class="block-fluid article-detail-content" style="overflow: hidden;">
                            <textarea style="height: 100%; width: 100%" runat="server" id="textarea_Content" class="tinyeditor"></textarea>
                        </div>
                        <h3>Thông tin khác
                        </h3>
                        <div class="article-other-info">
                            <div class="row-form clearfix">
                                <div class="span2">
                                    Người đăng:
                                </div>
                                <div class="span10">
                                    <input runat="server" id="input_CreateBy" type="text" readonly="readonly" />
                                    <span>Tự động Lưu của người đăng. Không cho phép chỉnh sửa.
                                    </span>
                                </div>
                            </div>
                            <div class="row-form clearfix">
                                <div class="span2">
                                    Ngày giờ đăng:
                                </div>
                                <div class="span10">
                                    <input runat="server" id="input_CreateTime" type="text" readonly="readonly" />
                                    <span>Tự động lưu ngày giờ đăng bài theo giờ hệ thống. Không cho phép chỉnh sửa
                                    </span>
                                </div>
                            </div>
                            <div class="row-form clearfix">
                                <div class="span2">
                                    Tổng lượt xem:
                                </div>
                                <div class="span10">
                                    <input runat="server" id="input_Viewtime" type="text" readonly="readonly" />
                                    <span>Mỗi lần khách truy cập vào bài này, lượt xem sẽ tăng lên 1. Không cho phép chỉnh sửa.
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!--Button-->
        <div class="row-fluid">
            <div class="span12" style="margin-top: -20px; background-color: #F2F2F2;">
                <div class="block-fluid  customize">
                    <div class="row-form clearfix">
                        <div class="span2">
                            <asp:LinkButton Text="text" runat="server" ID="LinkButton_Save" OnClick="LinkButton_Save_Click" OnClientClick="updateJFilerValue()" class="btn mybtn">
                                 <i class="isw-save"></i>Lưu
                            </asp:LinkButton>
                        </div>
                        <div class="span10">

                            <!--Thông báo-->
                            <uc1:ucMessage runat="server" ID="ucMessage" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Link trở về-->
        <div class="tar">
            <a runat="server" href="ArticleList.aspx" type="button" class="btn active">
                <i class="icon-arrow-left"></i>Trở về trang sản phẩm
            </a>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="Server">
    <%-- Css --%>
    <link href="plugins/jQuery.filer.1.3.0/css/font.jquery-filer.css" rel="stylesheet" />
    <link href="plugins/jQuery.filer.1.3.0/css/jquery.filer.css" rel="stylesheet" />
    <link href="plugins/jQuery.filer.1.3.0/css/jquery.filer-dragdropbox-theme.css" rel="stylesheet" />
    <%-- Js --%>
    <script src="plugins/jQuery.filer.1.3.0/js/jquery.filer.js"></script>
    <script src="plugins/jQuery.filer.1.3.0/js/jquery.filer.custom.js"></script>
</asp:Content>

