using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NhapLiieu
{
    public partial class liet_ke : System.Web.UI.Page
    {
        public string json="";
        protected void Page_Load(object sender, EventArgs e)
        {
            string sql = "select * from GioiThieuSV";
            SqlConnection cn = new SqlConnection(dung_chung.cnStr);
            cn.Open();
            SqlCommand cm = new SqlCommand(sql, cn);
            SqlDataReader dr = cm.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);

            //duyệt các row trong dt -> html
            /*
            string s = "<table class='table table-hover'>";
            s += "<thead>";
            s += "<th>STT</th>";
            s += "<th>Masv</th>";
            s += "<th>Họ tên</th>";
            s += "<th>Giới thiệu</th>";
            s += "<th>Ảnh thẻ</th>";
            s += "</thead>";
            s += "<body>";
            int STT = 0;
            foreach (DataRow r in dt.Rows)
            {
                s += "<tr>";
                s += $"<td>{++STT}</td>";
                s += $"<td>{r["masv"]}</td>";
                s += $"<td>{r["hoten"]}</td>";
                s += $"<td>{r["gioithieu"]}</td>";
                s += $"<td><img src='{r["anh_the"]}'></td>";
                s += "</tr>";
            }
            s += "</body></table>";
            ketqua.InnerHtml = s;
            */


            //json này dùng trên designer: bỏ qua việc tạo class -> json
            json = JsonConvert.SerializeObject(dt);

        }
    }
}