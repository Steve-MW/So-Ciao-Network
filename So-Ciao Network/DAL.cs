using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Data.OleDb;


namespace So_Ciao_Network
{
    public class DAL
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-A4JGJGG\SQLEXPRESS;Initial Catalog=Trial;Integrated Security=True");
        
        public userEntity getdetails(int empid)
        {
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter("select employeeName,userName,emailID,designation,userDescription,closeFriends,noOfPost,phoneNumber from UserTable where employeeID=" + empid, con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            con.Close();
            userEntity u = new userEntity();
            u.empID = empid;
            u.empName = ds.Tables[0].Rows[0].ItemArray[0].ToString();
            u.username = ds.Tables[0].Rows[0].ItemArray[1].ToString();
            u.email = ds.Tables[0].Rows[0].ItemArray[2].ToString();
            u.designation = ds.Tables[0].Rows[0].ItemArray[3].ToString();
            u.bio = ds.Tables[0].Rows[0].ItemArray[4].ToString();
            u.no_of_frnds = Convert.ToInt32(ds.Tables[0].Rows[0].ItemArray[5]);
            u.no_of_posts = Convert.ToInt32(ds.Tables[0].Rows[0].ItemArray[6]);
            u.phoneNumber = ds.Tables[0].Rows[0].ItemArray[7].ToString();
            return u;

        }


    }
}