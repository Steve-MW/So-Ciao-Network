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
    public partial class sampleimageupload1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = "Data Source=DESKTOP-A4JGJGG\\SQLEXPRESS;Initial Catalog=Trial;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("spGetImageById", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter paramId = new SqlParameter()
                {
                    ParameterName = "@Id",
                    Value = Request.QueryString["Id"]
                };
                cmd.Parameters.Add(paramId);
                con.Open();
                byte[] bytes = (byte[])cmd.ExecuteScalar();
                string strBase64 = Convert.ToBase64String(bytes);
                Image1.ImageUrl = "data:Image/png;base64," + strBase64;

            }
        }

    }

}