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

namespace TamTien
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
        void monitor(string action)
        {
            try
            {
                SqlServer db = new SqlServer();
                SqlCommand cm = db.GetCmd("SP_Phong", action);
                if (action == "report_detail")
                {
                    cm.Parameters.Add("@date", SqlDbType.Date).Value = context.Request["date"];
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
        /// <summary>
        /// Hàm điều khiển vào/ra tắm
        /// </summary>
        /// <param name="action">Action là vao_tam or tam_xong</param>
        void control(string action)
        {
            Reply reply = new Reply();
            try
            {
                int role = get_role();
                /* role list
                 * role=1 : guest  == view only
                 * role=2 : member ==> xem được số lượt của mình (bán vé tháng)
                 * role=3 : manager => view, thống kê, control: vào/ra tắm
                 * rome=100 : Admin
                 */
                if (role >= 3)
                {
                    /* 1=guest      => ko đc control,
                     * 2=member     => ko đc control,
                     * 3=manager    => cấp này trở lên mới đc control */
                    SqlServer db = new SqlServer();
                    SqlCommand cm = db.GetCmd("SP_Phong", action);
                    cm.Parameters.Add("@id", SqlDbType.Int).Value = context.Request["id"];
                    string json_db = (string)db.Scalar(cm);
                    context.Response.Write(json_db);
                    context.Response.End();
                    return;
                }
                else
                {
                    reply.msg = $"Bạn không có quyền làm việc này, quyền của bạn là {role}";
                    reply.ok = false;
                }
            }
            catch (Exception ex)
            {
                reply.msg = ex.Message;
                reply.ok = false;
            }
            string json = JsonConvert.SerializeObject(reply);
            context.Response.Write(json);
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
                    //if (role == 0)
                    //{
                    cm = db.GetCmd("SP_COOKIE", "CHECK");
                    cm.Parameters.Add("@uid", SqlDbType.NVarChar, 50).Value = context.Request.Cookies["uid"].Value;
                    cm.Parameters.Add("@cookie", SqlDbType.NVarChar, 50).Value = context.Request.Cookies["ck"].Value;
                    //}
                    //else
                    //{
                    //    string json_quick = context.Session[action].ToString();
                    //    db.LogMsg("json_quick", json_quick);
                    //    context.Response.Write(json_quick);
                    //    return;
                    //}
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

                    //if (action == "do_logout")
                    //{
                    //    context.Session.Clear();
                    //    context.Session.Abandon();
                    //}
                    //else if (action == "check_logined")
                    //{
                    //    context.Session[action] = json_str;
                    //}
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
        public void ProcessRequest(HttpContext context)
        {
            this.context = context;
            context.Response.ContentType = "application/json";
            string action = context.Request["action"];

            add_log(action);

            switch (action)
            {
                case "monitor":
                case "thong_ke":
                case "report_detail":
                    monitor(action);
                    break;

                case "vao_tam":
                case "tam_xong":
                case "huy_phong":
                    control(action);
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