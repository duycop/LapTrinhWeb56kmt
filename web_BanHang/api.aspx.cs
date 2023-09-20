using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
#pragma warning disable S101 // Types should be named in PascalCase
#pragma warning disable S3260 // Non-derived "private" classes and records should be "sealed"
#pragma warning disable S4487 // Unread "private" fields should be removed

namespace web_BanHang
{
    public partial class api : System.Web.UI.Page
    {
        private const string cnStr = "Server=192.168.0.116,49259;Database=QL_BanHang;User Id=sa;Password=123;";
        private class Data_reply

        {
            public bool ok; //true/false => báo thêm thành công hay ko
            public string msg; //nếu có lỗi thì chi tiết báo lỗi ở đây
        }
        private class Data_ChiTiet_HoaDonBan
        {
            public int mahh, sl;

            public string tenhh, dvt;
            public double dongia, thanhtien;
            public bool LoadRow(DataRow r, ref Exception ex)
            {
                try
                {
                    mahh = int.Parse(r["mahh"].ToString());
                    tenhh = r["tenhh"].ToString();
                    dvt = r["dvt"].ToString();
                    sl = int.Parse(r["SoLuongBan"].ToString());
                    dongia = double.Parse(r["dongiaBan"].ToString());
                    thanhtien = double.Parse(r["thanhtien"].ToString());
                }
                catch (Exception e)
                {
                    ex = e;
                    return false;
                }
                return true;
            }
        }
        private class Data_HoaDonBan
        {
            public int mahdb, makh, manv;
            public string tenkh, sdtkh, tennv, sdtnv;
            public DateTime ngayban;
            public double tongtien;
            public List<Data_ChiTiet_HoaDonBan> chitiet;

            public bool LoadRow(DataRow r, ref Exception ex)
            {
                try
                {
                    mahdb = int.Parse(r["mahdb"].ToString());
                    makh = int.Parse(r["makh"].ToString());
                    manv = int.Parse(r["manv"].ToString());

                    tenkh = r["tenkh"].ToString();
                    sdtkh = r["sdtkh"].ToString();

                    tennv = r["tennv"].ToString();
                    sdtnv = r["sdtnv"].ToString();

                    ngayban = DateTime.Parse(r["ngayban"].ToString());
                    tongtien = double.Parse(r["tongtien"].ToString());
                }
                catch (Exception e)
                {
                    ex = e;
                    return false;
                }
                return true;
            }
        }
        private class Data_ds_HoaDonBan : Data_reply
        {
            public List<Data_HoaDonBan> hoadon;
        }
        private class Data_KhachHang
        {
            public int makh;
            public string tenkh, sdt;
            public bool LoadRow(DataRow r, ref Exception e)
            {
                try
                {
                    makh = int.Parse(r["makh"].ToString());

                    tenkh = r["tenkh"].ToString();
                    sdt = r["sdt"].ToString();
                    return true;
                }
                catch (Exception ex)
                {
                    e = ex;
                    return false;
                }
            }
        }
        private class Data_ds_KhachHang : Data_reply
        {
            public List<Data_KhachHang> khachhang;
        }
        private class Data_NhanVien
        {
            public int manv;
            public string tennv, sdt;
            public bool LoadRow(DataRow r, ref Exception e)
            {
                try
                {
                    manv = int.Parse(r["manv"].ToString());

                    tennv = r["tennv"].ToString();
                    sdt = r["sdt"].ToString();
                    return true;
                }
                catch (Exception ex)
                {
                    e = ex;
                    return false;
                }
            }
        }
        private class Data_ds_NhanVien : Data_reply
        {
            public List<Data_NhanVien> nhanvien;
        }
        private class HangHoa
        {
            public int mahh;
            public string tenhh, dvt;
            public double dongia;
            public bool LoadRow(DataRow r, ref Exception ex)
            {
                try
                {
                    mahh = int.Parse(r["mahh"].ToString());
                    tenhh = r["tenhh"].ToString();
                    dvt = r["dvt"].ToString();
                    dongia = double.Parse(r["dongia"].ToString());
                }
                catch (Exception e)
                {
                    ex = e;
                    return false;
                }
                return true;
            }
        }
        private class Data_HangHoa : Data_reply
        {
            public HangHoa hanghoa;
        }
        private class Data_ds_HangHoa : Data_reply
        {
            public List<HangHoa> hanghoa;
        }
        private void add_hoa_don_ban()
        {
            //lấy data gửi lên, ở dạng json string với format như class Data_HoaDonBan
            Data_reply R = new Data_reply();
            R.msg = "";
            SqlTransaction tran = null;
            try
            {
                string dataJson = Request["data"];
                Data_HoaDonBan hd;

                //chuyển json string về object
                hd = JsonConvert.DeserializeObject<Data_HoaDonBan>(dataJson);
                //tạo 1 row trong bảng HoaDonBan
                //kết nối tới csdl: tạo đối tượng, gán chuỗi kết nối (chứa thông tin để kết nối)
                SqlConnection cn = new SqlConnection(cnStr);
                //tạo kết nối tới db
                cn.Open();

                //bắt đầu 1 phiên: gồm nhiều giao dịch
                tran = cn.BeginTransaction();

                //sql chuẩn bị thực thi
                string sql = "SP_BanHang";

                //đối tượng sẽ thực thi sql trên kết nối đã mở
                SqlCommand cm = new SqlCommand(sql, cn);
                //loại sql này là sp_
                cm.CommandType = CommandType.StoredProcedure;
                //truyền các tham số để chuẩn bị chạy sp_
                cm.Parameters.Add("@action", SqlDbType.NVarChar, 50).Value = "add_hoa_don_ban";
                cm.Parameters.Add("@makh", SqlDbType.Int).Value = hd.makh;
                cm.Parameters.Add("@manv", SqlDbType.Int).Value = hd.manv;
                //thực thi sp_ , loại action này trả về dữ liệu, hứng vào dr
                cm.Transaction = tran; //GẮN CM1 VÀO PHIÊN GIAO DỊCH
                hd.mahdb = int.Parse(cm.ExecuteScalar().ToString());
                R.msg += $"Đã thêm được hóa đơn bán #{hd.mahdb}\r\n";
                cm.Dispose();  //hủy cm

                foreach (Data_ChiTiet_HoaDonBan hh in hd.chitiet)
                {
                    //đối tượng sẽ thực thi sql trên kết nối đã mở
                    cm = new SqlCommand(sql, cn);
                    //loại sql này là sp_
                    cm.CommandType = CommandType.StoredProcedure;
                    //truyền các tham số để chuẩn bị chạy sp_
                    cm.Parameters.Add("@action", SqlDbType.NVarChar, 50).Value = "add_chi_tiet_ban";
                    cm.Parameters.Add("@MaHDB", SqlDbType.Int).Value = hd.mahdb;
                    cm.Parameters.Add("@MaHH", SqlDbType.Int).Value = hh.mahh;
                    cm.Parameters.Add("@SoLuongBan", SqlDbType.Int).Value = hh.sl;
                    cm.Parameters.Add("@DonGiaBan", SqlDbType.Money).Value = hh.dongia;

                    //thực thi sp_ 
                    cm.Transaction = tran; //GẮN CMi VÀO PHIÊN GIAO DỊCH
                    int n = cm.ExecuteNonQuery();
                    if (n > 0)
                    {
                        //thêm đc 1 bản ghi thành công thì n==1
                        R.ok = true;
                        R.msg += $"Đã thêm được hàng hóa mã {hh.mahh} SL={hh.sl} đơn giá={hh.dongia}\r\n";
                    }
                    else
                    {
                        //n<=0 là sai rồi
                        R.ok = false;
                        R.msg += $"Lỗi gì đó nên ko thêm được hàng hóa mã {hh.mahh} SL={hh.sl} đơn giá={hh.dongia}\r\n";
                    }
                    cm.Dispose();  //hủy cm

                } //endFor


                //chạy đc đến đây: mọi thứ ok: đã thêm đủ chi tiết 
                //hoàn thành phiên giao dịch
                tran.Commit(); //hoàn thành: ghi tất cả thay đổi vào db

                cn.Close();    //đóng kết nối
                cn.Dispose();  //giải phóng tài nguyên
            }
            catch (Exception ex)
            {
                if (tran != null)
                {
                    R.msg += "Rollback => Hủy bỏ mọi thứ trong phiên làm việc\r\n";
                    tran.Rollback(); //hủy những thay đổi
                }

                //bẫy được lỗi -> gán vào thuộc tính error
                R.ok = false;
                R.msg += ex.Message;
                if (ex.Message.Contains("CK_ChiTietHDB_GIA_BAN_AM"))
                {
                    R.msg += "Giá bán không được âm\r\n";
                }
                else if (ex.Message.Contains("CK_ChiTietHDB_SO_LUONG_AM"))
                {
                    R.msg += "Số lượng phải lớn hơn 0\r\n";
                }
            }
            //chuyển đối tượng R -> json text
            string json = JsonConvert.SerializeObject(R);
            //gửi json text về trình duyệt
            this.Response.Write(json);
        }
        private void get_ds_hoa_don_ban()
        {
            Data_ds_HoaDonBan L = new Data_ds_HoaDonBan();
            L.msg = "";
            try
            {
                string sql = "SP_BanHang";
                SqlConnection cn = new SqlConnection(cnStr);
                cn.Open();
                SqlCommand cm = new SqlCommand(sql, cn);
                cm.CommandType = CommandType.StoredProcedure;
                cm.Parameters.Add("@action", SqlDbType.NVarChar, 50).Value = "get_ds_hoa_don_ban";
                SqlDataReader dr = cm.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);
                dr.Close();
                cm.Dispose();
                Exception e = null;
                if (dt.Rows.Count > 0)
                {
                    L.hoadon = new List<Data_HoaDonBan>();
                    foreach (DataRow r in dt.Rows)
                    {
                        Data_HoaDonBan hd = new Data_HoaDonBan();
                        L.hoadon.Add(hd);
                        if (!hd.LoadRow(r, ref e))
                        {
                            L.msg += $"Hóa đơn {hd.mahdb} error: {e.Message}\r\n";
                        }
                        cm = new SqlCommand(sql, cn);
                        cm.CommandType = CommandType.StoredProcedure;
                        cm.Parameters.Add("@action", SqlDbType.NVarChar, 50).Value = "get_chitiet_hoa_don_ban";
                        cm.Parameters.Add("@mahdb", SqlDbType.Int).Value = hd.mahdb;
                        SqlDataReader dri = cm.ExecuteReader();
                        DataTable dti = new DataTable();
                        dti.Load(dri);
                        dri.Close();
                        cm.Dispose();
                        if (dti.Rows.Count > 0)
                        {
                            hd.chitiet = new List<Data_ChiTiet_HoaDonBan>();
                            foreach (DataRow ri in dti.Rows)
                            {
                                Data_ChiTiet_HoaDonBan item = new Data_ChiTiet_HoaDonBan();
                                hd.chitiet.Add(item);
                                if (!item.LoadRow(ri, ref e))
                                {
                                    L.msg += $"Chi tiết hóa đơn {hd.mahdb} error: {e.Message}\r\n";
                                }
                            }
                        }
                        dti.Dispose();
                    }
                    dt.Dispose();
                }
                cn.Close();
                cn.Dispose();
                L.ok = true;
            }
            catch (Exception ex)
            {
                L.ok = false;
                L.msg += ex.Message;
            }
            string json = JsonConvert.SerializeObject(L);
            this.Response.Write(json);
        }
        private void get_ds_kh()
        {
            Data_ds_KhachHang L = new Data_ds_KhachHang();
            try
            {
                string sql = "SP_KhachHang";
                SqlConnection cn = new SqlConnection(cnStr);
                cn.Open();
                SqlCommand cm = new SqlCommand(sql, cn);
                cm.CommandType = CommandType.StoredProcedure;
                cm.Parameters.Add("@action", SqlDbType.NVarChar, 50).Value = "get_ds_kh";
                SqlDataReader dr = cm.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);
                dr.Close();
                cm.Dispose();
                if (dt.Rows.Count > 0)
                {
                    L.khachhang = new List<Data_KhachHang>();
                    Exception ex = null;
                    foreach (DataRow r in dt.Rows)
                    {
                        Data_KhachHang kh = new Data_KhachHang();
                        kh.LoadRow(r, ref ex);
                        L.khachhang.Add(kh);
                    }
                }
                cn.Close();
                cn.Dispose();
                L.ok = true;
            }
            catch (Exception ex)
            {
                L.ok = false;
                L.msg = ex.Message;
            }
            string json = JsonConvert.SerializeObject(L);
            this.Response.Write(json);
        }
        private void get_ds_nv()
        {
            Data_ds_NhanVien L = new Data_ds_NhanVien();
            try
            {
                string sql = "SP_NhanVien";
                SqlConnection cn = new SqlConnection(cnStr);
                cn.Open();
                SqlCommand cm = new SqlCommand(sql, cn);
                cm.CommandType = CommandType.StoredProcedure;
                cm.Parameters.Add("@action", SqlDbType.NVarChar, 50).Value = "get_ds_nv";
                SqlDataReader dr = cm.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);
                dr.Close();
                cm.Dispose();
                if (dt.Rows.Count > 0)
                {
                    L.nhanvien = new List<Data_NhanVien>();
                    Exception ex = null;
                    foreach (DataRow r in dt.Rows)
                    {
                        Data_NhanVien nv = new Data_NhanVien();
                        nv.LoadRow(r, ref ex);
                        L.nhanvien.Add(nv);
                    }
                }
                cn.Close();
                cn.Dispose();
                L.ok = true;
            }
            catch (Exception ex)
            {
                L.ok = false;
                L.msg = ex.Message;
            }
            string json = JsonConvert.SerializeObject(L);
            this.Response.Write(json);
        }
        private void get_1_hang_hoa()
        {
            Data_HangHoa L = new Data_HangHoa();
            try
            {
                L.msg = "";
                int mahh = int.Parse(Request["mahh"]);
                string sql = "SP_HangHoa";
                SqlConnection cn = new SqlConnection(cnStr);
                cn.Open();
                SqlCommand cm = new SqlCommand(sql, cn);
                cm.CommandType = CommandType.StoredProcedure;
                cm.Parameters.Add("@action", SqlDbType.NVarChar, 50).Value = "get_1_hang_hoa";
                cm.Parameters.Add("@mahh", SqlDbType.Int).Value = mahh;
                SqlDataReader dr = cm.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);
                dr.Close();
                cm.Dispose();
                if (dt.Rows.Count > 0)
                {
                    Exception ex = null;
                    foreach (DataRow r in dt.Rows)
                    {
                        L.hanghoa = new HangHoa();
                        if (!L.hanghoa.LoadRow(r, ref ex))
                        {
                            L.msg += ex.Message;
                        }

                    }
                }
                cn.Close();
                cn.Dispose();
                L.ok = true;
            }
            catch (Exception ex)
            {
                L.ok = false;
                L.msg += ex.Message;
            }
            string json = JsonConvert.SerializeObject(L);
            this.Response.Write(json);
        }
        private void get_ds_hh()
        {
            Data_ds_HangHoa L = new Data_ds_HangHoa();
            try
            {
                L.msg = "";
                string sql = "SP_HangHoa";
                SqlConnection cn = new SqlConnection(cnStr);
                cn.Open();
                SqlCommand cm = new SqlCommand(sql, cn);
                cm.CommandType = CommandType.StoredProcedure;
                cm.Parameters.Add("@action", SqlDbType.NVarChar, 50).Value = "get_ds_hh";
                SqlDataReader dr = cm.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);
                dr.Close();
                cm.Dispose();
                if (dt.Rows.Count > 0)
                {
                    L.hanghoa = new List<HangHoa>();
                    Exception ex = null;
                    foreach (DataRow r in dt.Rows)
                    {
                        HangHoa hh = new HangHoa();
                        L.hanghoa.Add(hh);
                        if (!hh.LoadRow(r, ref ex))
                        {
                            L.msg += ex.Message;
                        }

                    }
                }
                cn.Close();
                cn.Dispose();
                L.ok = true;
            }
            catch (Exception ex)
            {
                L.ok = false;
                L.msg += ex.Message;
            }
            string json = JsonConvert.SerializeObject(L);
            this.Response.Write(json);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string action = Request["action"];
            switch (action)
            {
                case "get_ds_hoa_don_ban":
                    get_ds_hoa_don_ban();
                    break;
                case "add_hoa_don_ban":
                    add_hoa_don_ban();
                    break;
                case "get_ds_kh":
                    get_ds_kh();
                    break;
                case "get_ds_nv":
                    get_ds_nv();
                    break;
                case "get_1_hang_hoa":
                    get_1_hang_hoa();
                    break;
                case "get_ds_hh":
                    get_ds_hh();
                    break;
            }
        }
    }
}
#pragma warning restore S4487 // Unread "private" fields should be removed
#pragma warning restore S3260 // Non-derived "private" classes and records should be "sealed"
#pragma warning restore S101 // Types should be named in PascalCase