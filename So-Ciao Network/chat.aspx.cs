using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.EnterpriseServices;

namespace So_Ciao_Network
{
    public partial class WebForm6 : System.Web.UI.Page
    {




        SqlConnection Con = new SqlConnection("Data Source=DESKTOP-A4JGJGG\\SQLEXPRESS;Initial Catalog=Trial;Integrated Security=True");
        public int currUser = 1001;
        public int sendUserID, recvUserID;
        public string sendUser, recvUser;
        public string chatID, messageText;



        protected void Page_Load(object sender, EventArgs e)
        {
            Con.Open();
            SqlDataAdapter newAdapt = new SqlDataAdapter("Select chatID, employeeID, chatEmp from chatBox where employeeID = " + currUser.ToString(), Con);
            DataSet newData = new DataSet();
            newAdapt.Fill(newData);
            // must do for each 
            chatID = newData.Tables[0].Rows[0].ItemArray[0].ToString();
            sendUserID = Convert.ToInt32(newData.Tables[0].Rows[0].ItemArray[1]);
            recvUserID = Convert.ToInt32(newData.Tables[0].Rows[0].ItemArray[2]);

            SqlDataAdapter newAdapt2 = new SqlDataAdapter("select messageText from messageList where chatID =" + chatID, Con);
            DataSet newData2 = new DataSet();
            newAdapt2.Fill(newData2);

            messageText = newData2.Tables[0].Rows[0].ItemArray[0].ToString();

            SqlDataAdapter newAdapt3 = new SqlDataAdapter("select userName from UserTable where employeeID =" + recvUserID.ToString(), Con);
            DataSet newData3 = new DataSet();
            newAdapt3.Fill(newData3);
            recvUser = newData3.Tables[0].Rows[0].ItemArray[0].ToString();

            SqlDataAdapter newAdapt4 = new SqlDataAdapter("select userName from UserTable where employeeID =" + sendUserID.ToString(), Con);
            DataSet newData4 = new DataSet();
            newAdapt4.Fill(newData4);
            sendUser = newData4.Tables[0].Rows[0].ItemArray[0].ToString();


            Con.Close();


            Con.Open();
            SqlDataAdapter newAdapt1 = new SqlDataAdapter("Select chatID, employeeID, chatEmp from chatBox where employeeID = " + currUser.ToString(), Con);
            DataSet newData1 = new DataSet();
            newAdapt.Fill(newData);
            // must do for each 
            chatID = newData.Tables[0].Rows[1].ItemArray[0].ToString();
            sendUserID = Convert.ToInt32(newData.Tables[0].Rows[0].ItemArray[1]);
            recvUserID = Convert.ToInt32(newData.Tables[0].Rows[0].ItemArray[2]);

            SqlDataAdapter newAdapt7 = new SqlDataAdapter("select messageText from messageList where chatID =" + chatID, Con);
            DataSet newData7 = new DataSet();
            newAdapt2.Fill(newData2);

            messageText = newData2.Tables[0].Rows[0].ItemArray[0].ToString();

            SqlDataAdapter newAdapt6 = new SqlDataAdapter("select userName from UserTable where employeeID =" + recvUserID.ToString(), Con);
            DataSet newData46= new DataSet();
            newAdapt3.Fill(newData3);
            recvUser = newData3.Tables[0].Rows[0].ItemArray[0].ToString();

            SqlDataAdapter newAdapt5 = new SqlDataAdapter("select userName from UserTable where employeeID =" + sendUserID.ToString(), Con);
            DataSet newData5 = new DataSet();
            newAdapt4.Fill(newData4);
            sendUser = newData4.Tables[0].Rows[0].ItemArray[0].ToString();





        }
    }
}