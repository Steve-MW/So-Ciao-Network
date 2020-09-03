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
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-AD6HQC8P;Initial Catalog=project1;Integrated Security=True");
        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();

            string newpassword = TextBox5.Text;
            string confirmpassword = TextBox6.Text;
            string cp = TextBox4.Text;




            //if (newpassword == confirmpassword)
            //{

            SqlCommand cmd = new SqlCommand("UPDATE  setting SET cp=@newpassword where cp=@cp", con);
            cmd.Parameters.AddWithValue("newpassword", TextBox5.Text);
            cmd.Parameters.AddWithValue("cp", TextBox4.Text);
            cmd.ExecuteNonQuery();


            //}
            //    else
            //    {
            //        Label1.Visible = true;
            //        Label1.Text = "password incorrect check the password";

            //    }
            //}

            //catch
            //{

            //}

            con.Close();
        }
        
        //// SqlCommand cmd = new SqlCommand("update [setting] set[cp]='"+np+"' where cp='"+cp+"'"),con;
        protected void Button1_Click(object sender, EventArgs e)
        {

        }

    }
}