using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Globalization;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Threading.Tasks; 

namespace eyewareShoppingSite
{
    public partial class adminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2A_Click(object sender, EventArgs e)
        {
            if (TextBox5.Text.Length == 0 || TextBox2.Text.Length == 0 || TextBox4.Text.Length == 0 || TextBox5.Text.Length==0 || TextBox6.Text.Length==0 || TextBox7.Text.Length==0)
            {
                Response.Write("<script>alert('Please Enter Valid Details!!!')</script>");
            }
            else
            {
                SqlConnection cnn;
                string connetionString;
              //  SqlCommand comm;
                connetionString = @"Data Source=SQLLISTENER; Initial Catalog=DIT-Training; Integrated Security=True; User ID=sa; Password=Chaitu@123";
                cnn = new SqlConnection(connetionString);
                cnn.Open();
                if (FileUpload1.HasFile)
                {
                    String FileName = FileUpload1.PostedFile.FileName;
                    String FilePath = "imagesEyewear/" + FileUpload1.FileName;
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/imagesEyewear/") + FileName);
                    int price = Convert.ToInt32(TextBox5.Text);
                    double rating = Convert.ToDouble(TextBox6.Text);
                    int review = Convert.ToInt32(TextBox7.Text);

                    SqlCommand cmd = new SqlCommand("chaitanya_eyewearadminproduct_insert", cnn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@name", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@type",DropDownList1.SelectedValue);
                    cmd.Parameters.AddWithValue("@price", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@image", FilePath);
                    cmd.Parameters.AddWithValue("@original", price);
                    cmd.Parameters.AddWithValue("@rating", rating);
                    cmd.Parameters.AddWithValue("@review", review);
                    cmd.Parameters.AddWithValue("@size", DropDownList2.SelectedValue);
                    cmd.Parameters.AddWithValue("@brand", DropDownList3.SelectedValue);
                    cmd.Parameters.AddWithValue("@stock", TextBox8.Text);

                    Response.Write("<script>alert('successfully inserted the data')</script>");
                    cmd.ExecuteNonQuery();
                    cnn.Close();
                }
            }
        }
    }
}
