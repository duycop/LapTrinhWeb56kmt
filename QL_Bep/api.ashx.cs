using Newtonsoft.Json;
using Newtonsoft.Json.Serialization;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.NetworkInformation;
using System.Runtime.Remoting.Contexts;
using System.Threading;
using System.Web;
using System.Web.Security;

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
                var userAgent = context.Request.Headers["User-Agent"];
                string msg = $"IP: {ip}\nUserAgent: {userAgent}\n";
                db.LogMsg(action, msg);
            }
            catch { }
        }
        void admin_setting(string action)
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
                    cm.Parameters.Add("@note", SqlDbType.NVarChar, 500).Value = context.Request["note"];
                    cm.Parameters.Add("@value", SqlDbType.NVarChar, 500).Value = context.Request["value"];
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
        void admin_company(string action)
        {
            Reply reply = new Reply();

            try
            {
                SqlServer db = new SqlServer();
                SqlCommand cm = db.GetCmd("SP_Company", action);


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
                    cm.Parameters.Add("@address", SqlDbType.NVarChar, 255).Value = context.Request["address"];
                    cm.Parameters.Add("@lat", SqlDbType.Float).Value = lat;
                    cm.Parameters.Add("@lng", SqlDbType.Float).Value = lng;
                    cm.Parameters.Add("@phone", SqlDbType.VarChar, 50).Value = context.Request["phone"];
                    cm.Parameters.Add("@zalo", SqlDbType.VarChar, 100).Value = context.Request["zalo"];
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

        void report(string action)
        {
            try
            {
                SqlServer db = new SqlServer();
                SqlCommand cm = db.GetCmd("SP_Report", action);

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
        void suat_an(string action)
        {
            try
            {
                SqlServer db = new SqlServer();
                SqlCommand cm = db.GetCmd("SP_SuatAn", action);
                int role = get_role();
                switch (action)
                {
                    case "add_suat_an":
                    case "disable_suat_an":
                    case "enable_suat_an":
                    case "delete_suat_an":
                    //case "dem_suat_an":

                    case "add_order":
                    case "delete_order":
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
                        //ko cần tham số
                        break;
                    case "add_suat_an":
                    case "disable_suat_an":
                    case "enable_suat_an":

                        cm.Parameters.Add("@id", SqlDbType.Int).Value = context.Request["id"];
                        cm.Parameters.Add("@name", SqlDbType.NVarChar, 1000).Value = context.Request["name"];
                        cm.Parameters.Add("@sign", SqlDbType.NVarChar, 105000).Value = context.Request["sign"];
                        cm.Parameters.Add("@price", SqlDbType.Float).Value = context.Request["price"];
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
        public void ProcessRequest(HttpContext context)
        {
            this.context = context;
            context.Response.ContentType = "application/json";
            string action = context.Request["action"];
            add_log(action);

            switch (action)
            {
                case "list_suat_an":
                case "add_suat_an":
                case "enable_suat_an":
                case "disable_suat_an":
                case "delete_suat_an":
                case "dem_suat_an":
                case "add_order":
                case "delete_order":
                    suat_an(action);
                    break;

                case "monitor":
                    report(action);
                    break;

                case "list_setting":
                case "edit_setting":
                case "get_setting":
                    admin_setting(action);
                    break;

                case "list_company":
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