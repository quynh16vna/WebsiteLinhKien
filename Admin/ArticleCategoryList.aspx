﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="ArticleCategoryList.aspx.cs" Inherits="Admin_ArticleCategoryList" %>
<%@ Register Src="~/Admin/UserControl/ucMessage.ascx" TagPrefix="uc1" TagName="ucMessage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <div class="content">
        <div class="workplace">
            <div class="page-header">
                <h1>DANH MỤC TIN TỨC (CẤP CON)
                </h1>
            </div>

            <div class="row-fluid">
                <div class="span3">
                    <!--Tiêu đề-->
                    <div class="head clearfix">
                        <div class="isw-folder">
                        </div>
                        <h1>Danh sách loại
                        </h1>
                    </div>
                    <!--Loại Cấp Cha + Cấp Con-->
                    <div class="block-fluid">
                        <!--Loại Cấp Cha-->
                        <div class="row-form clearfix" style="padding: 7px 16px;">
                            <asp:DropDownList runat="server" ID="DropDownList_MainCategory_Left" AutoPostBack="true"
                                OnSelectedIndexChanged="DropDownList_MainCategory_Left_SelectedIndexChanged" />
                            <span style="text-align: center; display: block;">Chọn Loại Tin Tức.</span>

                        </div>
                        <!--Loại Cấp Con-->
                        <div class="row-form clearfix" style="padding: 8px 16px;">
                            <asp:ListBox runat="server" ID="ListBox_Category" AutoPostBack="true"
                                size="4" class="category" Style="height: 483px;"
                                OnSelectedIndexChanged="ListBox_Category_SelectedIndexChanged" />
                            <span style="text-align: center; display: block;">Chọn Loại để xem.</span>
                        </div>
                    </div>
                </div>
                <div class="span9">
                    <!--Tiêu đề-->
                    <div class="head clearfix">
                        <div class="isw-list">
                        </div>
                        <h1>Chi tiết loại đang chọn
                        </h1>
                        <ul class="buttons">
                            <li>
                                <asp:LinkButton runat="server" Style="background: #1267b3" ID="LinkButton_Add"
                                    OnClick="LinkButton_Add_Click" title="Thêm mới" class="isw-plus tip" />
                            </li>
                            <li>
                                <asp:LinkButton runat="server" Style="background: #1267b3" ID="LinkButton_Delete"
                                    title="Xóa chọn" class="isw-delete tip" OnClick="LinkButton_Delete_Click"
                                    OnClientClick="return confirm('Bạn có chắc muốn xóa dữ liệu này?')" />
                            </li>
                        </ul>
                    </div>
                    <!--Thông tin Loại-->
                    <div class="block-fluid  customize">
                        <!--Chọn Loại Cấp Cha-->
                        <div class="row-form clearfix">
                            <div class="span2">
                                Danh Mục Tin:
                            </div>
                            <div class="span10">
                                <asp:DropDownList runat="server" ID="DropDownList_MainCategory" />
                                <span>Chọn Danh Mục Cấp Cha của loại này.</span>
                            </div>
                        </div>
                        <!--Mã số + vị trí-->
                        <div class="row-form clearfix">
                            <div class="span2">
                                Mã Danh Mục Tin:
                            </div>
                            <div class="span2">
                                <input runat="server" id="input_ID" type="text" class="tipb" readonly="readonly" title="Mã số tự động (không cần nhập)" />
                            </div>
                            <div class="span1">
                                Vị Trí:
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
                                Tiêu Đề:
                            </div>
                            <div class="span10">
                                <input runat="server" id="input_Title" type="text" />
                                <span>VD: Tin bất động sản trong nước </span>
                            </div>
                        </div>
                        <!--Mô tả-->
                        <div class="row-form clearfix">
                            <div class="span2">
                                Mô tả:
                            </div>
                            <div class="span10">
                                <textarea runat="server" id="textarea_Description" style="min-height: 50px; width: 100%;"></textarea>
                                <span>Mô tả thêm. Phần mô tả sẽ hiển thị khi rê chuột vào tiêu đề Loại </span>
                            </div>
                        </div>
                        <!--Hình đại diện-->
                        <div class="row-form clearfix">
                            <div class="span2">
                                Avatar:
                            </div>
                            <div class="span10">
                                <a runat="server" href="../css/img/no_image.jpg" id="a_Avatar" class="fancybox lightbox-preview" rel="group">
                                    <img runat="server" src="../css/img/no_image.jpg" id="img_Avatar" alt="avatar" class="default-image img-polaroid avatar-preview" style="width: 180px; height: 135px;" />
                                </a>
                                <br />
                                <asp:FileUpload runat="server" ID="FileUpload_Avatar" class="skip" preview="avatar-preview" />
                                <br />
                                <span>Hình đại diện cho bài báo. Bạn có thể upload hình mới nếu muốn.
                                            Các Loại file hỗ trợ: *.jpg, *.jpeg, *.gif, *.png
                                </span>
                            </div>
                        </div>
                        <!--Trạng thái-->
                        <div class="row-form clearfix">
                            <div class="span2">
                                Trạng Thái:
                            </div>
                            <div class="span10">
                                <label class="checkbox inline">
                                    <input runat="server" id="radio_Active" name="status" type="radio" checked />
                                   Cho phép hiển thị
                                </label>
                                <label class="checkbox inline">
                                    <input runat="server" type="radio" name="status" id="radio_Lock" />
                                     Tạm ẩn
                                </label>
                            </div>
                        </div>
                        <!--Lưu + thông báo-->
                        <div class="row-form clearfix">
                            <div class="span2">
                                <asp:LinkButton  Text="text" runat="server" ID="LinkButton_Save"
                                    class="btn mybtn" OnClick="LinkButton_Save_Click">
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
                <!--Link trở lại-->
                <div class="tar">
                    <a href="PictureList.aspx" type="button" class="btn active">
                        <i class="icon-arrow-left"></i>Trở về trang danh sách Sản Phẩm
                    </a>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" Runat="Server">
</asp:Content>

