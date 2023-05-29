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
    public partial class WebForm2 : System.Web.UI.Page
    {
        string test = "noo";
        protected void Page_Load(object sender, EventArgs e)
        {
            int op = Convert.ToInt32(Session["originalprice"]);
            int lp = Convert.ToInt32(Session["Lprice"]);
            Label2.Text = Convert.ToString(op);
            Label3.Text = Convert.ToString(op - lp);
            Label4.Text = Convert.ToString(lp);
            Label5.Text = "0";
            Label6.Text = Convert.ToInt32(lp).ToString();

            SqlConnection cnn;
            string connetionString;
            SqlCommand comm;
            connetionString = @"Data Source=SQLLISTENER; Initial Catalog=DIT-Training; Integrated Security=True; User ID=sa; Password=Chaitu@123";
            cnn = new SqlConnection(connetionString);
            cnn.Open();
            comm = new SqlCommand("EXEC [chaitanya_eyewearAutofillAddress] '" +Session["email"] + "'" , cnn);

            SqlDataReader da = comm.ExecuteReader();
            while (da.Read())
            {
                test = "ok";
                TextBox1.Text = da.GetValue(0).ToString();
                TextBox2.Text = da.GetValue(1).ToString();
                TextBox3.Text = da.GetValue(3).ToString();
                TextBox3p5.Text = da.GetValue(4).ToString();
                TextBox4.Text = da.GetValue(5).ToString();
                TextBox5.Text = da.GetValue(6).ToString();
                if(da.GetValue(2).ToString().ToLower() == "male")
                {
                    RadioButton2.Checked = true;
                }
                else
                {
                    RadioButton1.Checked = true;
                }
            }
            
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if(test == "noo")
            {
                if ((TextBox1.Text.Length == 0 || TextBox2.Text == "" || TextBox3.Text == "" || TextBox3p5.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "" || TextBox7.Text.Length == 0))
                {
                    Response.Write("<script>alert('Please fill the form completely and try again!!!')</script>");
                }
                else if (TextBox6.SelectedValue == "  Country*" || TextBox7.SelectedValue == "  State*")
                {
                    Response.Write("<script>alert('Please select country and state details')</script>");
                }
                else
                {
                    SqlConnection cnn;
                    string connetionString;
                    SqlCommand comm;
                    connetionString = @"Data Source=SQLLISTENER; Initial Catalog=DIT-Training; Integrated Security=True; User ID=sa; Password=Chaitu@123";
                    cnn = new SqlConnection(connetionString);
                    cnn.Open();
                    string s1 = "";
                    if (RadioButton1.Checked == true)
                    {
                        s1 = "Male";

                    }
                    else
                    {
                        s1 = "Female";
                    }
                    comm = new SqlCommand("EXEC [chaitanya_eyewearaddress_insert] '" + TextBox1.Text + "' , '" + TextBox2.Text + "' , '" + s1 + " ' , ' " + TextBox3.Text + "' , '" + TextBox3p5.Text + "' , '" + TextBox4.Text + "' , '" + TextBox5.Text + "' , '" + TextBox6.Text + "' , '" + TextBox7.Text + "'", cnn);
                    Response.Write("<script>alert('Successfully inserted')</script>");
                    comm.ExecuteNonQuery();

                    Session["address"] = TextBox4.Text;
                    Response.Redirect("https://localhost:44320/payment.aspx");
                }
            }
            else
            {
                if ((TextBox1.Text.Length == 0 || TextBox2.Text == "" || TextBox3.Text == "" || TextBox3p5.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "" || TextBox7.Text.Length == 0))
                {
                    Response.Write("<script>alert('Please fill the form completely and try again!!!')</script>");
                }
                else if (TextBox6.SelectedValue == "  Country*" || TextBox7.SelectedValue == "  State*")
                {
                    Response.Write("<script>alert('Please select country and state details')</script>");
                }
                else
                {
                    Session["address"] = TextBox4.Text;
                    Response.Redirect("https://localhost:44320/payment.aspx");
                }
             
            }
        }
    }
}
