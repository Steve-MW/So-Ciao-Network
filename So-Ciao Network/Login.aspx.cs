using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.IO;
using System.Net.Mail;
using System.Net;
using System.Data.OleDb;

namespace So_Ciao_Network
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

            protected void LinkButton1_Click(object sender, EventArgs e)
            {


                string userName = "";
                string password = "";
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-AD6HQC8P;Initial Catalog=project1;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select userName, password from UserTable where emailID=@emailID", con);
                cmd.Parameters.AddWithValue("emailID", TextBox6.Text);
                con.Open();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {

                    if (sdr.Read())
                    {
                        userName = sdr["userName"].ToString();
                        password = sdr["password"].ToString();

                    }

                }
                con.Close();
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("sociao.echo@gmail.com");
                msg.To.Add(TextBox6.Text);
                msg.Subject = " Recover your Password";
                msg.Body = ("Your Username is:" + userName + "<br/><br/>" + "Your Password is:" + password);
                msg.IsBodyHtml = true;
                SmtpClient smt = new SmtpClient();
                smt.Host = "smtp.gmail.com";
                //    smt.UseDefaultCredentials = false;
                System.Net.NetworkCredential ntwd = new NetworkCredential();
                ntwd.UserName = "sociao.echo@gmail.com"; //Your Email ID  
                ntwd.Password = "sociao2020"; // Your Password  
                smt.UseDefaultCredentials = true;
                smt.Credentials = ntwd;
                smt.Port = 587;
                smt.EnableSsl = true;
                smt.Send(msg);
                Label3.Text = "Username and Password Sent Successfully";
                Label3.ForeColor = System.Drawing.Color.ForestGreen;
            }

            protected void Button1_Click(object sender, EventArgs e)
            {


                string strcon = @"Data Source=LAPTOP-AD6HQC8P;Initial Catalog=project1;Integrated Security=True";
                SqlConnection con = new SqlConnection(strcon);
                string sql = "SELECT * FROM UserTable  WHERE employeeID = @employeeID AND Password = @password";
                SqlCommand com = new SqlCommand(sql, con);
                SqlParameter p1 = new SqlParameter("employeeID", TextBox1.Text);
                SqlParameter p2 = new SqlParameter("password", TextBox2.Text);
                com.Parameters.Add(p1);
                com.Parameters.Add(p2);
                con.Open();
                SqlDataReader rd = com.ExecuteReader();
                if (rd.HasRows)
                {
                    rd.Read();
                Response.Redirect("mainfeed.aspx");

                //Session["employeeID"] = TextBox1.Text;
                //Server.Transfer("chat.aspx");
                //Response.Redirect("webform4.aspx");
            }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Incorrect Employee ID or Password');</script>");
                }
                TextBox1.Text = "";
                TextBox2.Text = "";
            }

            protected void Button2_Click(object sender, EventArgs e)
            {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-AD6HQC8P;Initial Catalog=project1;Integrated Security=True"); con.Open();
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = "select * from UserTable where employeeID=@employeeID";
                cmd1.Parameters.AddWithValue("@employeeID", TextBox7.Text);
                cmd1.Connection = con;
                SqlDataReader rd = cmd1.ExecuteReader();
                if (rd.HasRows)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Employee ID is Taken.Choose another one');</script>");
                    Label4.Text = "Employeeid already taken";
                    Label4.ForeColor = System.Drawing.Color.Red;
                    TextBox7.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    TextBox5.Text = "";
                }
                else
                {

                    Label4.Text = "Employee id availbale";
                    Label4.ForeColor = System.Drawing.Color.Green;
                    con.Close();
                    if (FileUpload1.HasFile)
                    {
                        string strname = FileUpload1.FileName;
                        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/upload/") + strname);
                        string image = strname.ToString();
                        con.Open();
                        SqlCommand cmd = new SqlCommand("insert into  UserTable (employeeID,userName,emailID,password) values('" + TextBox7.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')", con);

                        cmd.CommandType = CommandType.Text;

                        cmd.ExecuteNonQuery();
                        con.Close();
                        con.Open();
                        Random r = new Random();
                        int num = r.Next();
                        SqlCommand cmd2 = new SqlCommand("insert into DP(picID,employeeID,profilePic) values(" + num + ",'" + TextBox7.Text + "','" + image + "')", con);
                        cmd2.CommandType = CommandType.Text;
                        cmd2.ExecuteNonQuery();
                        con.Close();



                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Setting up account successful.');</script>");

                        TextBox7.Text = "";
                        TextBox3.Text = "";
                        TextBox4.Text = "";
                        TextBox5.Text = "";

                    }
                }
            }
        }
}