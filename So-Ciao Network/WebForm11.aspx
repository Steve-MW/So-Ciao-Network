<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="WebForm11.aspx.cs" Inherits="So_Ciao_Network.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body {
    margin: 0;
    padding: 0;
    font-family: Robotto, sans-serif;
    background-image: url('unsplash.jpg');
}

section {
    padding: 0 100px;
   
    height: 100vh;
    display: flex;
    align-items: center;
    flex-direction: row-reverse;
    
}

.box {
    position: relative;
    max-width: 1000px;
    padding: 50px;
    background: rgba(255, 255, 255, .2);
    box-shadow: 0 5px 15px rgba(0,0,0, .5);
    height: 600px;
}

    .box h1 {
        margin: 0 0 20px;
        padding: 0;
        font-size: 48px;
        text-transform: uppercase;
        color: #f4eeee;
    }

    .box p {
        margin: 0;
        padding: 0;
        font-size: 30px;
        text-transform: uppercase;
        color: #f4e6e6;
    }

    </style>


    <!-- Latest compiled and minified CSS -->
   <%-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <meta charset="utf-8">
        <title>About So-Ciao </title> 
        <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="finalabout1.css">--%>
        <%--<style>
            body{
                background-image:url('unsplash.jpg')
            }
        </style>--%>
    </head>
    <body style="background-image: url(images/nasa.jpg);"> 
        <form runat="server">
            
        
        <section>
            <div class="box">
                <h1>So-ciao</h1>
                <p>"It's networking within the community!"
                    <br />
                    Every employee has a bond with other employees.
                    They not only become teammates but friends too!
                    and they deserve a place to hang out and chi-chat in the busy routine of Corporate. So here we are to provide you a
                    platform where you can not only talk to your friends but also anyone from the company
                    <br/>
                    So Say Ciao to Everyone
                    <br />
                    
                
                
                </p>
                <%--<button class="btn btn-info" onclick="final.aspx">About Our Team</button>--%>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button class="btn btn-outline-blue-grey" ID="Button1" runat="server" Text="About So-Ciao Team" OnClick="Button1_Click" Font-Bold="True" Font-Size="Medium" ForeColor="Black" Height="85px" Width="372px" />
            </div>

        </section>
        </form>
   </body>
</asp:Content>
