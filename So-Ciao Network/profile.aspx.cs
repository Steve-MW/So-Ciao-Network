using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace So_Ciao_Network
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //DAL d = new DAL();
            //user cls = new user();
            //cls = d.getdetails(Session["userid"].ToString());
            //Label1.Text = cls.empName;
            //Label2.Text = cls.designation;
            //Label3.Text = cls.email;
            //Label4.Text = cls.username;
            //Label5.Text = cls.no_of_posts.ToString();
            //Label6.Text = cls.no_of_frnds.ToString();
            //Label7.Text = cls.bio;

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("settings.aspx");
        }
    }
}