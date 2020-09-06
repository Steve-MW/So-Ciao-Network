using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.OleDb;
using System.Drawing;

namespace So_Ciao_Network
{
   
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-AD6HQC8P;Initial Catalog=project1;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)

            {
                Label1.Visible = false;
                TextBox8.Text = Session["userid"].ToString();
                Session.Remove("userid");
                {


                    using (con)

                    {

                        TextBox8.Enabled = false;
                        TextBox8.BorderColor = Color.Blue;
                        TextBox8.ForeColor = Color.Black;
                        SqlCommand cmd = new SqlCommand("SELECT username, emailID,  description ,phonenumber FROM UserTal WHERE employeeid =@userid");
                        cmd.Parameters.AddWithValue("@userid", TextBox8.Text);


                        cmd.CommandType = CommandType.Text;

                        cmd.Connection = con;

                        con.Open();

                        SqlDataReader sdr = cmd.ExecuteReader();

                        {

                            sdr.Read();

                            TextBox1.Text = sdr["username"].ToString();

                            TextBox2.Text = sdr["emailID"].ToString();

                            TextBox3.Text = sdr["description"].ToString();
                            TextBox7.Text = sdr["phonenumber"].ToString();
                            //TextBox8.Text = sdr["nickname"].ToString();

                        }

                        con.Close();
                        TextBox1.Enabled = false;
                        TextBox2.Enabled = false;
                        TextBox3.Enabled = false;
                        TextBox7.Enabled = false;

                    }

                }

            }
        }


        protected void Button2_Click(object sender, EventArgs e)
        {

            string newpassword = TextBox5.Text;
            string confirmpassword = TextBox6.Text;
            string cp = TextBox4.Text;
            try
            {
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = "select * from Usertal where password=@cp"; /*COLLATE Latin1_general_CS_AS = @cp"*/
                cmd1.Parameters.AddWithValue("cp", TextBox4.Text);
                cmd1.Connection = con;


                con.Open();

                SqlDataReader rd = cmd1.ExecuteReader();

                if (rd.HasRows)
                {




                    Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('password changed sucessfully');</script>");
                    con.Close();

                }

                con.Open();
                SqlCommand cmd = new SqlCommand("UPDATE  UserTal SET password=@newpassword where password=@cp", con);

                cmd.Parameters.AddWithValue("newpassword", TextBox5.Text);
                cmd.Parameters.AddWithValue("cp", TextBox4.Text);
                cmd.ExecuteNonQuery();


            }
            catch
            {

                Label1.Visible = true;
                Label1.ForeColor = Color.Red;


                Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('password incorrect');</script>");

                Label1.Text = "password incorrect";
            }

            con.Close();













        }
        //// SqlCommand cmd = new SqlCommand("update [setting] set[cp]='"+np+"' where cp='"+cp+"'"),con;
        protected void Button1_Click(object sender, EventArgs e)
        {
            //try
            //{
            //    SqlCommand cmd1 = new SqlCommand();
            //    cmd1.CommandText = "select * from id where username=@username";
            //    cmd1.Parameters.AddWithValue("username", TextBox1.Text);
            //    cmd1.Parameters.AddWithValue("nickname", TextBox2.Text);
            //    cmd1.Connection = con;
            //    con.Open();

            //    SqlDataReader rd = cmd1.ExecuteReader();

            //    if (rd.HasRows)
            //    {




            //        Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('username already exist');</script>");


            //    }
            //    con.Close();



            con.Open();
            SqlCommand cmd2 = new SqlCommand("update UserTal set username=@username,emailID=@nickname, description =@bio,phonenumber=@phone where employeeid=@userid", con);

            cmd2.Parameters.AddWithValue("username", TextBox1.Text);
            cmd2.Parameters.AddWithValue("nickname", TextBox2.Text);
            cmd2.Parameters.AddWithValue("bio", TextBox3.Text);
            cmd2.Parameters.AddWithValue("phone", TextBox7.Text);
            cmd2.Parameters.AddWithValue("userid", TextBox8.Text);



            cmd2.ExecuteNonQuery();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('changed sucessfully');</script>");


            //}








            //catch
            //{




            con.Close();

            //}

            //TextBox1.Text = "";
            //TextBox2.Text = "";
            //TextBox3.Text = "";
            //TextBox7.Text = "";


            // Response.Redirect("webForm2.aspx");




        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //    con.Open();


            //    SqlCommand cmd2 = new SqlCommand("select * from id   where userid=" + int.Parse(TextBox8.Text), con);
            //    SqlDataReader dr = cmd2.ExecuteReader();
            //    if (dr.Read())
            //    {
            //        TextBox1.Text = (dr["username"].ToString());
            //        TextBox2.Text = (dr["nickname"].ToString());
            //        TextBox3.Text = (dr["bio"].ToString());
            //        TextBox7.Text = (dr["phone"].ToString());
            //    }
            //    //cmd2.Parameters.AddWithValue("username", TextBox1.Text);
            //    //    cmd2.Parameters.AddWithValue("nickname", TextBox2.Text);
            //    //cmd2.Parameters.AddWithValue("bio", TextBox3.Text);
            //    //cmd2.Parameters.AddWithValue("phone", TextBox7.Text);
            //    //cmd2.Parameters.AddWithValue("userid", TextBox8.Text);
            //    //cmd2.ExecuteNonQuery();
            //    con.Close();

            TextBox1.Enabled = true;
            TextBox2.Enabled = true;
            TextBox3.Enabled = true;
            TextBox7.Enabled = true;

        }
        protected void Button3_Click(object sender, EventArgs e)
        {
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {

        }
    }
}