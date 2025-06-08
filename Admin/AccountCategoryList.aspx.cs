﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using CodeUtility;

public partial class Admin_Pages_AccountCategoryList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ucMessage.HideAll();
            ShowPreviousMessage();
            LoadCategoryData();
            LoadData();
        }
    }

    public void LoadCategoryData()
    {
        DBEntities db = new DBEntities();

        //Nếu select mà tất cả thì dùng Select(x=>) ngược lại thì Giống dưới
        var query = db.AccountCategories.OrderBy(x => x.Position)
            .Select(x => new { x.AccountCategoryID, x.Title });
        var data = query.ToList();

        //Cấu hình hiển thị
        ListBox_Category.DataValueField = "AccountCategoryID";
        ListBox_Category.DataTextField = "Title";

        ListBox_Category.DataSource = data;
        ListBox_Category.DataBind();

        //Tạo thêm một Item mặc định
        ListItem item = new ListItem();
        item.Value = string.Empty;
        item.Text = ".:Chọn loại tài khoản:.";

        //Chèn Item mặc định vào đầu danh sách Dropdown
        ListBox_Category.Items.Insert(0, item);

    }

    public void LoadData()
    {
        string id = Request.QueryString["id"];

        DBEntities db = new DBEntities();
        var item = db.AccountCategories.Where(x => x.AccountCategoryID == id)
            .FirstOrDefault();
        if (item == null)
        {
            return;
        }

        ListBox_Category.SelectedValue = id;

        input_ID.Value = item.AccountCategoryID;
        input_Title.Value = item.Title;
        textarea_Description.Value = item.Description;
        input_Position.Value = item.Position.ToSafetyString();

        a_Avatar.HRef = item.Avatar;
        img_Avatar.Src = item.Avatar;

        if (item.Status == true)
        {
            radio_Lock.Checked = false;
            radio_Active.Checked = true;
        }
        else
        {
            radio_Active.Checked = false;
            radio_Lock.Checked = true;
        }
    }

    public void SearchData(string type = "", string message = "")
    {
        //Lấy các giá trị tìm kiếm
        string ID = ListBox_Category.SelectedValue;

        //Tạo url trang hiện tại kèm theo điều kiện search
        string url = "~/Admin/AccountCategoryList.aspx?id={0}&messagetype={1}&message={2}";
        url = url.StringFormat(ID, type, message);
        //Chuyển về trang đích
        Response.Redirect(url);
    }


    protected void ListBox_Category_SelectedIndexChanged(object sender, EventArgs e)
    {
        SearchData();
    }

    private void ShowPreviousMessage()
    {
        string messageType = Request.QueryString["messagetype"].ToSafetyString();
        string message = Request.QueryString["message"].ToSafetyString();
        if (messageType == "success")
        {
            ucMessage.ShowSuccess(message);
        }
        else if (messageType == "warning")
        {
            ucMessage.ShowWarning(message);
        }
        else if (messageType == "info")
        {
            ucMessage.ShowInfo(message);
        }
        else if (messageType == "error")
        {
            ucMessage.ShowError(message);
        }
    }

    protected void LinkButton_Add_Click(object sender, EventArgs e)
    {
        ListBox_Category.SelectedIndex = 0;
        SearchData();
    }

    protected void LinkButton_Delete_Click(object sender, EventArgs e)
    {
        string ID = Request.QueryString["id"];
        if (string.IsNullOrEmpty(ID))
        {
            ucMessage.ShowError("Vui lòng chọn 1 dữ liệu để xóa");
            return;
        }

        DBEntities db = new DBEntities();
        var item = db.AccountCategories.Where(x => x.AccountCategoryID == ID).FirstOrDefault();

        if (item == null)
        {
            SearchData("error", "Danh mục loại tài khoản không còn tồn tại");
            return;
        }

        db.AccountCategories.Remove(item);
        try
        {
            db.SaveChanges();
        }
        catch (Exception ex)
        {

            ucMessage.ShowError("Chưa xóa được, vui lòng thử lại");
            return;
        }
        SearchData("success", "Đã xóa dữ liệu");
        return;
    }

    protected void LinkButton_Save_Click(object sender, EventArgs e)
    {
        ucMessage.HideAll();
        //Lấy ID từ url xuống
        string id = Request.QueryString["id"];

        //Lấy giá trị các ô nhập
        int position = input_Position.Value.ToInt();
        string idValue = input_ID.Value.Trim();
        if (idValue.Any(Char.IsWhiteSpace))
        {
            ucMessage.ShowError("Mã loại tài khoản không chứa dấu hoặc khoảng trắng");
            return;
        }

        string title = input_Title.Value.Trim();
        string description = textarea_Description.Value.Trim();
        bool status = radio_Active.Checked;

        //Upload hình
        string avatar = string.Empty;
        string thumb = string.Empty;
        if (FileUpload_Avatar.FileName != string.Empty)
        {
            //Kiểm tra đuôi hình hợp lệ
            string validExtension = ".jpg.jpeg.png.gif.bmp.ico";
            string fileExtension = Path.GetExtension(FileUpload_Avatar.FileName.ToLower());
            if (!validExtension.Contains(fileExtension))
            {
                ucMessage.ShowError("Đuôi ảnh không hợp lệ, Loại hình hổ trợ:.jpg .jpeg .png .gif .bmp .ico ");
                return;
            }

            //Kiểm tra dung lượng file < 3MB
            int validSize = 1024 * 1024 * 3;
            int fileSize = FileUpload_Avatar.FileBytes.Length;
            if (fileSize > validSize)
            {
                ucMessage.ShowError("Dung lượng hình cần <=3Mb");
                return;
            }

            Exception error = null;
            UploadUtility uploadUtility = new UploadUtility();
            uploadUtility.FileUpload = FileUpload_Avatar;
            uploadUtility.FolderSave = "~/fileuploads/ProductMainCategory";
            uploadUtility.FullMaxWidth = 1000;
            uploadUtility.ThumbMaxWidth = 400;
            uploadUtility.MaxFileSize = 1024 * 1024 * 3;
            uploadUtility.AutoGenerateFileName = true;
            uploadUtility.UploadImage(ref avatar, ref thumb, ref error);
        }

        //Kiểm tra title hợp lêk
        if (title == string.Empty)
        {
            ucMessage.ShowError("Vui lòng nhập tiêu đề");
            return;
        }



        //Kiểm tra nếu như có id thì Update (Save)
        if (!string.IsNullOrEmpty(id))
        {
            //Cập nhật
            //Tìm một item thích hợp
            DBEntities db = new DBEntities();
            var item = db.AccountCategories.Where(x => x.AccountCategoryID == id).FirstOrDefault();

            //Nếu không có thì báo lỗi , kết thúc
            if (item == null)
            {
                ucMessage.ShowError("Dữ liệu không tồn tại");
                Response.Redirect("~/");
            }
            //cập nhật giá trị mới
            //Tạo một item mới có kiểu là bảng cần thêm
            item.Title = title;
            item.Description = description;
            item.Status = status;
            //Khi cập nhật không thay đổi viewtime

            //Nếu có nhập vị trí thì lưu
            if (position > 0)
                item.Position = position;
            if (avatar != string.Empty)
            {
                item.Avatar = avatar;
                item.Thumb = thumb;
            }

            //Update dữ liệu
            db.SaveChanges();

            //Tạo url trang hiện tại kèm theo điều kiện search

            string url = "~/Admin/AccountCategoryList.aspx?mid={0}&messagetype={1}&message={2}";
            url = url.StringFormat(id, "success", "Cập nhật loại tài khoản thành công");
            //Chuyển về trang đích
            Response.Redirect(url);
        }
        //Ngược lại thì Insert (Add)
        else
        {
            //Kiểm tra ID trùng lắp
            DBEntities db = new DBEntities();
            var checkExist = db.AccountCategories.Where(x => x.AccountCategoryID == idValue).FirstOrDefault();
            if (checkExist != null)
            {
                ucMessage.ShowError("Trùng ID");
                return;
            }
            //Tạo một item mới có kiểu là bảng cần thêm
            AccountCategory item = new AccountCategory();
            item.AccountCategoryID = idValue;
            item.Title = title;
            item.Description = description;
            item.Status = status;

            //Nếu có nhập vị trí thì lưu
            if (position > 0)
                item.Position = position;
            if (avatar != string.Empty)
            {
                item.Avatar = avatar;
                item.Thumb = thumb;
            }
            //Thêm mới
            db.AccountCategories.Add(item);
            db.SaveChanges();

            //Tạo url trang hiện tại kèm theo điều kiện search



            string url = "~/Admin/AccountCategoryList.aspx?messagetype={0}&message={1}&id={2}";
            url = url.StringFormat("success", "Đã thêm mới loại tài khoản thành công", item.AccountCategoryID);
            //Chuyển về trang đích
            Response.Redirect(url);
        }
    }
}