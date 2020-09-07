using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace So_Ciao_Network
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DAL d = new DAL();
            user cls = new user();
            cls = d.getdetails(Session["profile"].ToString());
            Label1.Text = cls.empName;
            Label2.Text = cls.designation;
            Label3.Text = cls.email;
            Label4.Text = cls.username;
            Label5.Text = cls.no_of_posts.ToString();
            Label6.Text = cls.no_of_frnds.ToString();
            Label7.Text = cls.bio;
            int a = d.searchfrnd(Session["userid"].ToString(), Session["profile"].ToString());
            if (a == 1)
            {
                Button2.Text = "Close Friend";
            }
        }
        DAL d = new DAL();
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Button2.Text != "Close Friend")
            {
                d.addfriend(Session["userid"].ToString(), Session["profile"].ToString());
                Button2.Text = "Close Friend";
            }
        }
    }
}