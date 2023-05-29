using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace eyewareShoppingSite
{
    public partial class adminUpdate : System.Web.UI.Page
    {
        int productID1;
        protected void Page_Load(object sender, EventArgs e)
        {

            if(!IsPostBack)
            {
                //if(Session["admin"]== null)
                //{
                //    Response.Redirect("adminLogin.aspx");
                //}
                Showproduct();
            }
        }

        public void Showproduct()
        {
            SqlConnection cnn;
            string connetionString;
            connetionString = @"Data Source=SQLLISTENER; Initial Catalog=DIT-Training; Integrated Security=True; User ID=sa; Password=Chaitu@123";
            cnn = new SqlConnection(connetionString);
            SqlDataAdapter sda = new SqlDataAdapter("Select * from chaitanya_eyewearadminproduct", cnn);

            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string Cname = DropDownList1.SelectedValue.ToString();
            if(Cname == "Select Category")
            {
                Showproduct();
            }
            else
            {
                SqlConnection cnn;
                string connetionString;
                connetionString = @"Data Source=SQLLISTENER; Initial Catalog=DIT-Training; Integrated Security=True; User ID=sa; Password=Chaitu@123";
                cnn = new SqlConnection(connetionString);
                SqlDataAdapter sda = new SqlDataAdapter("'Select * from chaitanya_eyewearadminproduct where type = " + Cname + "'", cnn);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void GridView1_PageIndexChanging1(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            Showproduct();
        }

        protected void GridView1_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            DropDownList1.SelectedValue = "select category";
            Showproduct();
        }
        
        protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            int index = e.NewEditIndex;
            GridViewRow row = (GridViewRow)GridView1.Rows[index];
            Label productID = (Label)row.FindControl("Label1");
            productID1 = int.Parse(productID.Text.ToString());
            Session["prdtid1"] = productID1;
            SqlConnection cnn;
            string connetionString;
            connetionString = @"Data Source=SQLLISTENER; Initial Catalog=DIT-Training; Integrated Security=True; User ID=sa; Password=Chaitu@123";
            cnn = new SqlConnection(connetionString);
            SqlDataAdapter sda = new SqlDataAdapter("Select * from chaitanya_eyewearadminproduct where id = '" + productID1 + "'", cnn);

            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
        {
            int index = 0;
            GridViewRow row = (GridViewRow)GridView1.Rows[index];

            FileUpload fu;
            fu = (FileUpload)row.FindControl("FileUpload1");

            if (fu.HasFile)
            {
                Label id = (Label)row.FindControl("Label1");
                TextBox Name = (TextBox)row.FindControl("TextBox2");
                TextBox description = (TextBox)row.FindControl("TextBox3");
                TextBox price = (TextBox)row.FindControl("TextBox4");
                TextBox quantity = (TextBox)row.FindControl("TextBox5");
                string category = ((DropDownList)GridView1.Rows[e.RowIndex].Cells[6].FindControl("DropDownList2")).Text;

                fu.SaveAs(Server.MapPath("~/imagesEyewear/") + Path.GetFileName(fu.FileName));
                string image = "imagesEyewear/" + Path.GetFileName(fu.FileName);

                SqlConnection cnn;
                string connetionString;
                connetionString = @"Data Source=SQLLISTENER; Initial Catalog=DIT-Training; Integrated Security=True; User ID=sa; Password=Chaitu@123";
                cnn = new SqlConnection(connetionString);
                cnn.Open();
                SqlCommand cmd = new SqlCommand("update chaitanya_eyewearadminproduct set name=@1, size=@2, image=@3, price=@4,rating=@5 ,type=@6 where id=@7", cnn);
                cmd.Parameters.AddWithValue("@1", Name.Text);
                cmd.Parameters.AddWithValue("@2", description.Text);
                cmd.Parameters.AddWithValue("@3", image);
                cmd.Parameters.AddWithValue("@4", price.Text);
                cmd.Parameters.AddWithValue("@5", quantity.Text);
                cmd.Parameters.AddWithValue("@6", category);
                cmd.Parameters.AddWithValue("@7", id.Text);
                cmd.ExecuteNonQuery();
                cnn.Close();
                GridView1.EditIndex = -1;
                Response.Write("<script>alert('Product Updated Successfully');</script>");
                Showproduct();
                DropDownList1.SelectedValue = "eye glasses";
            }
            else
            {
                Response.Write("<script>alert('Please Select Product Image');</script>");

            }
        }
    }
}