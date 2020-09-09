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

                TextBox8.Text = Session["employeeID"].ToString();
                Session.Remove("employeeID");

                { 

                    using (con)

                    {

                        TextBox8.Enabled = false;
                        TextBox8.BorderColor = Color.Blue;
                        TextBox8.ForeColor = Color.Black;
                        SqlCommand cmd = new SqlCommand("SELECT userName, emailID,  description ,phoneNumber FROM UserTable WHERE employeeID =@employeeID");
                        cmd.Parameters.AddWithValue("@employeeID", TextBox8.Text);


                        cmd.CommandType = CommandType.Text;

                        cmd.Connection = con;

                        con.Open();

                        SqlDataReader sdr = cmd.ExecuteReader();

                        {

                            sdr.Read();

                            TextBox1.Text = sdr["userName"].ToString();

                            TextBox2.Text = sdr["emailID"].ToString();

                            TextBox3.Text = sdr["description"].ToString();
                            TextBox7.Text = sdr["phoneNumber"].ToString();
                           

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
                cmd1.CommandText = "select * from UserTable where password=@cp"; /*COLLATE Latin1_general_CS_AS = @cp"*/
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
                SqlCommand cmd = new SqlCommand("UPDATE  UserTable SET password=@newpassword where password=@cp", con);

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
       
        protected void Button1_Click(object sender, EventArgs e)
        {
          


            con.Open();
            SqlCommand cmd2 = new SqlCommand("update UserTable set userName=@username,emailID=@nickname, description =@bio,phoneNumber=@phone where employeeID=@userid", con);

            cmd2.Parameters.AddWithValue("username", TextBox1.Text);
            cmd2.Parameters.AddWithValue("nickname", TextBox2.Text);
            cmd2.Parameters.AddWithValue("bio", TextBox3.Text);
            cmd2.Parameters.AddWithValue("phone", TextBox7.Text);
            cmd2.Parameters.AddWithValue("userid", TextBox8.Text);



            cmd2.ExecuteNonQuery();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('changed sucessfully');</script>");





            con.Close();

        



        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
          

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