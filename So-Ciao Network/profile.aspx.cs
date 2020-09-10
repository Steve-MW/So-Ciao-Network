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
    public partial class WebForm7 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=ARTHYBHEL;Initial Catalog=So-Ciao;Integrated Security=True");
        public string profile;
        public post p;
        public List<post> ls = new List<post>();
        public int count;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["eid"] = 1001;
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter("select employeeName,userName,emailID,designation,userDescription,closeFriends,noOfPost from UserTable where employeeID=" + Session["eid"], con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            SqlCommand profilepic = new SqlCommand("getDpByID", con);
            profilepic.CommandType = CommandType.StoredProcedure;
            
            SqlParameter Id = new SqlParameter()
            {
                ParameterName = "@Id",
                Value = Session["eid"]

            };
            profilepic.Parameters.Add(Id);
            byte[] Dp = (byte[])profilepic.ExecuteScalar();
            string DpString64 = Convert.ToBase64String(Dp);
            profile = "data:Image/png;base64," + DpString64;

            SqlDataAdapter getpost = new SqlDataAdapter("select postID,postDescription,noOfLikes,noOfComments,postDate from Post where employeeID="+Session["eid"], con);
            DataSet postdata = new DataSet();
            getpost.Fill(postdata);

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

            
           
            for(int i=0;i<postdata.Tables[0].Rows.Count;i++)
            {
                p = new post();
                p.postID = Convert.ToInt32(postdata.Tables[0].Rows[i].ItemArray[0]);
                p.postDescription = postdata.Tables[0].Rows[i].ItemArray[1].ToString();
                p.no_of_likes =Convert.ToInt32(postdata.Tables[0].Rows[i].ItemArray[2]);
                p.no_of_comments = Convert.ToInt32(postdata.Tables[0].Rows[i].ItemArray[3]); ;
                p.dateOfPost = Convert.ToDateTime(postdata.Tables[0].Rows[i].ItemArray[4]);
                con.Open();
                SqlCommand postpic = new SqlCommand("getPostByID", con);
                profilepic.CommandType = CommandType.StoredProcedure;

                SqlParameter ID = new SqlParameter()
                {
                    ParameterName = "@Id",
                    Value = p.postID

                };
                postpic.Parameters.Add(ID);
                byte[] postimg = (byte[])postpic.ExecuteScalar();
                string postString64 = Convert.ToBase64String(postimg);
                p.picture= "data:Image/png;base64," + postString64;
                con.Close();
                this.ls.Add(p);
            }
            count = ls.Count;

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("settings.aspx");
        }
    }
}