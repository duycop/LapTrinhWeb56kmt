using Newtonsoft.Json;
using Newtonsoft.Json.Serialization;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.NetworkInformation;
using System.Runtime.Remoting.Contexts;
using System.Threading;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using static System.Collections.Specialized.BitVector32;

namespace SuatAn
{
    /// <summary>
    /// Summary description for api
    /// </summary>
    public class api : IHttpHandler//, System.Web.SessionState.IRequiresSessionState
    {
        HttpContext context;  //biến này lưu context của public void ProcessRequest(HttpContext context)
        class Reply
        {
            public bool ok;
            public string msg;
        }

        int get_role()
        {
            int role = 0;
            try
            {
                SqlServer db = new SqlServer();
                SqlCommand cm = db.GetCmd("SP_COOKIE", "GET_ROLE");
                string uid = context.Request.Cookies["uid"].Value;
                string cookie = context.Request.Cookies["ck"].Value;
                if (uid != null && uid != "" && cookie != null && cookie != "")
                {
                    cm.Parameters.Add("@uid", SqlDbType.NVarChar, 50).Value = uid;
                    cm.Parameters.Add("@cookie", SqlDbType.NVarChar, 50).Value = cookie;
                    role = (int)db.Scalar(cm);
                }
            }
            catch
            {
                role = 0;
            }
            return role;
        }

        void auth_user(string action)
        {
            Reply reply = new Reply();
            reply.msg = "Có gì đó sai sai";
            try
            {
                SqlServer db = new SqlServer();
                SqlCommand cm = null;
                int role = get_role();

                if (action == "do_login")
                {
                    //ko cần check quyền gì
                    cm = db.GetCmd("SP_Login");
                    cm.Parameters.Add("@uid", SqlDbType.NVarChar, 50).Value = context.Request.Form["uid"];
                    cm.Parameters.Add("@pwd", SqlDbType.NVarChar, 50).Value = context.Request.Form["pwd"];
                }
                else if (action == "check_logined")
                {
                    //ko cần check quyền gì
                    cm = db.GetCmd("SP_COOKIE", "CHECK");
                    cm.Parameters.Add("@uid", SqlDbType.NVarChar, 50).Value = context.Request.Cookies["uid"].Value;
                    cm.Parameters.Add("@cookie", SqlDbType.NVarChar, 50).Value = context.Request.Cookies["ck"].Value;
                }
                else if (action == "do_logout")
                {
                    if (role > 0) //phải có quyền gì đó, tức là đã login thì mới logout
                    {
                        cm = db.GetCmd("SP_COOKIE", "DELETE");
                        cm.Parameters.Add("@uid", SqlDbType.NVarChar, 50).Value = context.Request.Cookies["uid"].Value;
                        cm.Parameters.Add("@cookie", SqlDbType.NVarChar, 50).Value = context.Request.Cookies["ck"].Value;
                    }
                }
                else if (action == "do_change_pw")//tự đổi pw của mình
                {
                    if (role > 0)  //cứ đã login là ok
                    {
                        cm = db.GetCmd("SP_Login", action);
                        cm.Parameters.Add("@uid", SqlDbType.NVarChar, 50).Value = context.Request.Cookies["uid"].Value;
                        cm.Parameters.Add("@pwd", SqlDbType.NVarChar, 50).Value = context.Request.Form["pwd"];
                        cm.Parameters.Add("@pwd2", SqlDbType.NVarChar, 50).Value = context.Request.Form["pwd2"];
                    }
                }
                else if (action == "set_pw")
                {
                    if (role == 100 || role == 3)// 2 ông quyền to bự này mới được set pw cho người dưới quyền
                    {
                        cm = db.GetCmd("SP_NSD", action);
                        cm.Parameters.Add("@uid", SqlDbType.NVarChar, 50).Value = context.Request.Cookies["uid"].Value;
                        cm.Parameters.Add("@cookie", SqlDbType.NVarChar, 50).Value = context.Request.Cookies["ck"].Value;

                        cm.Parameters.Add("@edit_uid", SqlDbType.NVarChar, 50).Value = context.Request.Form["edit_uid"];
                        cm.Parameters.Add("@edit_pwd", SqlDbType.NVarChar, 50).Value = context.Request.Form["edit_pwd"];
                    }
                    else
                    {
                        reply.msg = "Bạn không có quyền set password";
                    }
                }
                else if (action == "add_user")
                {
                    if (role == 100 || role == 3) //2 ông to to này mới được add_user
                    {
                        int add_role = int.Parse(context.Request.Form["role"]);
                        if (role > add_role)
                        {
                            cm = db.GetCmd("SP_NSD", action);
                            cm.Parameters.Add("@uid", SqlDbType.NVarChar, 50).Value = context.Request.Cookies["uid"].Value;
                            cm.Parameters.Add("@cookie", SqlDbType.NVarChar, 50).Value = context.Request.Cookies["ck"].Value;
                            cm.Parameters.Add("@adduid", SqlDbType.NVarChar, 50).Value = context.Request["adduid"];
                            cm.Parameters.Add("@pw", SqlDbType.NVarChar, 50).Value = context.Request["pw"];
                            cm.Parameters.Add("@name", SqlDbType.NVarChar, 50).Value = context.Request["name"];
                            cm.Parameters.Add("@loai", SqlDbType.Int).Value = add_role;
                        }
                        else
                        {
                            reply.msg = "Chỉ add được user mới bé quyền hơn thôi!";
                        }
                    }
                }
                else if (action == "delete_user")
                {
                    if (role == 100 || role == 3) //2 ông này mới đc delete_user
                    {
                        string uid = context.Request.Cookies["uid"].Value;
                        string deluid = context.Request.Form["deluid"];

                        if (uid != deluid)
                        {
                            cm = db.GetCmd("SP_NSD", action);
                            cm.Parameters.Add("@uid", SqlDbType.NVarChar, 50).Value = uid;
                            cm.Parameters.Add("@cookie", SqlDbType.NVarChar, 50).Value = context.Request.Cookies["ck"].Value;
                            cm.Parameters.Add("@deluid", SqlDbType.NVarChar, 50).Value = deluid;
                        }
                        else
                        {
                            reply.msg = "Không thể tự xóa mình nhé!";
                        }
                    }
                }
                else if (action == "list_user")
                {
                    if (role == 100 || role == 3) //2 ông này mới được list_user
                    {
                        cm = db.GetCmd("SP_NSD", action);
                        cm.Parameters.Add("@uid", SqlDbType.NVarChar, 50).Value = context.Request.Cookies["uid"].Value;
                        cm.Parameters.Add("@cookie", SqlDbType.NVarChar, 50).Value = context.Request.Cookies["ck"].Value;
                    }
                }

                if (cm != null)
                {
                    string json_str = (string)db.Scalar(cm);
                    context.Response.Write(json_str);
                    context.Response.End();

                    return;
                }
                else
                {
                    reply.ok = false;
                }
            }
            catch (Exception ex)
            {
                reply.ok = false;
                reply.msg = ex.Message;
            }
            string json = JsonConvert.SerializeObject(reply);
            context.Response.Write(json);
        }

        protected string GetIPAddress()
        {
            try
            {
                string ipAddress = context.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];

                if (!string.IsNullOrEmpty(ipAddress))
                {
                    string[] addresses = ipAddress.Split(',');
                    if (addresses.Length != 0)
                    {
                        return addresses[0];
                    }
                }

                return context.Request.ServerVariables["REMOTE_ADDR"];
            }
            catch
            {
                return "ko_biet";
            }
        }

        void add_log(string action)
        {
            try
            {
                SqlServer db = new SqlServer();
                string ip = GetIPAddress();
                string msg = $"ip={ip};";
                foreach (string item in context.Request.QueryString)
                {
                    msg += $"{item}={context.Request.QueryString[item]};";
                }
                foreach (string item in context.Request.Form)
                {
                    msg += $"{item}={context.Request.Form[item]};";
                }

                bool has_ngay = false;
                foreach (string item in context.Request.Cookies)
                {
                    if (!item.StartsWith("_"))
                        if (item.StartsWith("uid") || item.Equals("ngay"))
                        {
                            if (item == "ngay")
                            {
                                string ngay = context.Request.Cookies[item].Value;
                                if (ngay != null && ngay != "")
                                {
                                    has_ngay = true;
                                    msg += $"{item}={ngay};";
                                }
                            }
                            else
                            {
                                msg += $"{item}={context.Request.Cookies[item].Value};";
                            }
                        }
                }
                if (!has_ngay)
                {
                    string item = "ngay";
                    string ngay = DateTime.Now.ToString("yyyy-MM-dd");
                    msg += $"{item}={ngay};";
                }
                //var userAgent = context.Request.Headers["User-Agent"];
                //msg += $"userAgent={userAgent}";
                db.LogMsg(action, msg);
            }
            catch (Exception ex)
            {
                SqlServer db = new SqlServer();
                string ip = GetIPAddress();
                //var userAgent = context.Request.Headers["User-Agent"];
                string msg = $"ip: {ip} ex: {ex.Message}";
                db.LogMsg(action, msg);
            }
        }
        void admin_setting(string action, bool write_json = true)
        {
            Reply reply = new Reply();

            try
            {
                SqlServer db = new SqlServer();
                SqlCommand cm = db.GetCmd("SP_Setting", action);


                if (action == "list_setting")
                {
                    //ko cần thêm tham số nào
                }
                else if (action == "edit_setting")
                {
                    cm.Parameters.Add("@uid", SqlDbType.NVarChar, 50).Value = context.Request.Cookies["uid"].Value;
                    cm.Parameters.Add("@cookie", SqlDbType.NVarChar, 50).Value = context.Request.Cookies["ck"].Value;

                    cm.Parameters.Add("@key", SqlDbType.NVarChar, 50).Value = context.Request["key"];
                    cm.Parameters.Add("@value", SqlDbType.NVarChar, 4000).Value = context.Request["value"];
                }
                else if (action == "get_setting")
                {
                    cm.Parameters.Add("@key", SqlDbType.NVarChar, 50).Value = context.Request["key"];
                }
                else
                {
                    cm = null;
                }


                if (cm != null)
                {
                    string json_str = (string)db.Scalar(cm);

                    if (write_json)
                    {
                        context.Response.Write(json_str);
                        context.Response.End();
                    }
                    else
                    {
                        temp_str = json_str;
                    }
                    return;
                }
                else
                {
                    reply.msg = "Có gì đó sai sai";
                    reply.ok = false;
                }
            }
            catch (Exception ex)
            {
                reply.ok = false;
                reply.msg = ex.Message;
            }
            string json = JsonConvert.SerializeObject(reply);
            if (write_json)
            {
                context.Response.Write(json);
            }
            else
            {
                temp_str = json;
            }
        }
        string temp_str;
        void admin_company(string action)
        {
            Reply reply = new Reply();

            try
            {
                SqlServer db = new SqlServer();
                SqlCommand cm = db.GetCmd("SP_Company", action);
                int role = get_role();
                switch (action)
                {
                    case "add_company":
                    case "edit_company":
                    case "delete_company":
                        if (role == 3 || role == 100)
                        {
                            //ok
                        }
                        else
                        {
                            throw new Exception("Bạn không có quyền");
                        }
                        break;
                }

                if (action == "list_company")
                {
                    //ko cần thêm tham số nào
                }
                else if (action == "edit_company")
                {

                    cm.Parameters.Add("@uid", SqlDbType.NVarChar, 50).Value = context.Request.Cookies["uid"].Value;
                    cm.Parameters.Add("@cookie", SqlDbType.NVarChar, 50).Value = context.Request.Cookies["ck"].Value;

                    //xử lý gps -> 2 số thực
                    float? lat = null, lng = null;
                    try
                    {
                        string[] items = context.Request["gps"].Split(',');
                        lat = float.Parse(items[0]);
                        lng = float.Parse(items[1]);
                    }
                    catch { }

                    cm.Parameters.Add("@id", SqlDbType.Int).Value = context.Request["id"];
                    cm.Parameters.Add("@name", SqlDbType.NVarChar, 255).Value = context.Request["name"];
                    cm.Parameters.Add("@tenviet", SqlDbType.NVarChar, 255).Value = context.Request["tenviet"];
                    cm.Parameters.Add("@address", SqlDbType.NVarChar, 255).Value = context.Request["address"];
                    cm.Parameters.Add("@lat", SqlDbType.Float).Value = lat;
                    cm.Parameters.Add("@lng", SqlDbType.Float).Value = lng;
                    cm.Parameters.Add("@phone", SqlDbType.VarChar, 50).Value = context.Request["phone"];
                    cm.Parameters.Add("@zalo", SqlDbType.VarChar, 100).Value = context.Request["zalo"];
                    cm.Parameters.Add("@data_order", SqlDbType.NVarChar, -1).Value = context.Request["data_order"];

                }
                else if (action == "add_company")
                {
                    cm.Parameters.Add("@uid", SqlDbType.NVarChar, 50).Value = context.Request.Cookies["uid"].Value;
                    cm.Parameters.Add("@cookie", SqlDbType.NVarChar, 50).Value = context.Request.Cookies["ck"].Value;

                    //xử lý gps -> 2 số thực
                    float? lat = null, lng = null;
                    try
                    {
                        string[] items = context.Request["gps"].Split(',');
                        lat = float.Parse(items[0]);
                        lng = float.Parse(items[1]);
                    }
                    catch { }

                    cm.Parameters.Add("@name", SqlDbType.NVarChar, 255).Value = context.Request["name"];
                    cm.Parameters.Add("@tenviet", SqlDbType.NVarChar, 255).Value = context.Request["tenviet"];
                    cm.Parameters.Add("@address", SqlDbType.NVarChar, 255).Value = context.Request["address"];
                    cm.Parameters.Add("@lat", SqlDbType.Float).Value = lat;
                    cm.Parameters.Add("@lng", SqlDbType.Float).Value = lng;
                    cm.Parameters.Add("@phone", SqlDbType.VarChar, 50).Value = context.Request["phone"];

                }
                else if (action == "delete_company")
                {
                    cm.Parameters.Add("@uid", SqlDbType.NVarChar, 50).Value = context.Request.Cookies["uid"].Value;
                    cm.Parameters.Add("@cookie", SqlDbType.NVarChar, 50).Value = context.Request.Cookies["ck"].Value;
                    cm.Parameters.Add("@id", SqlDbType.Int).Value = context.Request["id"];
                }
                else if (action == "get_company")
                {
                    cm.Parameters.Add("@id", SqlDbType.Int).Value = context.Request["id"];
                }
                else
                {
                    cm = null;
                }


                if (cm != null)
                {
                    string json_str = (string)db.Scalar(cm);


                    if (action == "add_company" || action == "edit_company")
                    {
                        //cần cập nhật vào bảng DefautOrder
                        //test: nhận được dữ liệu đã
                        //bỏ đi 2.11.2023 vì: đã có trường [data_order] thay thế rồi.
                        //string default_order = context.Request.Form["default_order[]"];

                        //SqlCommand cm1 = db.GetCmd("SP_Company", "delele_all_default_order");
                        //cm1.Parameters.Add("@id", SqlDbType.Int).Value = context.Request["id"];
                        //db.RunSQL(cm1);

                        //string[] arr = default_order.Split(new char[] { ',' });
                        //foreach (string ids in arr)
                        //{
                        //    SqlCommand cm2 = db.GetCmd("SP_Company", "add_default_order");
                        //    cm2.Parameters.Add("@id", SqlDbType.Int).Value = context.Request["id"];
                        //    cm2.Parameters.Add("@ids", SqlDbType.Int).Value = ids;
                        //    db.RunSQL(cm2);
                        //}
                    }

                    context.Response.Write(json_str);
                    context.Response.End();

                    return;
                }
                else
                {
                    reply.msg = "Có gì đó sai sai";
                    reply.ok = false;
                }
            }
            catch (Exception ex)
            {
                reply.ok = false;
                reply.msg = ex.Message;
            }
            string json = JsonConvert.SerializeObject(reply);
            context.Response.Write(json);
        }

        void report(string action)  //truyền action ngay từ page_load vào
        {
            try
            {
                SqlServer db = new SqlServer(); //dùng thư viện SqlServer
                SqlCommand cm = db.GetCmd("SP_Report", action); //thư viện SqlServer có hàm tạo SqlCommand nhanh
                string ngay = "";
                HttpCookie obj = context.Request.Cookies["ngay"];
                if (obj != null)
                {
                    ngay = obj.Value;
                    if (ngay != null && ngay != "")
                        cm.Parameters.Add("@ngay", SqlDbType.Date).Value = ngay; //truyền tham số cho cm
                }
                if (action == "get_mp3")
                {
                    cm.Parameters.Add("@last_log_id", SqlDbType.Int).Value = context.Request["last_mp3_id"];
                    cm.Parameters.Add("@last_talk_id", SqlDbType.Int).Value = context.Request["last_talk_id"];
                }
                if (action == "report_1_congty")
                {
                    cm.Parameters.Add("@id", SqlDbType.Int).Value = context.Request["id"];
                }
                if (action == "report_oto")
                {
                    admin_setting("edit_setting", false);

                    Reply r = JsonConvert.DeserializeObject<Reply>(temp_str);
                    if (r != null && r.ok)
                    {
                        int id_ca = int.Parse(context.Request["id_ca"]);
                        string car_json = context.Request["value"];
                        CAR_DATA car = JsonConvert.DeserializeObject<CAR_DATA>(car_json);
                        CAR_REP rep = new CAR_REP();
                        rep.car1 = CAR_DATA.get_report(ngay, id_ca, 1, car.car1);
                        rep.car2 = CAR_DATA.get_report(ngay, id_ca, 2, car.car2);
                        rep.car3 = CAR_DATA.get_report(ngay, id_ca, 3, car.car3);
                        rep.car4 = CAR_DATA.get_report(ngay, id_ca, 4, car.car4);
                        rep.car5 = CAR_DATA.get_report(ngay, id_ca, 5, car.car5);
                        rep.ok = true;
                        rep.msg = "ok";
                        string json_Car = JsonConvert.SerializeObject(rep); //dùng json net để tạo chuỗi
                        context.Response.Write(json_Car); //gửi về client
                    }
                    return;
                }
                string json = (string)db.Scalar(cm); //lấy json trong sp tạo ra (code từ trong db)
                context.Response.Write(json); //trả về client, trong này có ok=true rồi
            }
            catch (Exception ex) //bẫy lỗi
            {
                Reply reply = new Reply(); //tạo đối tượng để trả về lỗi
                reply.msg = ex.Message; //lấy lỗi bẫy được
                reply.ok = false; //báo lỗi qua ok
                string json = JsonConvert.SerializeObject(reply); //dùng json net để tạo chuỗi
                context.Response.Write(json); //gửi về client
            }
        }
        class CAR_REP : Reply
        {
            public Reply car1, car2, car3, car4, car5;
        }
        class CAR_DATA
        {
            public List<int> car1, car2, car3, car4, car5;
            public static Reply get_report(string ngay, int id_ca, int id_car, List<int> car)
            {
                Reply reply = new Reply();
                try
                {
                    string ids_congty = "";
                    foreach (int id in car)
                    {
                        ids_congty += id.ToString() + ",";
                    }
                    if (ids_congty != "")
                    {
                        ids_congty = ids_congty.Substring(0, ids_congty.Length - 1);

                        SqlServer db = new SqlServer(); //dùng thư viện SqlServer
                        SqlCommand cm = db.GetCmd("SP_Report", "report_oto"); //thư viện SqlServer có hàm tạo SqlCommand nhanh
                        cm.Parameters.Add("@ngay", SqlDbType.Date).Value = ngay;
                        cm.Parameters.Add("@id_ca", SqlDbType.Int).Value = id_ca;
                        cm.Parameters.Add("@id_car", SqlDbType.Int).Value = id_car;
                        cm.Parameters.Add("@ids_congty", SqlDbType.NVarChar, 4000).Value = ids_congty;
                        reply.msg = (string)db.Scalar(cm);
                        reply.ok = true;
                    }
                    else
                    {
                        //tạo đối tượng để trả về lỗi
                        string[] CA_NAME = { "", "Sáng", "Trưa", "Tối", "Đêm" };
                        reply.msg = $"Không có dữ liệu của xe {id_car}, ca {CA_NAME[id_ca]} ngày {ngay}";
                        reply.ok = false; //báo lỗi qua ok
                    }
                }
                catch (Exception ex)
                {
                    reply.ok = false;
                    reply.msg = ex.Message;
                }
                return reply;
            }
            
        }
        
        void suat_an(string action)
        {
            try
            {
                SqlServer db = new SqlServer();
                SqlCommand cm = db.GetCmd("SP_SuatAn", action);
                int role = get_role();
                string ngay = "";
                HttpCookie obj = context.Request.Cookies["ngay"];
                if (obj != null)
                {
                    ngay = obj.Value;
                    if (ngay != null && ngay != "")
                    {
                        cm.Parameters.Add("@ngay", SqlDbType.Date).Value = ngay; //truyền tham số cho cm
                    }
                }

                switch (action)
                {
                    case "add_suat_an":
                    case "disable_suat_an":
                    case "enable_suat_an":
                    case "delete_suat_an":

                    //case "add_order":
                    //case "delete_order":
                    case "save_order":
                    case "goi_y_order":
                    case "copy_order":
                    case "list_history_order":
                    case "list_history_company_order":
                        if (role == 3 || role == 100)
                        {
                            cm.Parameters.Add("@uid", SqlDbType.NVarChar, 50).Value = context.Request.Cookies["uid"].Value;
                            cm.Parameters.Add("@cookie", SqlDbType.NVarChar, 50).Value = context.Request.Cookies["ck"].Value;
                        }
                        else
                        {
                            throw new Exception("Bạn không có quyền");
                        }
                        break;
                }

                switch (action)
                {
                    case "list_suat_an":
                    case "list_all_history_order":
                        //ko cần tham số
                        break;
                    case "add_suat_an":
                    case "disable_suat_an":
                    case "enable_suat_an":

                        cm.Parameters.Add("@id", SqlDbType.Int).Value = context.Request["id"];
                        cm.Parameters.Add("@name", SqlDbType.NVarChar, 1000).Value = context.Request["name"];
                        cm.Parameters.Add("@sign", SqlDbType.NVarChar, 105000).Value = context.Request["sign"];
                        cm.Parameters.Add("@price", SqlDbType.Float).Value = context.Request["price"];
                        cm.Parameters.Add("@loai", SqlDbType.Int).Value = context.Request["loai"];
                        break;
                    case "delete_suat_an":
                        cm.Parameters.Add("@id", SqlDbType.Int).Value = context.Request["id"];
                        break;
                    case "dem_suat_an":
                    case "add_order":
                    case "delete_order":
                        cm.Parameters.Add("@id_company", SqlDbType.Int).Value = context.Request["id_company"];
                        cm.Parameters.Add("@id_ca", SqlDbType.Int).Value = context.Request["id_ca"];
                        cm.Parameters.Add("@id_suat", SqlDbType.Int).Value = context.Request["id_suat"];
                        break;
                }
                switch (action)
                {
                    case "add_order":
                        cm.Parameters.Add("@so_luong", SqlDbType.Int).Value = context.Request["so_luong"];
                        break;

                    case "save_order":
                        ////1 xóa hết order cũ
                        //SqlCommand cm2 = db.GetCmd("SP_SuatAn", "remove_order_cty_ca");
                        //cm2.Parameters.Add("@id_company", SqlDbType.Int).Value = context.Request["id_company"];
                        //cm2.Parameters.Add("@today", SqlDbType.Date).Value = today;//fixbug: ko có cái này thì sẽ ko đúng ngày
                        //cm2.Parameters.Add("@id_ca", SqlDbType.Int).Value = context.Request["id_ca"];

                        //db.RunSQL(cm2);

                        ////2 add từng order mới
                        //string order_id = context.Request.Form["order_id[]"];
                        //string order_sl = context.Request.Form["order_sl[]"];
                        //char[] sep = { ',' };
                        //string[] arr_id = order_id.Split(sep);
                        //string[] arr_sl = order_sl.Split(sep);
                        //for (int i = 0; i < arr_id.Length; i++)
                        //{
                        //    string ids = arr_id[i];
                        //    string sl = arr_sl[i];
                        //    if (sl == "0" || sl == "" || sl == "NaN")
                        //    {
                        //        //ko làm gi
                        //    }
                        //    else
                        //    {
                        //        int so_luong;
                        //        if (int.TryParse(sl, out so_luong))
                        //        {
                        //            if (so_luong > 0)
                        //            {
                        //                SqlCommand cm3 = db.GetCmd("SP_SuatAn", "add_order_cty_ca");
                        //                cm3.Parameters.Add("@id_company", SqlDbType.Int).Value = context.Request["id_company"];
                        //                cm3.Parameters.Add("@today", SqlDbType.Date).Value = today; //fixbug: ko có cái này thì sẽ ko đúng ngày
                        //                cm3.Parameters.Add("@id_ca", SqlDbType.Int).Value = context.Request["id_ca"];
                        //                cm3.Parameters.Add("@id_suat", SqlDbType.Int).Value = ids;
                        //                cm3.Parameters.Add("@so_luong", SqlDbType.Int).Value = sl;
                        //                db.RunSQL(cm3);
                        //            }
                        //        }
                        //    }
                        //}
                        //Reply reply = new Reply();
                        //reply.msg = $"Đã cập nhật số lượng suất ăn thành công ca={context.Request["id_ca"]}, ngày {today}, công ty={context.Request["id_company"]}";
                        //reply.ok = true;
                        //string json_save = JsonConvert.SerializeObject(reply);
                        //context.Response.Write(json_save);
                        //return;

                        //cm.Parameters.Add("@today", SqlDbType.Date).Value = today;//fixbug: ko có cái này thì sẽ ko đúng ngày
                        cm.Parameters.Add("@id_company", SqlDbType.Int).Value = context.Request["id_company"];
                        cm.Parameters.Add("@id_ca", SqlDbType.Int).Value = context.Request["id_ca"];
                        cm.Parameters.Add("@order_id", SqlDbType.VarChar, -1).Value = context.Request.Form["order_id[]"];
                        cm.Parameters.Add("@order_sl", SqlDbType.VarChar, -1).Value = context.Request.Form["order_sl[]"];
                        break;
                    case "goi_y_order":
                    case "list_history_order":
                        cm.Parameters.Add("@id_company", SqlDbType.Int).Value = context.Request["id_company"];
                        cm.Parameters.Add("@id_ca", SqlDbType.Int).Value = context.Request["id_ca"];
                        break;
                    case "list_history_company_order":
                        cm.Parameters.Add("@id_company", SqlDbType.Int).Value = context.Request["id_company"];
                        break;
                    case "copy_order":
                        cm.Parameters.Add("@ngay_old", SqlDbType.Date).Value = context.Request["ngay_from"];
                        cm.Parameters.Add("@ngay_new", SqlDbType.Date).Value = context.Request["ngay_to"];
                        break;
                }
                string json = (string)db.Scalar(cm);
                context.Response.Write(json);
            }
            catch (Exception ex)
            {
                Reply reply = new Reply();
                reply.msg = ex.Message;
                reply.ok = false;
                string json = JsonConvert.SerializeObject(reply);
                context.Response.Write(json);
            }
        }
        void remove_ck()
        {
            try
            {
                string[] cks = { "xbc", "__pat", "__pvi", "__tbc", "today" };
                foreach (string ck in cks)
                {
                    context.Request.Cookies.Remove(ck);
                    context.Response.Cookies.Remove(ck);
                }
            }
            catch { }
        }

        void xuly_loai(string action)
        {
            Reply reply = new Reply(); //tạo đối tượng để trả về lỗi
            string json = "";
            try
            {
                reply.ok = true;
                SqlServer db = new SqlServer(); //dùng thư viện SqlServer
                SqlCommand cm = db.GetCmd("SP_Loai", action); //thư viện SqlServer có hàm tạo SqlCommand nhanh

                switch (action)
                {
                    case "add_loai":
                    case "edit_loai":
                    case "del_loai":
                        int role = get_role();
                        if (role == 3 || role == 100)
                        {
                            reply.ok = true;
                            string uid = context.Request.Cookies["uid"].Value;
                            string cookie = context.Request.Cookies["ck"].Value;
                            if (uid != null && uid != "" && cookie != null && cookie != "")
                            {
                                cm.Parameters.Add("@uid", SqlDbType.NVarChar, 50).Value = uid;
                                cm.Parameters.Add("@cookie", SqlDbType.NVarChar, 50).Value = cookie;
                            }
                        }
                        else
                        {
                            reply.ok = false;
                            reply.msg = "Bạn không có quyền";
                        }
                        break;
                }

                if (reply.ok)
                {
                    switch (action)
                    {
                        case "list_loai":
                            break;
                        case "add_loai":
                        case "edit_loai":
                        case "del_loai":
                            cm.Parameters.Add("@id", SqlDbType.Int).Value = context.Request["id"];
                            break;
                    }

                    switch (action)
                    {
                        case "add_loai":
                        case "edit_loai":
                            cm.Parameters.Add("@name", SqlDbType.NVarChar, 50).Value = context.Request["name"];
                            break;
                    }
                    switch (action)
                    {
                        case "edit_loai":
                            cm.Parameters.Add("@id_old", SqlDbType.Int).Value = context.Request["id_old"];
                            break;
                    }
                    json = (string)db.Scalar(cm); //lấy json trong sp tạo ra (code từ trong db)
                }
            }
            catch (Exception ex) //bẫy lỗi
            {
                reply.msg = ex.Message; //lấy lỗi bẫy được
                reply.ok = false; //báo lỗi qua ok
                json = JsonConvert.SerializeObject(reply); //dùng json net để tạo chuỗi
            }
            context.Response.Write(json); //gửi về client
        }

        void xuly_don_nguyen(string action)
        {
            Reply reply = new Reply(); //tạo đối tượng để trả về lỗi
            string json = "";
            try
            {
                reply.ok = true;
                SqlServer db = new SqlServer(); //dùng thư viện SqlServer
                SqlCommand cm = db.GetCmd("SP_DonNguyen", action); //thư viện SqlServer có hàm tạo SqlCommand nhanh

                switch (action)
                {
                    case "add_don_nguyen":
                    case "edit_don_nguyen":
                    case "del_don_nguyen":
                        int role = get_role();
                        if (role == 3 || role == 100)
                        {
                            reply.ok = true;
                            string uid = context.Request.Cookies["uid"].Value;
                            string cookie = context.Request.Cookies["ck"].Value;
                            if (uid != null && uid != "" && cookie != null && cookie != "")
                            {
                                cm.Parameters.Add("@uid", SqlDbType.NVarChar, 50).Value = uid;
                                cm.Parameters.Add("@cookie", SqlDbType.NVarChar, 50).Value = cookie;
                            }
                        }
                        else
                        {
                            reply.ok = false;
                            reply.msg = "Bạn không có quyền";
                        }
                        break;
                }

                if (reply.ok)
                {
                    switch (action)
                    {
                        case "list_don_nguyen":
                            //ko cần thêm tham số
                            break;
                        case "dem_don_nguyen":
                        case "add_don_nguyen":
                        case "edit_don_nguyen":
                        case "del_don_nguyen":
                            cm.Parameters.Add("@id", SqlDbType.Int).Value = context.Request["id"];
                            break;
                    }

                    switch (action)
                    {
                        case "add_don_nguyen":
                        case "edit_don_nguyen":
                            cm.Parameters.Add("@name", SqlDbType.NVarChar, 255).Value = context.Request["name"];
                            cm.Parameters.Add("@des", SqlDbType.NVarChar, 255).Value = context.Request["des"];
                            break;
                    }
                    switch (action)
                    {
                        case "edit_don_nguyen":
                            cm.Parameters.Add("@id_old", SqlDbType.Int).Value = context.Request["id_old"];
                            break;
                    }
                    json = (string)db.Scalar(cm); //lấy json trong sp tạo ra (code từ trong db)
                }
            }
            catch (Exception ex) //bẫy lỗi
            {
                reply.msg = ex.Message; //lấy lỗi bẫy được
                reply.ok = false; //báo lỗi qua ok
                json = JsonConvert.SerializeObject(reply); //dùng json net để tạo chuỗi
            }
            context.Response.Write(json); //gửi về client
        }

        void xuly_combo(string action)
        {
            Reply reply = new Reply(); //tạo đối tượng để trả về lỗi
            string json = "";
            try
            {
                reply.ok = true;
                SqlServer db = new SqlServer(); //dùng thư viện SqlServer
                SqlCommand cm = db.GetCmd("SP_Combo", action); //thư viện SqlServer có hàm tạo SqlCommand nhanh

                switch (action)
                {
                    case "add_combo":
                    case "edit_combo":
                    case "del_combo":
                        int role = get_role();
                        if (role == 3 || role == 100)
                        {
                            reply.ok = true;
                            string uid = context.Request.Cookies["uid"].Value;
                            string cookie = context.Request.Cookies["ck"].Value;
                            if (uid != null && uid != "" && cookie != null && cookie != "")
                            {
                                cm.Parameters.Add("@uid", SqlDbType.NVarChar, 50).Value = uid;
                                cm.Parameters.Add("@cookie", SqlDbType.NVarChar, 50).Value = cookie;
                            }
                        }
                        else
                        {
                            reply.ok = false;
                            reply.msg = "Bạn không có quyền";
                        }
                        break;
                }

                if (reply.ok)
                {
                    switch (action)
                    {
                        case "list_combo":
                            //ko cần thêm tham số
                            break;
                        case "add_combo":
                        case "edit_combo":
                            cm.Parameters.Add("@ids", SqlDbType.Int).Value = context.Request["ids"];
                            break;
                        case "del_combo":
                            cm.Parameters.Add("@ids", SqlDbType.Int).Value = context.Request["ids"];
                            cm.Parameters.Add("@idn", SqlDbType.Int).Value = context.Request["idn"];
                            break;
                    }

                    switch (action)
                    {
                        case "add_combo":
                        case "edit_combo":
                            cm.Parameters.Add("@idn", SqlDbType.Int).Value = context.Request["idn"];
                            cm.Parameters.Add("@sl", SqlDbType.Int).Value = context.Request["sl"];
                            break;
                    }
                    json = (string)db.Scalar(cm); //lấy json trong sp tạo ra (code từ trong db)
                }
            }
            catch (Exception ex) //bẫy lỗi
            {
                reply.msg = ex.Message; //lấy lỗi bẫy được
                reply.ok = false; //báo lỗi qua ok
                json = JsonConvert.SerializeObject(reply); //dùng json net để tạo chuỗi
            }
            context.Response.Write(json); //gửi về client
        }

        void xuly_talk(string action)
        {
            Reply reply = new Reply(); //tạo đối tượng để trả về lỗi
            string json = "";
            try
            {
                reply.ok = true;
                SqlServer db = new SqlServer(); //dùng thư viện SqlServer
                SqlCommand cm = db.GetCmd("SP_TALK", action); //thư viện SqlServer có hàm tạo SqlCommand nhanh

                switch (action)
                {
                    case "add_talk":
                    case "edit_talk":
                    case "del_talk":
                        int role = get_role();
                        if (role == 3 || role == 100)
                        {
                            reply.ok = true;
                            string uid = context.Request.Cookies["uid"].Value;
                            string cookie = context.Request.Cookies["ck"].Value;
                            if (uid != null && uid != "" && cookie != null && cookie != "")
                            {
                                cm.Parameters.Add("@uid", SqlDbType.NVarChar, 50).Value = uid;
                                cm.Parameters.Add("@cookie", SqlDbType.NVarChar, 50).Value = cookie;
                            }
                        }
                        else
                        {
                            reply.ok = false;
                            reply.msg = "Bạn không có quyền";
                        }
                        break;
                }

                if (reply.ok)
                {
                    switch (action)
                    {
                        case "list_talk":
                            //ko cần thêm tham số
                            break;
                        case "edit_talk":
                        case "del_talk":
                        case "say_talk":
                            cm.Parameters.Add("@id", SqlDbType.Int).Value = context.Request["id"];
                            break;
                    }

                    switch (action)
                    {
                        case "add_talk":
                        case "edit_talk":
                            cm.Parameters.Add("@message", SqlDbType.NVarChar, -1).Value = context.Request["message"];
                            cm.Parameters.Add("@time_say", SqlDbType.DateTime).Value = context.Request["time_say"];
                            break;
                    }
                    json = (string)db.Scalar(cm); //lấy json trong sp tạo ra (code từ trong db)
                }
            }
            catch (Exception ex) //bẫy lỗi
            {
                reply.msg = ex.Message; //lấy lỗi bẫy được
                reply.ok = false; //báo lỗi qua ok
                json = JsonConvert.SerializeObject(reply); //dùng json net để tạo chuỗi
            }
            context.Response.Write(json); //gửi về client
        }
        void xuly_box(string action)
        {
            Reply reply = new Reply(); //tạo đối tượng để trả về lỗi
            string json = "";
            try
            {
                reply.ok = true;
                SqlServer db = new SqlServer(); //dùng thư viện SqlServer
                SqlCommand cm = db.GetCmd("SP_BOX", action); //thư viện SqlServer có hàm tạo SqlCommand nhanh

                switch (action)
                {
                    case "add_box":
                    case "edit_box":
                    case "del_box":
                        int role = get_role();
                        if (role == 3 || role == 100)
                        {
                            reply.ok = true;
                            string uid = context.Request.Cookies["uid"].Value;
                            string cookie = context.Request.Cookies["ck"].Value;
                            if (uid != null && uid != "" && cookie != null && cookie != "")
                            {
                                cm.Parameters.Add("@uid", SqlDbType.NVarChar, 50).Value = uid;
                                cm.Parameters.Add("@cookie", SqlDbType.NVarChar, 50).Value = cookie;
                            }
                        }
                        else
                        {
                            reply.ok = false;
                            reply.msg = "Bạn không có quyền";
                        }
                        break;
                }

                if (reply.ok)
                {
                    switch (action)
                    {
                        case "list_box":
                            //ko cần thêm tham số
                            break;
                        case "edit_box":
                        case "del_box":
                            cm.Parameters.Add("@id", SqlDbType.Int).Value = context.Request["id"];
                            break;
                    }

                    switch (action)
                    {
                        case "add_box":
                        case "edit_box":
                            cm.Parameters.Add("@name", SqlDbType.NVarChar, 50).Value = context.Request["name"];
                            cm.Parameters.Add("@size", SqlDbType.Int).Value = context.Request["size"];
                            cm.Parameters.Add("@items", SqlDbType.NVarChar, -1).Value = context.Request["items"];
                            break;
                    }
                    json = (string)db.Scalar(cm); //lấy json trong sp tạo ra (code từ trong db)
                }
            }
            catch (Exception ex) //bẫy lỗi
            {
                reply.msg = ex.Message; //lấy lỗi bẫy được
                reply.ok = false; //báo lỗi qua ok
                json = JsonConvert.SerializeObject(reply); //dùng json net để tạo chuỗi
            }
            context.Response.Write(json); //gửi về client
        }
        public void ProcessRequest(HttpContext context)
        {
            this.context = context;
            context.Response.ContentType = "application/json";
            remove_ck();
            string action = context.Request["action"];

            switch (action)
            {
                case "add_suat_an":
                case "enable_suat_an":
                case "disable_suat_an":
                case "delete_suat_an":
                case "save_order":

                case "copy_order":

                case "edit_setting":
                case "get_setting":

                case "add_company":
                case "edit_company":
                case "delete_company":

                case "do_login":
                case "do_logout":
                case "do_change_pw":

                case "add_user":
                case "delete_user":
                case "set_pw":

                case "add_loai":
                case "edit_loai":
                case "del_loai":

                case "add_don_nguyen":
                case "edit_don_nguyen":
                case "del_don_nguyen":

                case "add_combo":
                case "edit_combo":
                case "del_combo":

                case "add_talk":
                case "edit_talk":
                case "del_talk":
                    add_log(action);
                    break;
            }

            switch (action)
            {
                case "list_suat_an":
                case "add_suat_an":
                case "enable_suat_an":
                case "disable_suat_an":
                case "delete_suat_an":
                case "dem_suat_an":
                case "list_history_order":
                case "list_history_company_order":
                case "list_all_history_order":

                //case "add_order":
                //case "delete_order":
                case "save_order":
                case "goi_y_order":
                case "copy_order":
                    suat_an(action);
                    break;

                case "monitor":
                case "get_mp3":
                case "report_1_congty":
                case "report_oto":
                    report(action);
                    break;

                case "list_setting":
                case "edit_setting":
                case "get_setting":
                    admin_setting(action);
                    break;

                case "list_company":
                case "get_company":
                case "add_company":
                case "edit_company":
                case "delete_company":
                    admin_company(action);
                    break;

                case "check_logined":
                case "do_login":
                case "do_logout":
                case "list_user":
                case "do_change_pw":
                case "add_user":
                case "delete_user":
                case "set_pw":
                    auth_user(action);
                    break;

                case "list_loai":
                case "add_loai":
                case "edit_loai":
                case "del_loai":
                    xuly_loai(action);
                    break;

                case "list_don_nguyen":
                case "dem_don_nguyen":
                case "add_don_nguyen":
                case "edit_don_nguyen":
                case "del_don_nguyen":
                    xuly_don_nguyen(action);
                    break;

                case "list_combo":
                case "add_combo":
                case "edit_combo":
                case "del_combo":
                    xuly_combo(action);
                    break;

                case "list_talk":
                case "add_talk":
                case "edit_talk":
                case "del_talk":
                case "say_talk":
                    xuly_talk(action);
                    break;


                case "list_box":
                case "add_box":
                case "edit_box":
                case "del_box":
                    xuly_box(action);
                    break;
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}