using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web_CamDo
{
    public partial class api : System.Web.UI.Page
    {
        const string cnStr = "Server=LAPTOP-DUYCOP\\SQLEXPRESS;Database=QL_Hieu_Cam_Do;User Id=sa;Password=123;";
        class Data_ds_kh
        {
            public string tenkh, sdt, diachi, cccd;
        }
        void ds_kh()
        {
            //truy van db: sp_khachHang @acion='ds_kh'
            //mong muốn trả về ...
            //mà trình duyệt show ra table html
            //họ và tên, sdt, dc, cccd
            SqlConnection cn = new SqlConnection(cnStr);
            cn.Open();
            string sql = "SP_KhachHang";
            SqlCommand cm = new SqlCommand(sql, cn);
            cm.CommandType = CommandType.StoredProcedure;
            cm.Parameters.Add("@action", SqlDbType.NVarChar, 50).Value = "ds_kh";
            SqlDataReader dr = cm.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            cm.Dispose();
            cn.Close();
            cn.Dispose();

            //chuyển dt ->đối tượng->json string

            //chuyển dataTable(dt) -> đối tượng (L)
            List<Data_ds_kh> L = new List<Data_ds_kh>();
            if (dt.Rows.Count > 0)
                foreach (DataRow r in dt.Rows)
                {
                    Data_ds_kh k = new Data_ds_kh();
                    k.tenkh = r["TenKH"].ToString();
                    k.sdt = r["sdt"].ToString();
                    k.diachi = r["diachi"].ToString();
                    k.cccd = r["cccd"].ToString();
                    L.Add(k);
                }
            //chuyển L->json
            string json = JsonConvert.SerializeObject(L);
            this.Response.Write(json);
        }

        class Data_them_kh
        {
            public bool ok;
            public string error;
        }
        void them_kh()
        {
            Data_them_kh R = new Data_them_kh();
            try
            {
                //lấy 4 thông số gửi lên
                //gọi sql để thêm kh mới này
                //nếu ok thì gửi về ok=1
                //ngược lại ok=0 kèm error=báo lỗi chi tiết

                Data_ds_kh k = new Data_ds_kh();
                k.tenkh = Request["tenkh"];
                k.sdt = Request["sdt"];
                k.diachi = Request["diachi"];
                k.cccd = Request["cccd"];

                //gọi sp_ để insert vào

                SqlConnection cn = new SqlConnection(cnStr);
                cn.Open();
                string sql = "SP_KhachHang";
                SqlCommand cm = new SqlCommand(sql, cn);
                cm.CommandType = CommandType.StoredProcedure;
                cm.Parameters.Add("@action", SqlDbType.NVarChar, 50).Value = "them_kh";
                cm.Parameters.Add("@tenkh", SqlDbType.NVarChar, 50).Value = k.tenkh;
                cm.Parameters.Add("@sdt", SqlDbType.NVarChar, 50).Value = k.sdt;
                cm.Parameters.Add("@diachi", SqlDbType.NVarChar, 500).Value = k.diachi;
                cm.Parameters.Add("@cccd", SqlDbType.VarChar, 12).Value = k.cccd;
                int n = cm.ExecuteNonQuery();

                if (n > 0)
                {
                    R.ok = true;
                }
                else
                {
                    R.ok = false;
                    R.error = "Lỗi gì đó nên ko thêm được";
                }
                cm.Dispose();
                cn.Close();
                cn.Dispose();
            }
            catch (Exception ex)
            {
                R.ok = false;
                R.error = ex.Message;
            }
            //chuyển R->json
            string json = JsonConvert.SerializeObject(R);
            this.Response.Write(json);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string action = Request["action"];
            switch (action)
            {
                case "ds_kh":
                    ds_kh();
                    break;
                case "them_kh":
                    them_kh();
                    break;
            }
        }
    }
}