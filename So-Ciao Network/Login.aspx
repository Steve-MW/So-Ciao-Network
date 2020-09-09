<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="So_Ciao_Network.WebForm5" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>Setup from</title>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
  
    <link rel="stylesheet" type="text/css" href="~/css/style.css"/>
    <link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700,800&display=swap" rel="stylesheet"/>
    <style>
body {
  font-family: 'Lato', sans-serif;
}
.overlay {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: rgb(0,0,0);
  background-color: rgba(0,0,0, 0.9);
  overflow-x: hidden;
  transition: 0.5s;
}
.overlay-content {
  position: relative;
  top: 25%;
  width: 100%;
 text-align:center;
  margin-top: 30px;
 
}
.overlay-con{
    margin-left:255px;
}
.change{
    color:white;
}
.change:hover{
    color:red;
}
.overlay a {
  padding: 8px;
  text-decoration: none;
  font-size: 36px;
  color: #818181;
  display: block;
  transition: 0.3s;
}
.overlay a:hover, .overlay a:focus {
  color: #f1f1f1;
}
.overlay .closebtn {
  position: absolute;
  top: 20px;
  right: 45px;
  font-size: 60px;
}
@media screen and (max-height: 450px) {
  .overlay a {font-size: 20px}
  .overlay .closebtn {
  font-size: 40px;
  top: 15px;
  right: 35px;
  }
}
</style>
     <style type="text/css">
         .auto-style1 {
             margin-left: 47px;
             margin-bottom: 0;
         }
         .auto-style3 {
             margin-left: 62px;
         }
         .auto-style4 {
             height: 53px;
         }
         .auto-style11 {
             height: 19px;
         }
         .auto-style12 {
             height: 39px;
             margin-top: 17px;
             width: 225px;
         }
         .auto-style13 {
             width: 259px;
         }
         .auto-style14 {
             height: 39px;
             margin-top: 8px;
             width: 86%;
         }
         .auto-style15 {
             height: 36px;
             width: 233px;
         }
       
     </style>
</head>
<body>
    <form id="form1" runat="server">
       <div class="cont">
        <div class="form sign-in" style="left: 0px; top: 0px; width: 499px; height: 101%">
            <h2>&nbsp;Sign In</h2>
            <p>&nbsp;</p>
            <label class="auto-style13">
                <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Employee ID</span>&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style1" Width="181px" TextMode="Number" ></asp:TextBox>
            <br />
            </label>
            <label class="auto-style4">

                <span>&nbsp;&nbsp;&nbsp; Password</span><br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style3" Width="151px" TextMode="Password" Height="19px"></asp:TextBox>
            &nbsp;<br />
            <br />

            <br />
            &nbsp;</label><%--<button class="submit" type="button">--%><%--<button type="submit" name="button1" value="activate" class="submit">Sign in</button>--%>&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Sign In" class="submit"  Width="260px" Height="42px"  ForeColor="White" OnClick="Button1_Click"/>
            <br />
            <div id="myNav" class="overlay">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <div class="overlay-content">     
      <asp:Label ID="Label2" runat="server" Text="Enter your Email Id "  ForeColor="White" Font-size="Larger"></asp:Label>
      <br />
      <br />
      <br />
      <div class="overlay-con">
      <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style1" Width="181px"  TextMode="Email" BorderColor="white" ForeColor="White" ></asp:TextBox>
      </div>
          <br />
      <br />      
      <div class="change">
      <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Medium"  OnClick="LinkButton1_Click" Font-Bold="true" >Send password</asp:LinkButton><br />
          </div>
      <asp:Label ID="Label3" runat="server" Font-color="Green" Font-Size="Small" Font-Bold="true" ></asp:Label>
       </div>    
                </div>
            <div class="forgot-pass">
<span style="font-size:15px;cursor:pointer" onclick="openNav()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Forget password</span>
                </div>
<script>
    function openNav() {
        document.getElementById("myNav").style.width = "64%";
    }
    function closeNav() {
        document.getElementById("myNav").style.width = "0%";
    }
</script>
            <%--<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager> --%>
            <%--<p class="auto-style10"><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Forgot Password?</asp:LinkButton></p>--%>
         <%--   <ajaxtoolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="Panl1" TargetControlID="LinkButton1" CancelControlID="Button2" BackgroundCssClass="Background" BehaviorID="close"></ajaxtoolkit:ModalPopupExtender>  
            <asp:Panel ID="Panl1" runat="server" CssClass="Popup" align="center" style = "display:none">  
            <iframe style=" width: 352px; height: 300px;" id="irm1" src="forgetpass.aspx" runat="server"></iframe>  
                
            <br/>--%>

               <%-- <asp:Button ID="Button3" runat="server" Text="Back to login" />
            <%--</asp:Panel>  --%>

           <%-- <div class="social-media">
                <ul>
                    <li><img src="images/facebook.png"/></li>
                    <li><img src="images/twitter.png"/></li>
                    <li><img src="images/linkedin.png"/></li>
                    <li><img src="images/instagram.png"/></li>
                </ul>
            </div>--%>
        </div>

        <div class="sub-cont">
            <div class="img">
                <div class="img-text m-up" style="left: 0px; top: 9px; height: 58px; bottom: 947px; width: 99%;">
                    <h2 class="auto-style11">New here?</h2>
                    <p class="auto-style15"><b>Sign up and discover great amount of new opportunities!</b></p>
                </div>
                <div class="img-text m-in" style="left: 0; top: 101px; height: 0px">
                    <h2 class="auto-style14">One of us?</h2>
                    <p class="auto-style12"><b>If you already has an account, just sign in. We've missed you!</b></p>
                </div>
                <div class="img-btn">

                    <span class="m-up" style="left: 0; top: 1px; height: 96%">Setup Account</span>
                    <span class="m-in">Sign In</span>

                </div>
            </div>
            <div class="form sign-up">
                <h2>Setup Account</h2>
                 <label>
                    <span>Profile Picture</span>
                   <%-- <input type="file" />--%>
                    <%-- <asp:TextBox ID="TextBox6" runat="server"  ></asp:TextBox> --%>     
                     <asp:FileUpload ID="FileUpload1" runat="server" />
                </label>
               <%-- <div class="submit2">
                     <asp:Button ID="Button3" runat="server" Text="Upload"  ForeColor="White" />
                </div>--%>
                 <label>
                    <span>Employee ID</span>
                    <asp:TextBox ID="TextBox7" runat="server" TextMode="Number" ></asp:TextBox>
                     <asp:Label ID="Label4" runat="server" ></asp:Label>
                </label>
                <label>
                    <span>Username</span>
                  <%--  <input type="text"/>--%>
                    <asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox>                   
                </label>
                <label>
                    <span>Email</span>
                    <%--<input type="email"/>--%>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Email" ></asp:TextBox>
                </label>
                <label>
                    <span>Password</span>
                  <%--  <input type="password"/>--%>
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
                </label>
                <%--<label>
                    <span>Confirm Password</span>
                    <%--<input type="password"/>--%>
                    <%--<asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
                </label>--%>
                <%--<button type="submit" name="button2" value="activate" class="submit">Sign Up Now</button>--%>
               <div class="submit1">
                <asp:Button ID="Button2" runat="server" Text="Sign Up Now" OnClick="Button2_Click" ForeColor="White"/>
               </div>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </div>
        </div>
    </div>

    <script type="text/javascript" src="js/script.js"></script>
    </form>
</body>
</html>
 

