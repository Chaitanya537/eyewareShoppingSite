using System;
using System.IO;
using System.Globalization;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eyewareShoppingSite.DAL_eyewear
{
    public class DataLayer
    {
        public int signupinsert(string fname, string lname, string num, string mail, string pass, int gd)
        {
            try
            {  
                SqlConnection cnn;
                string connetionString;
                SqlCommand comm;
                connetionString = @"Data Source=SQLLISTENER; Initial Catalog=DIT-Training; Integrated Security=True; User ID=sa; Password=Chaitu@123";
                cnn = new SqlConnection(connetionString);
                cnn.Open();

                comm = new SqlCommand("EXEC chaitanya_eyewear_insert " + "'" + fname + "'" + "," + "'" + lname + "'" + "," + "'" + num + "'" + "," + "'" + mail + "'" + "," + "'" + pass + "'" + "," + gd, cnn);
                comm.ExecuteNonQuery();
            }
            catch
            {
                return 5;
            }
            return 0;
        }

    }
}