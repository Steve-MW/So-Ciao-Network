using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace So_Ciao_Network
{
    public class chatList
    {
        public string chatName { get; set;  }
        public string chatText { get; set; }
        public string Dp { get; set; }

    }
    public partial class WebForm13 : System.Web.UI.Page
    {
        SqlConnection newCon = new SqlConnection(@"Data Source=LAPTOP-AD6HQC8P;Initial Catalog=sociao;Integrated Security=True");
        public string employeeName, DpDisplayString; 
        int seshVar = 1000;
         public List<chatList> newChat = new List<chatList>();
        public string[] temp = new string[100];
        public string[] temp2 = new string[100];
        protected void Page_Load(object sender, EventArgs e)
        {
            newCon.Open();
            List<chatList> newChatTemp = this.newChat;
            chatList obj = new chatList();
            String chatName;
            SqlDataAdapter newAdapt = new SqlDataAdapter("select employeeName from UserTable where employeeID = " + seshVar.ToString(), newCon);
            DataSet UserData = new DataSet();
            newAdapt.Fill(UserData);
            employeeName = UserData.Tables[0].Rows[0].ItemArray[0].ToString();

            SqlCommand DpRetrive = new SqlCommand("getDpByID", newCon);
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

            DataSet chatData = new DataSet();
            newAdapt = new SqlDataAdapter("select chatID, employeeId, chatEmp from chatBox where employeeID = " + seshVar.ToString(), newCon);
            newAdapt.Fill(chatData);

            foreach ( DataRow oneRow in chatData.Tables[0].Rows)
            {

                SqlDataAdapter newAdapt2 = new SqlDataAdapter("select employeeName from UserTable where employeeID = " + oneRow.ItemArray[2].ToString(), newCon);
                UserData = new DataSet();
                newAdapt.Fill(UserData);
                //obj.chatName = UserData.Tables[0].Rows[0].ItemArray[0].ToString();
                temp[0] = UserData.Tables[0].Rows[0].ItemArray[0].ToString();

                SqlCommand DpListRetreive = new SqlCommand("getDpByID", newCon);
                DpListRetreive.CommandType = CommandType.StoredProcedure;

                SqlParameter IdList = new SqlParameter()
                {
                    ParameterName = "@Id",
                    Value = seshVar
                };

                DpListRetreive.Parameters.Add(IdList);
                byte[] DpList = (byte[])DpListRetreive.ExecuteScalar();
                string DpString64Retreive = Convert.ToBase64String(DpList);

                temp2[0] = "data:Image/png;base64," + DpString64Retreive;
                //obj.Dp = "data:Image/png;base64," + DpString64Retreive;
                //newChatTemp.Add(obj);
            }

            newCon.Close();

        }
    }
}