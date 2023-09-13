using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web_cong_nhanh
{
    public partial class api : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                double A = double.Parse(this.Request["a"]);
                double B = double.Parse(this.Request["b"]);

                MathTool.Cong x = new MathTool.Cong();
                double c = x.Cong2So(A, B);

                this.Response.Write(c.ToString());
            }catch (Exception ex)
            {
                this.Response.Write("Lỗi rồi ông ơi: "+ex.Message);
            }
        }
    }
}