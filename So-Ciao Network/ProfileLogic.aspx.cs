using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace So_Ciao_Network
{
    public partial class ProfileLogic : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int sessionVar = 1011;
            userEntity newObj = new userEntity();
            DAL newDal = new DAL();
            newObj = newDal.getdetails(sessionVar);

            Label1.Text = newObj.empName;
            Label2.Text = newObj.designation;
            Label3.Text = newObj.email;
            Label4.Text = newObj.username;
            Label5.Text = newObj.no_of_posts.ToString();
            Label6.Text = newObj.no_of_frnds.ToString();
            Label7.Text = newObj.bio;
            Label8.Text = newObj.phoneNumber;



        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}