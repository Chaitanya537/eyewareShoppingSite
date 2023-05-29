using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace eyewareShoppingSite
{
    public partial class addCart : System.Web.UI.Page
    {      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                sample.Text = "Hii, " + Session["username"].ToString();
            }
            else
            {
                sample.Text = "SignIn/Signup";
            }

            if (!IsPostBack)
            {
                if (Session["username"] == null)
                {
                    Response.Redirect("loginPage.aspx");
                }
                
                Session["addproduct"] = "false";
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("sid");
                dt.Columns.Add("pname");
                dt.Columns.Add("image");
                dt.Columns.Add("description");
                dt.Columns.Add("amount");
                dt.Columns.Add("price");
                dt.Columns.Add("total");
                dt.Columns.Add("op");
                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {
                        dr = dt.NewRow();
                        SqlConnection cnn;
                        string connetionString;
                        connetionString = @"Data Source=SQLLISTENER; Initial Catalog=DIT-Training; Integrated Security=True; User ID=sa; Password=Chaitu@123";
                        cnn = new SqlConnection(connetionString);
                        SqlDataAdapter da = new SqlDataAdapter("select * from chaitanya_eyewearadminproduct where id=" + Request.QueryString["id"], cnn);
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        //dr["sno"] = 1;
                        dr["sno"] = Request.QueryString["id"];
                        dr["image"] = ds.Tables[0].Rows[0]["image"].ToString();
                        dr["description"] = "\n" + ds.Tables[0].Rows[0]["name"].ToString() + " ~\n " + ds.Tables[0].Rows[0]["type"].ToString() + " ~\t " + ds.Tables[0].Rows[0]["size"].ToString() + " ~\n " + ds.Tables[0].Rows[0]["brand"].ToString();
                        dr["price"] = " Lenskart Price : " + ds.Tables[0].Rows[0]["price"].ToString() + "Original Price : " + ds.Tables[0].Rows[0]["originalPrice"].ToString();
                        dr["pname"] = ds.Tables[0].Rows[0]["name"].ToString();
                        dr["amount"] = ds.Tables[0].Rows[0]["price"];

                        int p = Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                        int op = Convert.ToInt32(ds.Tables[0].Rows[0]["originalPrice"].ToString());
                        dr["total"] = p;
                        dr["op"] = op;

                        dt.Rows.Add(dr);

                        connetionString = @"Data Source=SQLLISTENER; Initial Catalog=DIT-Training; Integrated Security=True; User ID=sa; Password=Chaitu@123";
                        cnn = new SqlConnection(connetionString);
                        cnn.Open();
                        SqlCommand cmd = new SqlCommand("insert into [chaitanya_eyewearCartitems] values(" + dr["sno"] + ",'" + dr["pname"] + "','" + dr["image"] + "'," + dr["total"] + "," + dr["op"] + ",'" + Session["email"] + "','" + ds.Tables[0].Rows[0]["type"].ToString() + "','" + ds.Tables[0].Rows[0]["size"].ToString() + "','" + ds.Tables[0].Rows[0]["brand"].ToString() + "','Null')", cnn);
                        cmd.ExecuteNonQuery();
                        cnn.Close();                    
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        Button1.Enabled = true;

                        TextBox2.Text = grandtotal().ToString();
                        //Response.Redirect("https://localhost:44320/addCart.aspx");
                    }
                    else
                    {
                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        SqlConnection cnn;
                        string connetionString;
                        connetionString = @"Data Source=SQLLISTENER; Initial Catalog=DIT-Training; Integrated Security=True; User ID=sa; Password=Chaitu@123";
                        cnn = new SqlConnection(connetionString);
                        SqlDataAdapter da = new SqlDataAdapter("select * from chaitanya_eyewearadminproduct where id=" + Request.QueryString["id"], cnn);
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        //dr["sno"] = sr + 1;
                        dr["sno"] = Request.QueryString["id"];
                        dr["image"] = ds.Tables[0].Rows[0]["image"].ToString();
                        dr["description"] = "\n" + ds.Tables[0].Rows[0]["name"].ToString() + " ~\n " + ds.Tables[0].Rows[0]["type"].ToString() + " ~\t " + ds.Tables[0].Rows[0]["size"].ToString() + " ~\n " + ds.Tables[0].Rows[0]["brand"].ToString();
                        dr["price"] = " Lenskart Price : " + ds.Tables[0].Rows[0]["price"].ToString() + " Original Price : " + ds.Tables[0].Rows[0]["originalPrice"].ToString();
                        dr["pname"] = ds.Tables[0].Rows[0]["name"].ToString();
                        dr["amount"] = ds.Tables[0].Rows[0]["price"];
                       
                        int p = Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                        int op = Convert.ToInt32(ds.Tables[0].Rows[0]["originalPrice"].ToString());
                        dr["total"] = p;
                        dr["op"] = op;

                        dt.Rows.Add(dr);

                        connetionString = @"Data Source=SQLLISTENER; Initial Catalog=DIT-Training; Integrated Security=True; User ID=sa; Password=Chaitu@123";
                        cnn = new SqlConnection(connetionString);
                        cnn.Open();
                        SqlCommand cmd = new SqlCommand("insert into [chaitanya_eyewearCartitems] values(" + dr["sno"] + ",'" + dr["pname"] + "','" + dr["image"] + "'," + dr["total"] + "," + dr["op"] + ",'" + Session["email"] + "','" + ds.Tables[0].Rows[0]["type"].ToString() + "','" + ds.Tables[0].Rows[0]["size"].ToString() + "','" + ds.Tables[0].Rows[0]["brand"].ToString() + "','Null')", cnn);
                        cmd.ExecuteNonQuery();
                        cnn.Close();

                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        Button1.Enabled = true;
                        
                        // GridView1.FooterRow.Cells[5].Text = "Total Amount";

                        TextBox2.Text = grandtotal().ToString();
                        //Response.Redirect("https://localhost:44320/addCart.aspx");
                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    if (GridView1.Rows.Count > 0)
                    {
                        //  GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        TextBox2.Text = grandtotal().ToString();
                    }
                }
            }
            string OrderDate = DateTime.Now.ToShortDateString();
            Session["Orderdate"] = OrderDate;
            orderid();
        }

        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int originalprice = 0;
            int totalprice = 0;
            while (i < nrow)
            {
                totalprice = totalprice + Convert.ToInt32(dt.Rows[i]["total"].ToString());
                originalprice = originalprice + Convert.ToInt32(dt.Rows[i]["op"].ToString());
                i = i + 1;
            }
            Session["originalprice"] = originalprice;
            Session["Lprice"] = totalprice;
            Label2.Text = Convert.ToString(originalprice);
            Label3.Text = Convert.ToString(originalprice - totalprice);
            Label4.Text = Convert.ToString(totalprice);
            Label5.Text = "0";
            Label6.Text = Convert.ToInt32(totalprice).ToString();
            return totalprice;
        }

        public void orderid()
        {
            string alpha = "abCdefgHijklMNopqRstuvWxyz123456789";
            Random r = new Random();
            char[] myArray = new char[5];
            for (int i = 0; i < 5; i++)
            {
                myArray[i] = alpha[(int)(35 * r.NextDouble())];

            }
            string orderid;
            orderid = "Order_Id" + DateTime.Now.Hour.ToString() + DateTime.Now.Day.ToString()
                + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(myArray) + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
            Session["Orderid"] = orderid;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];

            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);

                if (sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();

                    SqlConnection cnn;
                    string connetionString;
                    connetionString = @"Data Source=SQLLISTENER; Initial Catalog=DIT-Training; Integrated Security=True; User ID=sa; Password=Chaitu@123";
                    cnn = new SqlConnection(connetionString);
                    cnn.Open();
                        SqlCommand cmd = new SqlCommand("delete from chaitanya_eyewearCartitems where sno = '" + cell.Text + "' and email = '" + Session["email"] + "'", cnn);
                    cmd.ExecuteNonQuery();
                    cnn.Close();
                    break;
                }
            }

            for (int i = 1; i <= dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["sno"] = i;
                dt.AcceptChanges();
            }   
            Session["buyitems"] = dt;
            Response.Redirect("https://localhost:44320/addCart.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            DataTable dt;
            dt = (DataTable)Session["buyitems"];
            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                if (Session["username"] == null)
                {
                    Response.Redirect("https://localhost:44320/loginPage.aspx");
                }
                else
                {
                    SqlConnection cnn;
                    string connetionString;
                    int nrow = dt.Rows.Count;

                  
                    while (i < nrow)
                    {
                        connetionString = @"Data Source=SQLLISTENER; Initial Catalog=DIT-Training; Integrated Security=True; User ID=sa; Password=Chaitu@123";
                        cnn = new SqlConnection(connetionString);
                        cnn.Open();

                        SqlCommand cmd = new SqlCommand("insert into [chaitanya_eyewearorders] values('" + Session["orderid"] + "'," + dt.Rows[i]["sno"] +  ",'" + dt.Rows[i]["pname"] + "'," + dt.Rows[i]["amount"] + ",'" + dt.Rows[i]["image"] + "','" + Session["Orderdate"] + "','NULL','" + Session["email"] + "')", cnn);
                        cmd.ExecuteNonQuery();
                        cnn.Close();
                        i = i + 1;
                    }
                   
                    if (GridView1.Rows.Count.ToString() == "0")
                    {
                        Response.Write("<script>alert('Your Cart is Empty. You cannot place an Order')</script>");
                    }
                    else
                    {
                        Response.Redirect("https://localhost:44320/adressPage.aspx");
                    }
                }
            }
        }

        protected void sample_Click(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
           
        }

        protected void Unnamed_Click1(object sender, EventArgs e)
        {
            if(Session["email"] == null)
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
