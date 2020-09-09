using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.IO;
using System.Configuration;

namespace So_Ciao_Network
{
    public partial class imageUPTrial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Label1.Visible = false;
                Label2.Visible = false;
                HyperLink1.Visible = false;
                HyperLink2.Visible = false;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpPostedFile postedFile = FileUpload1.PostedFile;
            string fileName = Path.GetFileName(postedFile.FileName);
            string fileExtension = Path.GetExtension(fileName);
            if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".bmp" || fileExtension.ToLower() == ".gif" || fileExtension.ToLower() == ".png")
            {
                Stream stream = postedFile.InputStream;
                BinaryReader binaryReader = new BinaryReader(stream);
                byte[] bytes = binaryReader.ReadBytes((int)stream.Length);
                string cs = "Data Source=DESKTOP-A4JGJGG\\SQLEXPRESS;Initial Catalog=Trial;Integrated Security=True";
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("spUploadImage", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlParameter paraName = new SqlParameter()
                    {
                        ParameterName = "@postID",
                        Value = 2
                    };
                    cmd.Parameters.Add(paraName);
                    SqlParameter paraImageData = new SqlParameter()
                    {
                        ParameterName = "@picture",
                        Value = bytes
                    };
                    cmd.Parameters.Add(paraImageData);
                    SqlParameter paraNewId = new SqlParameter()
                    {
                        ParameterName = "@ImgID",
                        Value = -1,
                        Direction = ParameterDirection.Output
                    };
                    cmd.Parameters.Add(paraNewId);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Label1.Visible = true;
                    Label1.Text = "Upload Success!!";
                    //HyperLink1.Visible = true;
                    //HyperLink1.NavigateUrl = "~/sampleimageupload1.aspx?Id=" + cmd.Parameters["@ImgID"].Value.ToString();
                }
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "File format not supported";
                HyperLink1.Visible = false;
            }

        }
        protected void Button2_Click1(object sender, EventArgs e)
        {
            HttpPostedFile postedFile = FileUpload2.PostedFile;
            string fileName = Path.GetFileName(postedFile.FileName);
            string fileExtension = Path.GetExtension(fileName);
            if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".bmp" || fileExtension.ToLower() == ".gif" || fileExtension.ToLower() == ".png")
            {
                Stream stream = postedFile.InputStream;
                BinaryReader binaryReader = new BinaryReader(stream);
                byte[] bytes = binaryReader.ReadBytes((int)stream.Length);
                string cs = "Data Source=DESKTOP-A4JGJGG\\SQLEXPRESS;Initial Catalog=Trial;Integrated Security=True";
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("uploadDP", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlParameter paraName = new SqlParameter()
                    {
                        ParameterName = "@employeeID",
                        Value = 1003
                    };
                    cmd.Parameters.Add(paraName);
                    SqlParameter paraImageData = new SqlParameter()
                    {
                        ParameterName = "@profilePic",
                        Value = bytes
                    };
                    cmd.Parameters.Add(paraImageData);
                    SqlParameter paraNewId = new SqlParameter()
                    {
                        ParameterName = "@picID",
                        Value = -1,
                        Direction = ParameterDirection.Output
                    };
                    cmd.Parameters.Add(paraNewId);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Label2.Visible = true;
                    Label2.Text = "Upload Success!!";
                    //HyperLink1.Visible = true;
                    //HyperLink1.NavigateUrl = "~/sampleimageupload1.aspx?Id=" + cmd.Parameters["@ImgID"].Value.ToString();
                }
            }
            else
            {
                Label2.Visible = true;
                Label2.Text = "File format not supported";
                HyperLink1.Visible = false;
            }

        }
    }
}