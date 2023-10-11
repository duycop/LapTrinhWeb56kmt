using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web_iot_gui
{
    public partial class api : System.Web.UI.Page
    {
        private const string cnStr = "Server=127.0.0.1;Database=demo_iot_sensor;User Id=sa;Password=123;";
        class BOM
        {
            public int id, status, ss;
        }
        class Reply
        {
            public bool ok;
            public string msg;
            public List<BOM> data;
        }
        void monitor()
        {
            Reply R = new Reply();
            try
            {
                //truy van db
                string sql = "select id,status,DATEDIFF(second,time,getdate()) as ss from sensor";
                SqlConnection cn = new SqlConnection(cnStr);
                cn.Open();
                SqlCommand cm = new SqlCommand(sql, cn);
                SqlDataReader dr = cm.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);
                dr.Close();
                cm.Dispose();
                if (dt.Rows.Count > 0)
                {
                    R.data = new List<BOM>();
                    foreach (DataRow row in dt.Rows)
                    {
                        BOM b = new BOM();
                        b.id = (int)row["id"];
                        b.status = (int)row["status"];
                        b.ss = (int)row["ss"];
                        R.data.Add(b);
                    }
                    R.ok = true;
                    R.msg = "ok đấy";
                }
                else
                {
                    R.ok = false;
                    R.msg = "không có dữ liệu";
                }
            }
            catch (Exception ex)
            {
                R.ok = false;
                R.msg = ex.Message;
            }
            string json = JsonConvert.SerializeObject(R);
            this.Response.Write(json);
        }
        void control_invert()
        {
            int id = int.Parse(this.Request["id"]);
            string sql = "update Sensor set status=1-status where id=@id";
            SqlConnection cn = new SqlConnection(cnStr);
            cn.Open();
            SqlCommand cm = new SqlCommand(sql, cn);
            cm.Parameters.Add("@id",SqlDbType.Int).Value= id;
            cm.ExecuteNonQuery();
            this.Response.Write("{ok:1}");
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string action = this.Request["action"];
            switch (action)
            {
                case "monitor":
                    monitor();
                    break;
                case "control_invert":
                    control_invert();
                    break;
            }
        }
    }
}