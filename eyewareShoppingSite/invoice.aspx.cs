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
    public partial class invoice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Orderid = Session["Orderid"].ToString();
            Label1.Text = Orderid;
            findorderdate(Label2.Text);
            string address = Session["address"].ToString();
            Label3.Text = address;
            showgrid(Label1.Text);

            fillsavedcart();

        }
        public void findorderdate(string Orderid)
        {
            SqlConnection cnn;
            string connetionString;
            connetionString = @"Data Source=SQLLISTENER; Initial Catalog=DIT-Training; Integrated Security=True; User ID=sa; Password=Chaitu@123";
            cnn = new SqlConnection(connetionString);
            SqlCommand cmd = new SqlCommand("select * from [chaitanya_eyewearorders] where orderid = '" + Label1.Text + "'");
            cmd.Connection = cnn;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label2.Text = ds.Tables[0].Rows[0]["date"].ToString();
            }
            cnn.Close();
        }

        private void showgrid(String orderid)
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("OrderID");           
            dt.Columns.Add("productName");
            dt.Columns.Add("productPrice");
            dt.Columns.Add("productQuantity");
            dt.Columns.Add("TotalPrice");
            SqlConnection cnn;
            string connetionString;
            connetionString = @"Data Source=SQLLISTENER; Initial Catalog=DIT-Training; Integrated Security=True; User ID=sa; Password=Chaitu@123";
            cnn = new SqlConnection(connetionString);
            SqlCommand cmd = new SqlCommand("select * from [chaitanya_eyewearorders] where orderid = '" + Label1.Text + "'");
            cmd.Connection = cnn;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            int totalrows = ds.Tables[0].Rows.Count;
            int i = 0;
            int grandtotal = 0;
            while (i < totalrows)
            {
                dr = dt.NewRow();
                dr["OrderID"] = ds.Tables[0].Rows[i]["orderid"].ToString();
                dr["productName"] = ds.Tables[0].Rows[i]["productname"].ToString();
                dr["productPrice"] = ds.Tables[0].Rows[i]["price"].ToString();
                dr["productQuantity"] = "1";

                int price = Convert.ToInt32(ds.Tables[0].Rows[i]["price"].ToString());
                dr["TotalPrice"] = price;
                grandtotal = grandtotal + price;
                dt.Rows.Add(dr);
                

                SqlConnection cnn1;
                cnn1 = new SqlConnection(connetionString);
                cnn1.Open();
                SqlCommand cmd1 = new SqlCommand("update [chaitanya_eyewearadminproduct] set stock = stock-1 where id = '" + ds.Tables[0].Rows[i]["sno"].ToString() +"'", cnn1);
                cmd1.ExecuteNonQuery();
                cnn1.Close();

                SqlConnection cnn3;
                cnn3 = new SqlConnection(connetionString);
                cnn3.Open();
                SqlCommand cmd3 = new SqlCommand("update [chaitanya_eyewearorders] set status = 'pending' where orderid = '" + ds.Tables[0].Rows[i]["orderid"].ToString() + "'", cnn3);
              //  string s=
                cmd3.ExecuteNonQuery();
                cnn3.Close();

                i = i + 1;
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
            Label4.Text = grandtotal.ToString();

            SqlConnection cnn2;
            cnn2 = new SqlConnection(connetionString);
            cnn2.Open();
            SqlCommand cmd2 = new SqlCommand("delete from [chaitanya_eyewearadminproduct] where stock <= '" + 0 + "'", cnn2);
            cmd2.ExecuteNonQuery();
            cnn2.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        private void fillsavedcart()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];

            for (int i = 0; i <= dt.Rows.Count-1;)
            {
                int sr;
               
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
            
                dtdata = sr.ToString();

                dt.Rows[i].Delete();
                dt.AcceptChanges();

                SqlConnection cnn;
                string connetionString;
                connetionString = @"Data Source=SQLLISTENER; Initial Catalog=DIT-Training; Integrated Security=True; User ID=sa; Password=Chaitu@123";
                cnn = new SqlConnection(connetionString);
                cnn.Open();
                SqlCommand cmd = new SqlCommand("delete from chaitanya_eyewearCartitems where email = '" + Session["email"] + "'", cnn);
                cmd.ExecuteNonQuery();
                cnn.Close();
            }
        }
    }
}