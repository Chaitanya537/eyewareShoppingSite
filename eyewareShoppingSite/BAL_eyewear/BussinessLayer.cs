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
using System.Net.Mail;
using eyewareShoppingSite.DAL_eyewear;

namespace eyewareShoppingSite.BAL_eyewear
{
    public class BussinessLayer
    {
        private static bool IsValid(string email)
        {
            var valid = true;

            try
            {
                var emailAddress = new MailAddress(email);
            }
            catch
            {
                valid = false;
            }
            return valid;
        }

        public int signup(string fname,string lname, string num,string mail, string passd, string gold)
        {
            int r = 0;
            int gd = 0;
            bool ck;
            try
            {
                if (num == null || num.Length!=10)
                {
                    return 2;
                }
                else if(mail==null)
                {
                    return 3;
                }
                else if(passd==null)
                {
                    return 4;
                }
                else if (!IsValid(mail))
                {
                    return 3;
                }
                else
                {
                    if(gold == "LenskartLucky500")
                    {
                        gd = 1;
                    }
                    else
                    {
                        gd = 0;
                    }
                    DataLayer obj1 = new DataLayer();
                    r = obj1.signupinsert(fname,lname,num, mail, passd, gd);
                }

            }
            catch (Exception er1)
            {
                return 2;
            }
            return 0;
        }

        public int signin(string mail, string passd)
        {
            int t = 0;
            string connetionString;
            SqlCommand comm;
            SqlDataReader dreader;
            SqlConnection cnn;
            connetionString = @"Data Source=SQLLISTENER; Initial Catalog=DIT-Training; Integrated Security=True; User ID=sa; Password=Chaitu@123";
            cnn = new SqlConnection(connetionString);
            cnn.Open();

            comm = new SqlCommand("EXEC chaitanya_eyewear_login " + "'" + mail + "'" + "," + "'" + passd + "'", cnn);
            dreader = comm.ExecuteReader();

            while (dreader.Read())
            {
                int temp = 0;
                temp = temp + 1;
                if (dreader.GetValue(0).ToString().Trim() == mail || dreader.GetValue(1).ToString().Trim() == mail)
                {
                    if (dreader.GetValue(2).ToString().Trim() == passd)
                    {
                        t = 2;
                    }
                    else
                    {
                        t = 3;
                    }
                    break;
                }
                else
                {
                    t = 4;
                    break;
                }
            }
            return t;
        }

    }
}