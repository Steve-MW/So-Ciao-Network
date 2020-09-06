<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="So_Ciao_Network.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    
     <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/darkmode-js@1.5.6/lib/darkmode-js.min.js"></script>
    <link href="StyleSheet2.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet"href="fontawsome/css/all.css" /> 

    <title></title>
<%--    <style>
        body {
            padding: 25px;
            background-color: #23395d;
            color: white;
            font-size: 25px;
        }

        .dark-mode {
            background-color: black;
           color: white;
        }
        .switch {
            position: relative;
            display: inline-block;
            width: 40px;
            height: 26px;
        }

            .switch input {
                opacity: 0;
                width: 0;
                height: 0;
            }

        .slider {
            position: absolute;
            cursor: pointer;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: #ccc;
            -webkit-transition: .4s;
            transition: .4s;
        }

            .slider:before {
                position: absolute;
                content: "";
                height: 15px;
                width: 15px;
                left: .5px;
                bottom: 4px;
                background-color: white;
                -webkit-transition: .4s;
                transition: .4s;
            }

        input:checked + .slider {
            background-color: #2196F3;
        }

        input:focus + .slider {
            box-shadow: 0 0 1px #2196F3;
        }

        input:checked + .slider:before {
            -webkit-transform: translateX(26px);
            -ms-transform: translateX(26px);
            transform: translateX(26px);
        }

        /* Rounded sliders */
        .slider.round {
            border-radius: 20px;
        }

            .slider.round:before {
                border-radius: 50%;
            }

        
    </style>--%>
    <style>
body {
  padding: 25px;
  background-color: white;
  color: black;
  font-size: 25px;
}

.dark-mode {
  background-color: black;
  color: white;
}
</style>
</head>
<body>
    <form id="form1" runat="server" method="post" name="form1">
        <div>
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

                       location.href = "/WebForm4.aspx";

                   }

        </script>
                 <script type="text/javascript">

                     function ta() {
                         var txt;
                         if (confirm("Sure about logout!")) {
                             location.href = "/WebForm4.aspx";
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
    
                       
</body>
</html>