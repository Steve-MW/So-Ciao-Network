<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="So_Ciao_Network.WebForm2" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>Profile</title>
    <link rel="stylesheet" href="https://fonts.ggogleapis.com/css?family=Open+Sans:300,400,600" />
    <link rel="stylesheet" href="https://use.fontawesome.com/release/v5.0.8/css/all.css" />
    <link rel="stylesheet"href="StyleSheet1.css" />
    
</head>
<body>
    <form runat="server">
    <header>
        <div class="container">
            <div class="profile">
                <div class="flip-card">
                    <div class="flip-card-inner">
                        <div class="flip-card-front">
                            <img src="pics/website.jpg" alt="Avatar" style="width:170px;height:170px;">
                        </div>
                        <div class="flip-card-back">
                            <h1>
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h1>
                            <p>
                                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></p>
                            <p>
                                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></p>
                        </div>
                    </div>
                </div>
                <div class="profile-user-settings">
                    <h1 class="profile-user-name">
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></h1>
                    <asp:Button ID="Button1" class="profile-edit-btn" runat="server" Text="Message" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" class="profile-edit-btn" runat="server" Text="Add Close friend" OnClick="Button2_Click" />
                    
                </div>
                <div class="profile-stats">
                    <ul>
                        <li><span class="profile-stat-count">
                            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></span>posts</li>
                        <li><span class="profile-stat-count">
                            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></span>close friends </li>
                    </ul>
                </div>
                <div class="profile-bio">
                    <p><span class="profile-real-name">
                        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></span></p>
                </div>
            </div>
            <!--End of profile section-->
        </div>
        <!--End of container-->
    </header>
    <main>
        <div class="container">
            <div class="gallery">
                <div class="gallery-item" tabindex="0">
                    <img id="my_image" src="pics/333.jpg" alt="Gallery-1" class="gallery-image" />
                    <div class="gallery-item-info">
                        <ul>
                            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fa fa-heart" aria-hidden="true"></i>56</li>
                            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fa fa-comment" aria-hidden="true"></i>2</li>
                        </ul>
                    </div>
                </div>
                <div class="gallery-item" tabindex="0">
                    <img src="pics/yyy.jpg" alt="Gallery-1" class="gallery-image" />
                    <div class="gallery-item-info">
                        <ul>
                            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fa fa-heart" aria-hidden="true"></i>56</li>
                            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fa fa-comment" aria-hidden="true"></i>2</li>
                        </ul>
                    </div>
                </div>
                <div class="gallery-item" tabindex="0">
                    <img src="pics/ooo.jpg" alt="Gallery-1" class="gallery-image" />
                    <div class="galery-item-type">
                        <span class="visually-hidden">Gallery</span>
                        <i class="fas fa-clone" aria-hidden="true"></i>
                    </div>
                    <div class="gallery-item-info">
                        <ul>
                            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"></i>56</li>
                            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i>2</li>
                        </ul>
                    </div>
                </div>
                <div class="gallery-item" tabindex="0">
                    <img src="pics/opp.jpg" alt="Gallery-1" class="gallery-image" />
                    <div class="galery-item-type">
                        <span class="visually-hidden">Video</span>
                        <i class="fas fa-video" aria-hidden="true"></i>
                    </div>
                    <div class="gallery-item-info">
                        <ul>
                            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"></i>56</li>
                            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i>2</li>
                        </ul>
                    </div>
                </div>
                <div class="gallery-item" tabindex="0">
                    <img src="pics/website.jpg" alt="Gallery-1" class="gallery-image" />
                    <div class="galery-item-type">
                        <span class="visually-hidden">Gallery</span>
                        <i class="fas fa-clone" aria-hidden="true"></i>
                    </div>
                    <div class="gallery-item-info">
                        <ul>
                            <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"></i>56</li>
                            <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i>2</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--End og gallery-->
        <div class="loader"></div>
    </main>
    </form>
</body>
</html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
