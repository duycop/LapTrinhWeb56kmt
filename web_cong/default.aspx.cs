using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web_cong
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //code c# để cộng A và với B => kq show lên div id=ketqua

            //get input from web UI
            Double A = Double.Parse( TextBox1.Text);
            Double B = Double.Parse( TextBox2.Text);

            //call lib process data input -> output
            MathTool.Cong x = new MathTool.Cong();
            Double C = x.Cong2So(A, B);

            //bring output to web UI
            if(B>=0)
                ketqua.InnerHtml = $"<b><u>Kết quả</u></b>: {A}+{B} = {C}";
            else
                ketqua.InnerHtml = $"<b><u>Kết quả</u></b>: {A}{B} = {C}";
        }
    }
}