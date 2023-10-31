using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Runtime.Remoting.Contexts;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ThucHanh
{
    public partial class api : System.Web.UI.Page
    {
        void xuly_company(string action)
        {
            //khai báo biến db thuộc lớp SqlServer
            SqlServer db = new SqlServer();
            SqlCommand cm = db.GetCmd("SP_Company", action); //tạo cm với "SP_Company" và @action từ method GetCmd của db
            switch (action)
            {
                //2 loại này truyền 5 tham số chung
                case "add_company":
                case "edit_company":
                    cm.Parameters.Add("@name", SqlDbType.NVarChar, 255).Value = Request["name"];
                    cm.Parameters.Add("@address", SqlDbType.NVarChar, 255).Value = Request["address"];
                    cm.Parameters.Add("@lat", SqlDbType.Float).Value = Request["lat"];
                    cm.Parameters.Add("@lng", SqlDbType.Float).Value = Request["lng"];
                    cm.Parameters.Add("@phone", SqlDbType.VarChar, 10).Value = Request["phone"];
                    break;

            }
            switch (action)
            {
                //2 loại này cần thêm @id
                case "edit_company":
                case "delete_company":
                    cm.Parameters.Add("@id", SqlDbType.Int).Value = Request["id"];
                    break;
            }
            string json = (string)db.Scalar(cm); //thuc thi SqlCommand cm này để thu về json
            Response.Write(json); //trả json về trình duyệt
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string action = Request["action"];
            switch (action)
            {
                case "list_company":
                case "add_company":
                case "edit_company":
                case "delete_company":
                    xuly_company(action);
                    break;

            }
        }
    }
}