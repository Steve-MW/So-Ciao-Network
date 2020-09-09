<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="settings.aspx.cs" Inherits="So_Ciao_Network.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
@import url("https://fonts.googleapis.com/cs?family=Nunito:400,900|Montserrant|Roboto");

body {
    background: -webkit-linear-gradient(left, #0c0101, #0c95c8);
    overflow-x: hidden;
}

.container {
    background: #ffffff;
    width: 540px;
    height: 458px;
    margin: 0 auto;
    position: relative;
    margin-top: 5%;
    box-shadow: 0 19px 38px rgba(0, 0, 0, 0.30), 0 15px 12px rgba(0, 0, 0, 0.22);
}

.leftbox {
    float: left;
    top: -5%;
    left: 5%;
    position: absolute;
    width: 15%;
    height: 110%;
    background: -webkit-linear-gradient(left, #0c0101, #0c95c8);
    box-shadow: 1px 1px 1px rgba(119,119,119,.5);
    border: .1em solid #ffffff;
}

nav a {
    list-style: none;
    padding: 30px;
    color: #ffffff;
    font-size: 1em;
    display: block;
    transition: all .3s ease-in-out;
}

    nav a:hover {
        color: #000000;
        cursor: pointer;
        transform: scale(1.2);
    }

    nav a:first-child {
        margin-top: 7px;
    }

    nav a.active {
        color: #000000;
    }

.rightbox {
    width: 60%;
    margin-left: 27%;
    padding-top: 5px;
}

.tabshow {
    transition: all .5s ease-in;
    width: 80%;
}

h1 {
    font-family: "NUnito",sans-serif;
    color: #7ed386;
    font-size: 1.2rem;
    margin-top: 40px;
    margin-bottom: 35px;
}

h2 {
    color: #777;
    font-family: "NUnito",sans-serif;
    text-transform: uppercase;
    font-size: 8px;
    letter-spacing: 1px;
    margin-left: 7px;
    margin-top: 10px;
}

.input, p {
    border: 0;
    border-bottom: 1px solid #042331;
    width: 80%;
    font-family: "NUnito",sans-serif;
    font-size: 1em;
    padding: 2px 0;
    color: #042331;
    outline: none;
}

.button1 {
    font-family: "NUnito",sans-serif;
    text-transform: lowercase;
    font-size: 10px;
    border:1em;
    color: #042331;
    background: #ADD8E6;
    padding: 7px 15px;
    box-shadow: 0px 2px 4px 0px rgba(0,0,0,.2);
    cursor: pointer;
    margin-top: 15px;
}

.button2 {
    font-family: "NUnito",sans-serif;
    text-transform: uppercase;
    font-size: 10px;
    border:1em;
    color: #042331;
    background: #ADD8E6;
    padding: 7px 15px;
    box-shadow: 0px 2px 4px 0px rgba(0,0,0,.2);
    cursor: pointer;
    margin-top: 15px;
}

.tabshow {
    display: none;
}
.back{
    width:100%;
    height:100%;


}


    </style>
    <form id="form1" runat="server" method="post" name="form1">
        
            <div class="container">
                <div class="leftbox">
                    <nav>
                        <a onclick="tabs(0)" 
                            class="tab ">
                             <i style='font-size:20px' class='fas'>&#xf2b9;</i>
                            
                        </a>
                        <br />
                         <a onclick="tabs(1)" 
                            class="tab ">
                             <i style='font-size:20px' class='fas'>&#xf023;</i>
                        </a>
                        <br /> 

                        
                         <a onclick="tas();return false;" 
                            class="tab">
                            <i style="font-size:20px" class="fa">&#xf0a5;</i>
                            
                        </a>
                         <br />
                         <a onclick="ta();return false;" 
                            class="tab">
                            <i style='font-size:20px' class='fas'>&#xf011;</i>
                        </a>

                    </nav>
                </div>
                <div class="rightbox">
                    <div class="profile tabshow">
                        <h1>personal settings</h1>
                        <h2> your userid</h2>
                        <asp:TextBox ID="TextBox8" runat="server" Font-Size="Medium" class="input"></asp:TextBox>
                        
                        <h2>User Name</h2>
                   
                       <%-- <input type="text" id="usertextbox"class="input" value="" name="textbox1" />--%>
                        <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" class="input"></asp:TextBox>
                       
                        <h2>Email</h2>
                      
                          <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" class="input"></asp:TextBox>
                        <h2>Description</h2>
                       
                             <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" class="input"></asp:TextBox>
                        <h2>Phone</h2>
                        <asp:TextBox ID="TextBox7" runat="server" Font-Size="Medium" class="input"></asp:TextBox>
                      <br />
                       <%-- <button class="button1">update</button>--%>
                        <asp:Button ID="Button1" OnClick="Button1_Click" Font-Size="Medium" runat="server" Text="Save" class="button1" />
                         <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">edit</asp:LinkButton>
                    </div>
                      <div class="security tabshow">
                        <h1>security settings</h1>
                        <h2>Current Password</h2>
                        <asp:TextBox ID="TextBox4" TextMode="Password"  runat ="server" class="input"></asp:TextBox>
                         <br />
                            
                        <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Font-Size="Small" ForeColor="Red" ControlToValidate="TextBox4" ErrorMessage="*Enter current password"></asp:RequiredFieldValidator>--%>
                        <h2>New Password</h2>

                          <asp:TextBox ID="TextBox5" TextMode="Password" runat="server" class="input"></asp:TextBox>
                         <br />
                       <%--  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Font-Size="Small" ForeColor="Red" ControlToValidate="TextBox5" ErrorMessage="*Enter password"></asp:RequiredFieldValidator>--%>
                        <h2>Confirm Password</h2>
                        <asp:TextBox ID="TextBox6" TextMode="Password" runat="server" class="input" ></asp:TextBox>   
                         
                       <asp:Button ID="Button2" OnClick="Button2_Click" runat="server" Text="update" class="button2" />
                         <br />
                         <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" Display="Dynamic" ForeColor="DarkRed" ErrorMessage="Password Mismatched"></asp:CompareValidator>
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            
                    </div> 
                      


                      
                     
                    <div class="Back to main feed  tabshow">
                        <div class="back">
                            <center>
                                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">LinkButton</asp:LinkButton>
                            </center>
                              
                          <%-- <a href="https://localhost:44338/WebForm2.aspx" onclick="redirect()"></a>--%>
                        </div>
                     
                        
                       
                 
                 

                     <div class="logout  tabshow">
                       
                       
                            
                    </div>
                </div>
            </div> 
            <script type="text/x-jquery-tmpl"></script>
            <script type="text/javascript"></script>
            <script>
                const tabBtn = document.querySelectorAll(".tab");
                const tab = document.querySelectorAll(".tabshow");

                function tabs(panelIndex) {
                    tab.forEach(function (node) {
                        node.style.display = "none";
                    });
                    tab[panelIndex].style.display = "block";

                }
                tabs(0);
            </script>
               <script type="text/javascript">

                   function tas() {

                       location.href = "mainfeed.aspx";

                   }

        </script>
                 <script type="text/javascript">

                     function ta() {
                         var txt;
                         if (confirm("Sure about logout!")) {
                             location.href = "login.aspx";
                         } else {
                             txt = "You pressed Cancel!";
                         }
                         document.getElementById("demo").innerHTML = txt;


                     }

        </script>

            <script>
                $(".tab").click(function () {
                    $(this).addclass("active").siblin
                    gs().removeclass("active");
                });
            </script>
            <script src="validate.js"></script>
                 <script>
                     function myFunction() {
                         var element = document.body;
                         element.classList.toggle("dark-mode");
                     }
                 </script>
         
             
        </div>
    </form>
</asp:Content>



