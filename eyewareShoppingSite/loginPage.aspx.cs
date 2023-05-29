using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using eyewareShoppingSite.BAL_eyewear;

namespace eyewareShoppingSite
{
    public partial class loginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["username"] != null)
                {
                    Response.Redirect("homePage.aspx");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            int t = 0;
            BussinessLayer ob = new BussinessLayer();
            if (TextBox1.Text.Length > 0 && TextBox2.Text.Length > 0)
            {
                t = ob.signin(TextBox1.Text, TextBox2.Text);
            }
            if (t == 2)
            {
                Session["email"] = TextBox1.Text;
                Session["username"] = TextBox3.Text;
                Session["buyItems"] = null;
                fillsavedcart();
                Response.Redirect("https://localhost:44320/homePage.aspx", true);
            }
            else
            {
                Response.Write("<script>alert('Please enter a valid email/phone number and Password')</script>");
            }
        }

        protected void Button1Admin_Click(object sender, EventArgs e)
        {
            
        }

        private void fillsavedcart()
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            //dt.Columns.Add("sid");
            dt.Columns.Add("pname");
            dt.Columns.Add("image");
            dt.Columns.Add("description");
            dt.Columns.Add("amount");
            dt.Columns.Add("total");
            dt.Columns.Add("type");
            dt.Columns.Add("size");
            dt.Columns.Add("brand");
            dt.Columns.Add("price");
            dt.Columns.Add("op");

            string connec = "Data Source=SQLLISTENER;Initial Catalog=DIT-Training;Integrated Security=True";
            SqlConnection con1 = new SqlConnection(connec);
            string query = "select * from chaitanya_eyewearCartitems where Email='" + Session["email"].ToString() + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con1;
            SqlDataAdapter sda = new SqlDataAdapter();
            sda.SelectCommand = cmd;
            DataSet ds = new DataSet();
            sda.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                int i = 0;
                int counter = ds.Tables[0].Rows.Count;
                while (i < counter)
                {
                    dr = dt.NewRow();
                    dr["sno"] = ds.Tables[0].Rows[i]["sno"];
                    dr["pname"] = ds.Tables[0].Rows[i]["pname"].ToString();
                    dr["image"] = ds.Tables[0].Rows[i]["image"].ToString();
                    dr["amount"] = ds.Tables[0].Rows[i]["amount"];
                    dr["total"] = ds.Tables[0].Rows[i]["total"];         
                    dr["type"] = ds.Tables[0].Rows[i]["type"].ToString();
                    dr["size"] = ds.Tables[0].Rows[i]["size"].ToString();
                    dr["brand"] = ds.Tables[0].Rows[i]["brand"].ToString();
                    dr["description"] = "\n" + ds.Tables[0].Rows[0]["pname"].ToString() + " ~\n " + ds.Tables[0].Rows[0]["type"].ToString() + " ~\t " + ds.Tables[0].Rows[0]["size"].ToString() + " ~\n " + ds.Tables[0].Rows[0]["brand"].ToString();
                    dr["price"] = " Lenskart Price : " + ds.Tables[0].Rows[0]["amount"].ToString() + " Original Price : " + ds.Tables[0].Rows[0]["total"].ToString();

                    int p = Convert.ToInt32(ds.Tables[0].Rows[0]["amount"].ToString());
                    int op = Convert.ToInt32(ds.Tables[0].Rows[0]["total"].ToString());
                    dr["total"] = p;
                    dr["op"] = op;

                    dt.Rows.Add(dr);
                    i = i + 1;
                }
                Session["buyItems"] = dt;
            }
            else
            {
                Session["buyItems"] = null;
            }
            
        }
    }
}