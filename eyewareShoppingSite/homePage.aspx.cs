using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eyewareShoppingSite
{
    public partial class homePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"] != null)
            {
                signinButton.Text = "hii " + Session["username"].ToString() + "";
            }
            else
            {
               signinButton.Text = "SignIn/Signup";
            }
        }

        protected void Unnamed4_Click(object sender, EventArgs e)
        {

        }

        protected void Unnamed5_Click(object sender, EventArgs e)
        {
         
        }

        protected void Unnamed6_Click(object sender, EventArgs e)
        {

        }

        protected void Unnamed7_Click(object sender, EventArgs e)
        {

        }

        protected void Unnamed8_Click(object sender, EventArgs e)
        {

        }

        protected void Unnamed9_Click(object sender, EventArgs e)
        {

        }

        protected void Unnamed4_Click1(object sender, EventArgs e)
        {
            Response.Redirect("https://localhost:44320/eyeglasses.aspx", true);
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
           
        }

        protected void signinButton_Click(object sender, EventArgs e)
        {
            if(signinButton.Text!= "SignIn/Signup")
            {
                Session.Abandon();               
                Response.Write("<script>alert('Successfully!!! You are Logout from this Device')</script>");
                signinButton.Text = "SignIn/Signup";
            }
            else
            {
                Response.Redirect("loginPage.aspx");    
            }
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Response.Redirect("OrdersList.aspx");
            }
            else
            {
                Response.Write("<script>alert('Please login your account first ')</script>");
            }
        }
    }
}