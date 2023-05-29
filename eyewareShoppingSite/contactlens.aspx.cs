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
    public partial class contactlens : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["addproduct"] = "false";
            if (Session["username"] != null)
            {
                sample.Text = "Hii, " + Session["username"].ToString();
            }
            else
            {
                sample.Text = "SignIn/Signup";
            }
        }
        
        protected void Unnamed_Click(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click1(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Session["addproduct"] = "true";
            if (e.CommandName == "AddtoCart")
            {
                Response.Redirect("https://localhost:44320/addCart.aspx?id=" + e.CommandArgument.ToString());

            }
        }

        protected void sample_Click(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Write("<script>alert('Please login your account first')</script>");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cnn;
            string connetionString;
            connetionString = @"Data Source=SQLLISTENER; Initial Catalog=DIT-Training; Integrated Security=True; User ID=sa; Password=Chaitu@123";
            cnn = new SqlConnection(connetionString);
            SqlDataAdapter sda = new SqlDataAdapter("select * from chaitanya_eyewearadminproduct where (name like '%" + TextBox1.Text + "%') or (id like '%" + TextBox1.Text + "%') or (brand like '%" + TextBox1.Text + "%')", cnn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            DataList1.DataSourceID = null;
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        protected void Unnamed_Click2(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Write("<script>alert('Please login your account first')</script>");
            }
            else
            {
                Response.Redirect("OrderList.aspx");
            }
        }
    }
}