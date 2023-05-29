using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eyewareShoppingSite
{
    public partial class adminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1Admin_Click(object sender, EventArgs e)
        {
            Session["admin"] = TextBox1.Text;
            if(TextBox1.Text=="adminLenskart" && TextBox2.Text=="Lenskart55")
            {
                Response.Redirect("adminWelcome.aspx");
            }
            else
            {
                Response.Write("<script>alert('You enter Wrong admin details');</script>");
            }
        }
    }
}
