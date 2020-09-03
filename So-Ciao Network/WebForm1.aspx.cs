using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.OleDb;


namespace So_Ciao_Network
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-AD6HQC8P;Initial Catalog=project1;Integrated Security=True");
        protected void Button2_Click(object sender, EventArgs e)
        {
           
        }
        //// SqlCommand cmd = new SqlCommand("update [setting] set[cp]='"+np+"' where cp='"+cp+"'"),con;
        protected void Button1_Click(object sender, EventArgs e)
        {

        }

    }
}