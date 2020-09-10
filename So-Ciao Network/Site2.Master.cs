using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace So_Ciao_Network
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        //SqlConnection newConnect = new SqlConnection(@"Data Source=DESKTOP-A4JGJGG\SQLEXPRESS;Initial Catalog=Trial;Integrated Security=True");
        SqlConnection newConnect = new SqlConnection("Data Source=ARTHYBHEL;Initial Catalog=So-Ciao;Integrated Security=True");
        int seshVar = 1001;
        public string employeeName, designation;
        DataSet userData = new DataSet();
        DataSet DpData = new DataSet();
        DataSet postData = new DataSet();
        public string DpDisplayString;
        protected void Page_Load(object sender, EventArgs e)
        {

            newConnect.Open();
            SqlDataAdapter newAdater = new SqlDataAdapter("select employeeName, designation from UserTable where employeeID = " + seshVar.ToString(), newConnect);
            newAdater.Fill(userData);
            employeeName = userData.Tables[0].Rows[0].ItemArray[0].ToString();
            designation = userData.Tables[0].Rows[0].ItemArray[1].ToString();

            SqlCommand DpRetrive = new SqlCommand("getDpByID", newConnect);
            DpRetrive.CommandType = CommandType.StoredProcedure;

            SqlParameter Id = new SqlParameter()
            {
                ParameterName = "@Id",
                Value = seshVar

            };
            DpRetrive.Parameters.Add(Id);
            byte[] Dp = (byte[])DpRetrive.ExecuteScalar();
            string DpString64 = Convert.ToBase64String(Dp);

            DpDisplayString = "data:Image/png;base64," + DpString64;


            newConnect.Close();
        }
    }
}