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
    public partial class OrdersList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   
            if(!IsPostBack)
            {
                SqlConnection cnn;
                string connetionString;
                connetionString = @"Data Source=SQLLISTENER; Initial Catalog=DIT-Training; Integrated Security=True; User ID=sa; Password=Chaitu@123";
                cnn = new SqlConnection(connetionString);
                SqlDataAdapter sda = new SqlDataAdapter("select * from chaitanya_eyewearorders where email = '" + Session["email"] + "'", cnn);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                DataList1.DataSourceID = null;
                DataList1.DataSource = dt;
                DataList1.DataBind();

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cnn;
            string connetionString;
            connetionString = @"Data Source=SQLLISTENER; Initial Catalog=DIT-Training; Integrated Security=True; User ID=sa; Password=Chaitu@123";
            cnn = new SqlConnection(connetionString);
            SqlDataAdapter sda = new SqlDataAdapter("select * from chaitanya_eyewearorders where email = '" + Session["email"] + "' and (productname like '%" + TextBox1.Text + "%') or (orderid like '%" + TextBox1.Text + "%') or (date like '%" + TextBox1.Text + "%')", cnn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            DataList1.DataSourceID = null;
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            
        }
        protected void command(object source, DataListCommandEventArgs e)
        {
           

        }
        protected void Button3_Click(object sender, EventArgs e)
        {
             
        }

        protected void Button3_Command(object sender, CommandEventArgs e)
        {
            string st, value="";
            if (e.CommandName == "canelOrder")
            {
                string oid = e.CommandArgument.ToString();
                foreach (DataListItem item in DataList1.Items)
                {
                    Label label = item.FindControl("Label5") as Label;
                    Label labelid = item.FindControl("Label2") as Label;
                    st = labelid.Text;
                    if (st == oid)
                    {
                        value = label.Text;
                        // Use the value as needed
                        break; // Exit the loop after the first match is found
                    }
                }

               // Label tt= (Label)DataList1.Items[][e.CommandArgument.ToString()].FindControl("Label5");
                //st = tt.Text;
                if (value == "delivered")
                {
                    Response.Write("<script>alert('Your Order is Delivered, you cannot cancel now')</script>");
                }
                else
                {
                    SqlConnection cnn;
                    string connetionString;
                    connetionString = @"Data Source=SQLLISTENER; Initial Catalog=DIT-Training; Integrated Security=True; User ID=sa; Password=Chaitu@123";
                    cnn = new SqlConnection(connetionString);
                    SqlDataAdapter sda = new SqlDataAdapter("delete from chaitanya_eyewearorders where orderid= '" + e.CommandArgument.ToString() + "'", cnn);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    DataList1.DataSourceID = null;
                    DataList1.DataSource = dt;
                    DataList1.DataBind();
                    cnn.Close();
                    Response.Write("<script>alert('Successfully, your product is cancelled')</script>");
                }                       
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection cnn;
            string connetionString;
            connetionString = @"Data Source=SQLLISTENER; Initial Catalog=DIT-Training; Integrated Security=True; User ID=sa; Password=Chaitu@123";
            cnn = new SqlConnection(connetionString);
            SqlDataAdapter sda = new SqlDataAdapter("select * from chaitanya_eyewearorders where email = '" + Session["email"] +"'", cnn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            DataList1.DataSourceID = null;
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
    }
}
