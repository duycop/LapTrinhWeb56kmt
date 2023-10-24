using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NhapLiieu
{
    public partial class nhap_lieu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //lấy đc thông tin gửi lên
                int masv = int.Parse(Request.Form["masv"]);
                string hoten = Request.Form["hoten"];
                string gioithieu = Request.Form["gioithieu"];

                HttpPostedFile anh_the= Request.Files["anh_the"];
                //đường dẫn tương đối : để lưu dv
                string path = $"/anh_the/{masv}_{anh_the.FileName}";
                //đường dẫn tuyệt đối : để lưu file bằng lệnh save_as
                string abs_path = Server.MapPath(path); 
                anh_the.SaveAs(abs_path);

                //test nhận đc ko => ok
                //ketqua.InnerHtml = $"tôi đã nhận đc masv={masv}<br>hoten: {hoten}<br>Anh the: {path} => {abs_path}<br>Giới thiệu: {gioithieu}";

                //kết nối db, gọi sql phù hợp
                
                string sql = "insert into GioiThieuSV(masv,hoten,gioithieu,anh_the)values(@masv,@hoten,@gioithieu, @path)";
                SqlConnection cn = new SqlConnection(dung_chung.cnStr);
                cn.Open();
                SqlCommand cm = new SqlCommand(sql, cn);
                cm.Parameters.Add("@masv", SqlDbType.Int).Value = masv;
                cm.Parameters.Add("@hoten", SqlDbType.NVarChar, 50).Value = hoten;
                cm.Parameters.Add("@gioithieu", SqlDbType.NText).Value = gioithieu;
                cm.Parameters.Add("@path", SqlDbType.NVarChar, 200).Value = path;
                int n = cm.ExecuteNonQuery();
                if (n > 0)
                {
                    ketqua.InnerHtml = $"OK. Đã thêm được {n} bản ghi vào db";
                    ketqua.InnerHtml += "<script>setTimeout(function () {document.location='/liet_ke.aspx'},5000)</script>";
                }
                else
                {
                    ketqua.InnerHtml = "Không thêm được bản ghi vào db, có gì đó sai sai";
                }
               
            }
            catch (Exception ex)
            {
                ketqua.InnerHtml = $"Lỗi rồi: {ex.Message}";
            }
        }
    }
}