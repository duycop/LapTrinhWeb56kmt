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
        /// <summary>
        /// class chứa thông tin 1 khách hàng
        /// </summary>
        class Data_ds_kh
        {
            public string tenkh, sdt, diachi, cccd;
        }

        /// <summary>
        /// hàm trả về ds kh ở dạng json string
        /// đầu vào: không
        /// đầu ra: all kh, string, format json
        /// </summary>
        void ds_kh()
        {
            //truy van db: sp_khachHang @acion='ds_kh'
            //mong muốn trả về ...
            //mà trình duyệt show ra table html
            //họ và tên, sdt, dc, cccd

            //kết nối tới csdl: tạo đối tượng, gán chuỗi kết nối (chứa thông tin để kết nối)
            SqlConnection cn = new SqlConnection(cnStr);
            //tạo kết nối tới db
            cn.Open();

            //sql chuẩn bị thực thi
            string sql = "SP_KhachHang";

            //đối tượng sẽ thực thi sql trên kết nối đã mở
            SqlCommand cm = new SqlCommand(sql, cn);
            //loại sql này là sp_
            cm.CommandType = CommandType.StoredProcedure;
            //truyền các tham số để chuẩn bị chạy sp_
            cm.Parameters.Add("@action", SqlDbType.NVarChar, 50).Value = "ds_kh";


            //SqlParameter param_Rep = cm.Parameters.Add("@rep", SqlDbType.Bit);
            //param_Rep.Direction = ParameterDirection.Output;

            //SqlParameter param_Detail = cm.Parameters.Add("@detail", SqlDbType.NVarChar,4000);
            //param_Detail.Direction = ParameterDirection.Output;

            //thực thi sp_ , loại action này trả về dữ liệu, hứng vào dr
            SqlDataReader dr = cm.ExecuteReader();
            //dt tạo trống để chuẩn bị load tất cả từ dr
            DataTable dt = new DataTable();
            dt.Load(dr); //load hết từ dr vào dt
            cm.Dispose();  //hủy cm
            cn.Close();    //đóng kết nối
            cn.Dispose();  //giải phóng tài nguyên
            ///lưu ý: luôn đóng, hủy khi dùng xong!

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
            //chuyển obj L -> json text
            string json = JsonConvert.SerializeObject(L);

            //phản hồi json text về trình duyệt
            this.Response.Write(json);
        }

        /// <summary>
        /// class này để chứa thông tin phản hồi về khi thêm 1 khách hàng
        /// </summary>
        class Data_them_kh
        {
            public bool ok; //true/false => báo thêm thành công hay ko
            public string error; //nếu có lỗi thì chi tiết báo lỗi ở đây
        }
        /// <summary>
        /// hàm thêm 1 khách hàng vào db
        /// input: 4 thông tin của 1 khách hàng
        /// ouput: {ok: true, error: null} nếu thêm thành công
        ///        {ok: false, error: "trùng sđt rồi nhé"} nếu thất bại 
        /// </summary>
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
                //loại action này ko trả về dữ liệu dạng bảng
                //mà trả về số bản ghi bị tác động
                int n = cm.ExecuteNonQuery();

                if (n > 0)
                {
                    //thêm đc 1 bản ghi thành công thì n==1
                    R.ok = true;
                }
                else
                {
                    //n<=0 là sai rồi
                    R.ok = false;
                    R.error = "Lỗi gì đó nên ko thêm được";
                }
                cm.Dispose(); //giải phóng tài nguyên thực thi sql
                cn.Close();   //đóng kết nối
                cn.Dispose(); //giải phóng tài nguyên kết nối db
            }
            catch (Exception ex)
            {
                //bẫy được lỗi -> gán vào thuộc tính error
                R.ok = false;
                R.error = ex.Message;
            }
            //chuyển đối tượng R -> json text
            string json = JsonConvert.SerializeObject(R);
            //gửi json text về trình duyệt
            this.Response.Write(json);
        }

        /// <summary>
        /// hàm này tự chạy khi api.aspx được gọi
        /// </summary>
        protected void Page_Load(object sender, EventArgs e)
        {
            //lấy biến action gửi lên
            string action = Request["action"];

            //tùy theo action mà gọi hàm tương ứng để xử lý
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