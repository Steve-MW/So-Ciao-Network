using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace So_Ciao_Network
{
    public partial class uploadDP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpPostedFile
postedFile =
FileUpload1.PostedFile;


            string
            fileName =
            Path.GetFileName(postedFile.FileName);


            string
            fileExtension =
            Path.GetExtension(fileName);


            if (fileExtension.ToLower()
            == ".jpg"
            || fileExtension.ToLower()
            == ".bmp"
            || fileExtension.ToLower()
            == ".gif"
            || fileExtension.ToLower()
            == ".png")


            {


                Stream
                stream = postedFile.InputStream;


                BinaryReader
                binaryReader =
                new BinaryReader(stream);


                byte[]
                bytes = binaryReader.ReadBytes((int)stream.Length);


                string
                cs = "Data Source=LAPTOP-AD6HQC8P;Initial Catalog=sociao;Integrated Security=True";


                using (SqlConnection
                con =
                new SqlConnection(cs))


                {


                    SqlCommand
                    cmd = new
                    SqlCommand("uploadDP",
                    con);


                    cmd.CommandType = CommandType.StoredProcedure;




                    SqlParameter
                    paraName =
                    new SqlParameter()


                    {


                        ParameterName
                    = "@employeeID",


                        Value
                    = 1000


                    };


                    cmd.Parameters.Add(paraName);


                    SqlParameter
                    paraImageData =
                    new SqlParameter()


                    {


                        ParameterName
                    = "@profilePic",


                        Value
                    = bytes


                    };


                    cmd.Parameters.Add(paraImageData);








                    con.Open();


                    cmd.ExecuteNonQuery();


                    con.Close();


                    Label1.Visible
                    = true;


                    Label1.Text
                    = "Upload Success!!";
                }
            }
            else
            {
                Label1.Text = "Not supported";
            }
            }
        }

    }

