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
    public partial class payment : System.Web.UI.Page
    {
        string test = "noo";
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection cnn;
            string connetionString;
            SqlCommand comm;
            connetionString = @"Data Source=SQLLISTENER; Initial Catalog=DIT-Training; Integrated Security=True; User ID=sa; Password=Chaitu@123";
            cnn = new SqlConnection(connetionString);
            cnn.Open();
            comm = new SqlCommand("EXEC [chaitanya_eyewearAutofillPayment] '" + Session["email"] + "'", cnn);

            SqlDataReader da = comm.ExecuteReader();
            while (da.Read())
            {
                test = "ok";
                TextBox1.Text = da.GetValue(0).ToString();
                TextBox2.Text = da.GetValue(2).ToString();
                TextBox3.Text = da.GetValue(1).ToString();
                TextBox4.Text = da.GetValue(3).ToString();
                TextBox5.Text = da.GetValue(4).ToString();
            }
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            if(test == "noo")
            {
                if ((TextBox1.Text.Length == 0 || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == ""))
                {
                    Response.Write("<script>alert('Please fill the form completely and try again!!!')</script>");
                }
                else
                {
                    SqlConnection cnn;
                    string connetionString;
                    SqlCommand comm;
                    connetionString = @"Data Source=SQLLISTENER; Initial Catalog=DIT-Training; Integrated Security=True; User ID=sa; Password=Chaitu@123";
                    cnn = new SqlConnection(connetionString);
                    cnn.Open();

                    comm = new SqlCommand("EXEC chaitanya_eyewearPayment_procedure " + TextBox1.Text + ", '" + TextBox2.Text + "' , " + TextBox3.Text + ", '" + TextBox4.Text + "','" + TextBox5.Text + "'", cnn);
                    comm.ExecuteNonQuery();
                    Response.Write("<script>alert('Successfully inserted')</script>");
                    Response.Redirect("~/invoice.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('Successfully inserted')</script>");
                Response.Redirect("~/invoice.aspx");
            }
        }
    }
}
