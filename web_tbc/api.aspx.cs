using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web_tbc
{
    public partial class api : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                double A = double.Parse(this.Request["a"]);
                double B = double.Parse(this.Request["b"]);
                double C = double.Parse(this.Request["c"]);

                double kq = (A + B + C) / 3.0;

                this.Response.Write(kq.ToString());
            }
            catch (Exception ex)
            {
                this.Response.Write("Error: " + ex.Message);
            }
        }
    }
}