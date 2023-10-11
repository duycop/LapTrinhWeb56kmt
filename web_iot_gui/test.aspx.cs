using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web_iot_gui
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = "[";
            for (int i = 1; i <= 10; i++)
            {
                //s += "<b>meci</b> <i>bocu " + i.ToString() + "</i><br>\n";
                s += $"{i},";
            }
            s += "]";
            Response.Write(s);  
        }
    }
}