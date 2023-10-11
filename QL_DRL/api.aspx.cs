using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QL_DRL
{
    public partial class api : System.Web.UI.Page
    {
        private const string cnStr = "Server=127.0.0.1;Database=QL_DRL;User Id=sa;Password=123;";
        class Reply
        {
            public bool ok;
            public string msg;
        }
        class Reply_Check_cc: Reply
        {
            public int masv;
            public string hoten, lop, cc;
        }
        void login()
        {
            Reply_Check_cc reply = new Reply_Check_cc();
            try
            {
                int masv = int.Parse(this.Request["masv"]);
                string pw = this.Request["pw"];

                //truy van db
                string sql = "SP_LOGIN";
                SqlConnection cn = new SqlConnection(cnStr);
                cn.Open();
                SqlCommand cm = new SqlCommand(sql, cn);
                cm.CommandType = CommandType.StoredProcedure;
                cm.Parameters.Add("@action", SqlDbType.NVarChar, 50).Value = "login";
                cm.Parameters.Add("@masv", SqlDbType.Int).Value = masv;
                cm.Parameters.Add("@pw", SqlDbType.NVarChar, 50).Value = pw;
                SqlDataReader dr = cm.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);
                dr.Close();
                cm.Dispose();
                if (dt.Rows.Count > 0)
                {
                    //login ok: tra ve json {ok:true,masv:104,hoten:"nguyen van A",lop:"56kmt"}
                    reply.masv = masv;
                    reply.hoten = dt.Rows[0]["hoten"].ToString();
                    reply.lop = dt.Rows[0]["lop"].ToString();
                    reply.cc = dt.Rows[0]["cc"].ToString();
                    reply.msg = "đúng rồi";
                    reply.ok = true;
                }
                else
                {
                    //bao loi
                    reply.ok = false;
                    reply.msg = "có gì đó sai sai rồi";
                }
            }
            catch (Exception ex)
            {
                reply.ok = false;
                reply.msg = ex.Message;
            }
            string json = JsonConvert.SerializeObject(reply);
            this.Response.Write(json);
        }
        void check_cc()
        {
            Reply_Check_cc reply = new Reply_Check_cc();
            try
            {
                string cc = this.Request["cc"];
                int masv = int.Parse(this.Request["masv"]);

                //truy van db
                string sql = "SP_LOGIN";
                SqlConnection cn = new SqlConnection(cnStr);
                cn.Open();
                SqlCommand cm = new SqlCommand(sql, cn);
                cm.CommandType = CommandType.StoredProcedure;
                cm.Parameters.Add("@action", SqlDbType.NVarChar, 50).Value = "check_cc";
                cm.Parameters.Add("@masv", SqlDbType.Int).Value = masv;
                cm.Parameters.Add("@cc", SqlDbType.VarChar, 50).Value = cc;
                SqlDataReader dr = cm.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);
                dr.Close();
                cm.Dispose();
                if (dt.Rows.Count > 0)
                {
                    //login ok: tra ve json {ok:true,masv:104,hoten:"nguyen van A",lop:"56kmt"}
                    reply.masv = masv;
                    reply.hoten = dt.Rows[0]["hoten"].ToString();
                    reply.lop = dt.Rows[0]["lop"].ToString();
                    reply.msg = "đúng rồi";
                    reply.ok = true;
                }
                else
                {
                    //bao loi
                    reply.ok = false;
                    reply.msg = "có gì đó sai sai rồi";
                }
            }catch(Exception ex) {
                reply.ok = false;
                reply.msg=ex.Message;
            }
            string json = JsonConvert.SerializeObject(reply);
            this.Response.Write(json);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string action = this.Request["action"];
            switch (action)
            {
                case "login":
                    login();
                    break;
                case "check_cc":
                    check_cc();
                    break;
            }
        }
    }
}