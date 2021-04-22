using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eVoting
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

              
      
        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("kaydol.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("oylama.aspx");
        }
    }
}