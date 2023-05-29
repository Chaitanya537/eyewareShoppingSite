using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using eyewareShoppingSite.BAL_eyewear;


namespace eyewareShoppingSite
{
    public partial class registrationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed5_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Response.Redirect("", true);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int res = 0;
                if (fnameBox.Text.Length > 2)
                {
                    if (lnameBox.Text.Length == 0)
                    {
                        lnameBox.Text = null;
                    }
                    if (referalBox.Text.Length == 0)
                    {
                        referalBox.Text = "NULL";
                    }
                    BussinessLayer ob = new BussinessLayer();
                    res = ob.signup(fnameBox.Text, lnameBox.Text , numberBox.Text, mailBox.Text.Trim(), passwordBox.Text, referalBox.Text);
                }
                else
                {
                    res = 1;
                }


                if (res == 0)
                {
                    Response.Write("<script>alert('SuccessFully Created Account !!!')</script>");
                    Response.Redirect("https://localhost:44320/loginPage.aspx", true);
                }
                    
                else if (res == 1)
                    Response.Write("<script>alert('Enter a Valid name ')</script>");
                else if(res==2)
                    Response.Write("<script>alert('Enter a Valid Number ')</script>");
                else if (res == 3)
                    Response.Write("<script>alert('Enter a Valid Email ID !!!')</script>");
                else if (res == 4)
                    Response.Write("<script>alert('Enter Valid Password ')</script>");
                else
                {
                    Response.Write("<script>alert('Please Enter Valid Details!!!')</script>");
                    //no code to execute;
                    res = 0;
                }
                fnameBox.Text = String.Empty;
                lnameBox.Text = String.Empty;
                numberBox.Text = String.Empty;
                mailBox.Text = String.Empty;
                passwordBox.Text = String.Empty;
                referalBox.Text = String.Empty;
               
            }
            catch (Exception e2)
            {
                Response.Write("<script>alert('exception is raised ')</script>");
            }
        }
    }
}