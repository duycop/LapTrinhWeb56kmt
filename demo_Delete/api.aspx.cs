using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demo_Delete
{
    public partial class api : System.Web.UI.Page
    {
        private const string cnStr = "Server=127.0.0.1,49259;Database=svKMT_tnut;User Id=sa;Password=123;";
        class SV
        {
            public string masv, ho, ten, lop;
        }
        void load_all_sv()
        {
            List<SV> ds = new List<SV>();
            string sql = "select * from sv";
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
                foreach (DataRow r in dt.Rows)
                {
                    SV sv = new SV();
                    sv.masv = r["masv"].ToString();
                    sv.ho = r["ho"].ToString();
                    sv.ten = r["ten"].ToString();
                    sv.lop = r["lop"].ToString();
                    ds.Add(sv);
                }
            }
            cn.Close();
            cn.Dispose();
            string json = JsonConvert.SerializeObject(ds);
            this.Response.Write(json);
        }
        

        class Data_Rep
        {
            public bool ok;
            public string msg;
        }
        private void xoa_1_sv()
        {
            Random xx=new Random();
            Thread.Sleep(2000+xx.Next(10000));
            Data_Rep rep = new Data_Rep();
            try
            {
                string sql = "SP_SV";
                SqlConnection cn = new SqlConnection(cnStr);
                cn.Open();
                SqlCommand cm = new SqlCommand(sql, cn);
                cm.CommandType = CommandType.StoredProcedure;
                cm.Parameters.Add("@action", SqlDbType.NVarChar, 50).Value = "xoa_1_sv";
                cm.Parameters.Add("@masv", SqlDbType.VarChar, 13).Value = Request["masv"];
                int n = cm.ExecuteNonQuery();
                cm.Dispose();
                cn.Close();
                cn.Dispose();
                rep.ok = (n == 1);
                if (n != 1)
                {
                    rep.msg = "Lỗi gì đó!";
                }
            }
            catch (Exception ex)
            {
                rep.ok = false;
                rep.msg = ex.Message;
            }

            string json = JsonConvert.SerializeObject(rep);
            this.Response.Write(json);
        }

        class DataSensor
        {
            public DateTime t;
            public double v;
        }
        void data_chart()
        {
            List<DataSensor> L =new List<DataSensor>();
            string sql = "select TimeBegin,value from SensorLog where sid=@sid";
            SqlConnection cn = new SqlConnection(cnStr);
            cn.Open();
            SqlCommand cm = new SqlCommand(sql, cn);
            cm.Parameters.Add("@sid", SqlDbType.Int).Value = Request["sid"];
            SqlDataReader dr = cm.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            dr.Close();
            cm.Dispose();
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow r in dt.Rows)
                {
                    DataSensor d = new DataSensor();
                    d.t = DateTime.Parse( r["TimeBegin"].ToString());
                    d.v = double.Parse( r["value"].ToString());
                    L.Add(d);
                }
            }
            cn.Close();
            cn.Dispose();
            string json = JsonConvert.SerializeObject(L);
            this.Response.Write(json);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string action = Request["action"];
            switch (action)
            {
                case "load_all_sv":
                    load_all_sv();
                    break;
                case "xoa_1_sv":
                    xoa_1_sv();
                    break;
                case "data_chart":
                    data_chart();
                    break;
            }
        }
    }
}