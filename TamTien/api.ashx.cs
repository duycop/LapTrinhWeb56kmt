using Newtonsoft.Json;
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
    /// Summary description for api1
    /// </summary>
    public class api : IHttpHandler
    {
        class Reply
        {
            public bool ok;
            public string message;
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
                reply.message = ex.Message;
                reply.ok = false;
                string json = JsonConvert.SerializeObject(reply);
                context.Response.Write(json);
            }
        }
        void control(string action)
        {
            try
            {
                SqlServer db = new SqlServer();
                SqlCommand cm = db.GetCmd("SP_Phong", action);
                cm.Parameters.Add("@id", SqlDbType.Int).Value = context.Request["id"];
                string json = (string)db.Scalar(cm);
                context.Response.Write(json);
            }
            catch (Exception ex)
            {
                Reply reply = new Reply();
                reply.message = ex.Message;
                reply.ok = false;
                string json = JsonConvert.SerializeObject(reply);
                context.Response.Write(json);
            }
        }
        void auth_user(string action)
        {
            try
            {
                SqlServer db = new SqlServer();
                SqlCommand cm = null;
                if (action == "check_logined")
                {
                    cm = db.GetCmd("SP_COOKIE", "CHECK");
                    cm.Parameters.Add("@uid", SqlDbType.NVarChar, 50).Value = context.Request.Cookies["uid"].Value;
                    cm.Parameters.Add("@cookie", SqlDbType.NVarChar, 50).Value = context.Request.Cookies["ck"].Value;
                }
                else if (action == "do_login")
                {
                    cm = db.GetCmd("SP_Login");
                    cm.Parameters.Add("@uid", SqlDbType.NVarChar, 50).Value = context.Request.Form["uid"];
                    cm.Parameters.Add("@pwd", SqlDbType.NVarChar, 50).Value = context.Request.Form["pwd"];
                }
                else if (action == "do_logout")
                {
                    cm = db.GetCmd("SP_COOKIE", "DELETE");
                    cm.Parameters.Add("@uid", SqlDbType.NVarChar, 50).Value = context.Request.Cookies["uid"].Value;
                    cm.Parameters.Add("@cookie", SqlDbType.NVarChar, 50).Value = context.Request.Cookies["ck"].Value;
                }
                else if (action == "do_change_pw")
                {
                    cm = db.GetCmd("SP_Login", action);
                    cm.Parameters.Add("@uid", SqlDbType.NVarChar, 50).Value = context.Request.Form["uid"];
                    cm.Parameters.Add("@pwd", SqlDbType.NVarChar, 50).Value = context.Request.Form["pwd"];
                    cm.Parameters.Add("@pwd2", SqlDbType.NVarChar, 50).Value = context.Request.Form["pwd2"];
                }
                else if (action == "add_user")
                {
                    cm = db.GetCmd("SP_NSD", action);
                    cm.Parameters.Add("@uid", SqlDbType.NVarChar, 50).Value = context.Request.Cookies["uid"].Value;
                    cm.Parameters.Add("@cookie", SqlDbType.NVarChar, 50).Value = context.Request.Cookies["ck"].Value;
                    cm.Parameters.Add("@adduid", SqlDbType.NVarChar, 50).Value = context.Request["adduid"];
                    cm.Parameters.Add("@name", SqlDbType.NVarChar, 50).Value = context.Request["name"];
                    cm.Parameters.Add("@pw", SqlDbType.NVarChar, 50).Value = context.Request["pw"];
                    cm.Parameters.Add("@loai", SqlDbType.Int).Value = context.Request.Form["role"];
                }
                else if (action == "delete_user")
                {
                    cm = db.GetCmd("SP_NSD", action);
                    cm.Parameters.Add("@uid", SqlDbType.NVarChar, 50).Value = context.Request.Cookies["uid"].Value;
                    cm.Parameters.Add("@cookie", SqlDbType.NVarChar, 50).Value = context.Request.Cookies["ck"].Value;
                    cm.Parameters.Add("@deluid", SqlDbType.NVarChar, 50).Value = context.Request.Form["deluid"];
                }
                else if (action == "list_user")
                {
                    cm = db.GetCmd("SP_NSD", action);
                    cm.Parameters.Add("@uid", SqlDbType.NVarChar, 50).Value = context.Request.Cookies["uid"].Value;
                    cm.Parameters.Add("@cookie", SqlDbType.NVarChar, 50).Value = context.Request.Cookies["ck"].Value;
                }

                if (cm != null)
                {
                    string json = (string)db.Scalar(cm);
                    context.Response.Write(json);
                }
            }
            catch (Exception ex)
            {
                Reply reply = new Reply();
                reply.message = ex.Message;
                reply.ok = false;
                string json = JsonConvert.SerializeObject(reply);
                context.Response.Write(json);
            }
        }
        HttpContext context;

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
                case "do_change_pw":
                case "list_user":
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