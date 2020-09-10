using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.OleDb;

namespace So_Ciao_Network
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=ARTHYBHEL;Initial Catalog=So-Ciao;Integrated Security=True");
        public string profile;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["eid"] = 1001;
            Session["profile"] = 1002;
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter("select employeeName,userName,emailID,designation,userDescription,closeFriends,noOfPost from UserTable where employeeID=" + Session["profile"], con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            SqlCommand profilepic = new SqlCommand("getDpByID", con);
            profilepic.CommandType = CommandType.StoredProcedure;

            SqlParameter Id = new SqlParameter()
            {
                ParameterName = "@Id",
                Value = Session["profile"]

            };
            profilepic.Parameters.Add(Id);
            byte[] Dp = (byte[])profilepic.ExecuteScalar();
            string DpString64 = Convert.ToBase64String(Dp);
            profile = "data:Image/png;base64," + DpString64;
            
            con.Close();
            userEntity u = new userEntity();
            u.empID = Convert.ToInt32(Session["eid"]);
            u.empName = ds.Tables[0].Rows[0].ItemArray[0].ToString();
            u.username = ds.Tables[0].Rows[0].ItemArray[1].ToString();
            u.email = ds.Tables[0].Rows[0].ItemArray[2].ToString();
            u.designation = ds.Tables[0].Rows[0].ItemArray[3].ToString();
            u.bio = ds.Tables[0].Rows[0].ItemArray[4].ToString();
            u.no_of_frnds = Convert.ToInt32(ds.Tables[0].Rows[0].ItemArray[5]);
            u.no_of_posts = Convert.ToInt32(ds.Tables[0].Rows[0].ItemArray[6]);

            Label1.Text = u.empName;
            Label2.Text = u.designation;
            Label3.Text = u.email;
            Label4.Text = u.username;
            Label5.Text = u.no_of_posts.ToString();
            Label6.Text = u.no_of_frnds.ToString();
            Label7.Text = u.bio;

            SqlDataAdapter ad1 = new SqlDataAdapter("Select disticnt(friendID) from closeFriends where employeeID=" + Session["eid"],con);
            DataSet ds1 = new DataSet();
            ad1.Fill(ds1);
            for( int i=0;i<ds1.Tables[0].Rows.Count;i++)
            {
                int f = Convert.ToInt32(ds.Tables[0].Rows[i].ItemArray[0].ToString());
                if (f == (int)Session["profile"])
                {
                    Button2.Text = "Close Friend";
                }
            }    
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("chat.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Button2.Text != "Close Friend")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into closeFriends values(10,@empid,@friendid)", con);
                cmd.Parameters.AddWithValue("@empid", Convert.ToInt32(Session["eid"]));
                cmd.Parameters.AddWithValue("@friendid", Convert.ToInt32(Session["profile"]));
                cmd.ExecuteNonQuery();
                SqlCommand cmd1 = new SqlCommand("update UserTable set closeFriends= closeFriends+1 where employeeID=" + Session["eid"], con);
                SqlCommand cmd2 = new SqlCommand("update UserTable set closeFriends= closeFriends+1 where employeeID=" + Session["profile"], con);
                cmd1.ExecuteNonQuery();
                cmd2.ExecuteNonQuery();
                con.Close();
                //d.addfriend(Session["eid"].ToString(), Session["profile"].ToString());
                Button2.Text = "Close Friend";
            }
        }
    }
}