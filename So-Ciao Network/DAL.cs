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
        SqlConnection con = new SqlConnection(@"Data Source=ARTHYBHEL;Initial Catalog=Arthy555;Integrated Security=True");
        public user getdetails(string empid)
        {
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter("select employeeName,userName,emailID,designation,description,closeFriends,noOfPost from UserTable where employeeID=" + empid, con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            con.Close();
            user u = new user();
            u.empID = empid;
            u.empName = ds.Tables[0].Rows[0].ItemArray[0].ToString();
            u.username = ds.Tables[0].Rows[0].ItemArray[1].ToString();
            u.email = ds.Tables[0].Rows[0].ItemArray[2].ToString();
            u.designation = ds.Tables[0].Rows[0].ItemArray[3].ToString();
            u.bio = ds.Tables[0].Rows[0].ItemArray[4].ToString();
            u.no_of_frnds = Convert.ToInt32(ds.Tables[0].Rows[0].ItemArray[5]);
            u.no_of_posts = Convert.ToInt32(ds.Tables[0].Rows[0].ItemArray[6]);
            return u;

        }
        public string getid(string name)
        {
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter("select employeeID from UserTable where employeeName=" + name, con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            con.Close();
            string empno = ds.Tables[0].Rows[0].ItemArray[0].ToString();
            return empno;
        }
        public void addfriend(string empid, string friendid)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into closeFriends values('10',@empid,@friendid)", con);
            cmd.Parameters.AddWithValue("@empid", Convert.ToInt32(empid));
            cmd.Parameters.AddWithValue("@friendid", Convert.ToInt32(friendid));
            cmd.ExecuteNonQuery();
            SqlCommand cmd1 = new SqlCommand("update UserTable set closeFriends= closeFriends+1 where employeeID=" + empid, con);
            SqlCommand cmd2 = new SqlCommand("update UserTable set closeFriends= closeFriends+1 where employeeID=" + friendid, con);
            cmd1.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            con.Close();
        }
        public int searchfrnd(string empid, string friendid)
        {
            int flag = 0;
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter("Select disticnt(friendid) from closeFriends where employeeID=" + empid, con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            con.Close();
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                string f = ds.Tables[0].Rows[i].ItemArray[0].ToString();
                if (f == friendid)
                    flag = 1;
            }
            return flag;
        }
    }
}