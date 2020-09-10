<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="MainFeed.aspx.cs" Inherits="So_Ciao_Network.WebForm10" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <link rel="stylesheet" href="MainFeed.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
    <script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.js"></script>
    <script type="text/javascript">
        function profileRedirect() {
            location.href = 'profile.aspx';
        }
        function settingsRedirect() {
            location.href = 'settings.aspx';

        }
    </script>

    <%--    <div class="create">
    <a href=#>Link to add more divs</a>--%>
    <%-- </div>--%>
    <div class="Universe">
        <div class="block">
            <div class="row">
                <div class="example-2 card">
                    <div class="wrapper2">
                        <div class="header2">
                            <div class="date">
                                <span class="day">12</span>
                                <span class="month">Aug</span>
                                <span class="year">2016</span>
                            </div>
                            <ul class="menu-content">
                                <li>
                                    <a href="#" class="fas fa-bookmark-o"></a>
                                </li>
                                <li><a href="#" class="far fa-heart"><span>18</span></a></li>
                                <li><a href="#" class="far fa-comment"><span>3</span></a></li>
                            </ul>
                        </div>
                        <div class="data">
                            <div class="content">
                                <span class="create" >Steve Waltin</span>
                                <h1 class="title"><a href="#">Tenkasi, a blissfull getaway from the rush of the urban lands.</a></h1>
                                <p class="text">
                                    Sundarapandiapuram has been on my list of must-see places ever since I saw a travelogue
                  featuring this rustic village with its fields of sunflowers, a much-photographed sight. While it isn’t
                  exactly, a hop, skip and jump from the city, the drive out to Sundarapandiapuram is well worth it for
                  these blooms.
                                </p>
                                <a href="#" class="button">Read more</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="cardFrameContainer" >
            <!-- <div class="cardFrame">
      <div class="container">
        <div class="row">
          <div class="col-12 col-sm-6 col-md-4 col-lg-3"> -->
            <div class="our-team">
                <div class="picture">
                    <img class="img-fluid" src="<%= DpDisplayString %>">
                </div>
                <div class="team-content">
                    <h3 class="name" style="font-family: serif, didot, serif;"><%= employeeName %></h3>
                    <h4 class="title" style="color:rgb(25, 23, 23); font-family: serif, didot, serif;"><%= designation %></h4>
                </div>
                <ul class="social">
                    <li><a href="https://codepen.io/collection/XdWJOQ/" class="fa fa-facebook" aria-hidden="true"></a></li>
                    <li><a href="https://codepen.io/collection/XdWJOQ/" class="fa fa-linkedin" aria-hidden="true"></a></li>
                    <li><a href="#" class="fas fa-user-circle" aria-hidden="true" onclick="profileRedirect()"></a></li>
                    <li><a href="#" class="fas fa-cog" aria-hidden="true"  onclick="settingsRedirect()"></a></li>
                    
                </ul>
            </div>
            <!-- </div>
        </div>
      </div>
    </div> -->
        </div>

        <!-- <div class="mainFrame"> -->

    </div>
    <!-- </div> -->
    <script type="text/javascript">//<![CDATA[
        (function () {
            var div = 0;
            $(".create").click(function () {
                div++;
                $(".block").append('<div class="row"><div class="example-2 card"><div class="wrapper2"><div class="header2"><div class="date"><span class="day">12</span><span class="month">Aug</span><span class="year">2016</span></div><ul class="menu-content"><li><a href="#" class="fas fa-bookmark-o"></a></li><li><a href="#" class="far fa-heart"><span>18</span></a></li><li><a href="#" class="far fa-comment"><span>3</span></a></li></ul></div><div class="data"><div class="content"><span class="author">Tanisha Gaba</span> <h1 class="title"><a href="#">A view of the stars from the lands of Tamil Nadu</a></h1><p class="text">Some more context to what I just said..</p><a href="#" class="button">Read more</a></div></div></div></div></div>');
            });
        })();
    </script>

</asp:Content>
