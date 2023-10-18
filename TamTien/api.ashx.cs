using Newtonsoft.Json;
using Newtonsoft.Json.Serialization;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Net.NetworkInformation;
using System.Threading;
using System.Web;

namespace TamTien
{
    

    /// <summary>
    /// Summary description for api
    /// </summary>
    public class api : IHttpHandler
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
            try
            {
                SqlServer db = new SqlServer();
                SqlCommand cm = db.GetCmd("SP_COOKIE", "GET_ROLE");
                cm.Parameters.Add("@uid", SqlDbType.NVarChar, 50).Value = context.Request["uid"];
                cm.Parameters.Add("@cookie", SqlDbType.NVarChar, 50).Value = context.Request["ck"];
                int role = (int)db.Scalar(cm);
                return role;
            }
            catch
            {
                return 0;
            }
        }
        void control(string action)
        {
            Reply reply = new Reply();
            try
            {
                int role=get_role();
                if (role > 1)
                {
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
                    reply.msg = "Bạn không có quyền làm việc này";
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
                    cm = db.GetCmd("SP_COOKIE", "CHECK");
                    cm.Parameters.Add("@uid", SqlDbType.NVarChar, 50).Value = context.Request["uid"];
                    cm.Parameters.Add("@cookie", SqlDbType.NVarChar, 50).Value = context.Request["ck"];
                }
                else if (action == "do_logout")
                {
                    if (role > 0) //phải có quyền gì đó, tức là đã login thì mới logout
                    {
                        cm = db.GetCmd("SP_COOKIE", "DELETE");
                        cm.Parameters.Add("@uid", SqlDbType.NVarChar, 50).Value = context.Request["uid"];
                        cm.Parameters.Add("@cookie", SqlDbType.NVarChar, 50).Value = context.Request["ck"];
                    }
                }
                else if (action == "do_change_pw")//tự đổi pw của mình
                {
                    if (role > 0)  //cứ đã login là ok
                    {
                        cm = db.GetCmd("SP_Login", action);
                        cm.Parameters.Add("@uid", SqlDbType.NVarChar, 50).Value = context.Request["uid"];
                        cm.Parameters.Add("@pwd", SqlDbType.NVarChar, 50).Value = context.Request.Form["pwd"];
                        cm.Parameters.Add("@pwd2", SqlDbType.NVarChar, 50).Value = context.Request.Form["pwd2"];
                    }
                }
                else if (action == "set_pw")
                {
                    if (role == 100) //ông quyền to bự này mới được set pw cho người khác
                    {
                        cm = db.GetCmd("SP_NSD", action);
                        cm.Parameters.Add("@uid", SqlDbType.NVarChar, 50).Value = context.Request["uid"];
                        cm.Parameters.Add("@cookie", SqlDbType.NVarChar, 50).Value = context.Request["ck"];

                        cm.Parameters.Add("@edit_uid", SqlDbType.NVarChar, 50).Value = context.Request.Form["uid"];
                        cm.Parameters.Add("@edit_pwd", SqlDbType.NVarChar, 50).Value = context.Request.Form["pwd"];
                    }
                }
                else if (action == "add_user")
                {
                    if (role == 100 || role==3) //2 ông to to này mới được add_user
                    {
                        cm = db.GetCmd("SP_NSD", action);
                        cm.Parameters.Add("@uid", SqlDbType.NVarChar, 50).Value = context.Request["uid"];
                        cm.Parameters.Add("@cookie", SqlDbType.NVarChar, 50).Value = context.Request["ck"];
                        cm.Parameters.Add("@adduid", SqlDbType.NVarChar, 50).Value = context.Request["adduid"];
                        cm.Parameters.Add("@pw", SqlDbType.NVarChar, 50).Value = context.Request["pw"];
                        cm.Parameters.Add("@name", SqlDbType.NVarChar, 50).Value = context.Request["name"];
                        cm.Parameters.Add("@loai", SqlDbType.Int).Value = context.Request.Form["role"];
                    }
                }
                else if (action == "delete_user")
                {
                    if (role == 100 || role == 3) //2 ông này mới đc delete_user
                    {
                        cm = db.GetCmd("SP_NSD", action);
                        cm.Parameters.Add("@uid", SqlDbType.NVarChar, 50).Value = context.Request.Cookies["uid"].Value;
                        cm.Parameters.Add("@cookie", SqlDbType.NVarChar, 50).Value = context.Request.Cookies["ck"].Value;
                        cm.Parameters.Add("@deluid", SqlDbType.NVarChar, 50).Value = context.Request.Form["deluid"];
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
                    else
                    {
                        reply.msg = $"quyền là {role}";
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