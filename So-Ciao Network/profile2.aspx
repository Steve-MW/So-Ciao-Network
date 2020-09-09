<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="profile2.aspx.cs" Inherits="So_Ciao_Network.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <meta charset="utf-8" />
    <link rel="stylesheet" href="https://fonts.ggogleapis.com/css?family=Open+Sans:300,400,600" />
    <link rel="stylesheet" href="https://use.fontawesome.com/release/v5.0.8/css/all.css" />
    <style>
                ﻿:root {
    font-size: 10px;
}

*,*::before,*::after {
    box-sizing: border-box;
}

.changes{
    
    /*left: 0;*/ 
    /*position:absolute;*/
    padding: 0;
    text-align:left;
    margin-bottom: 20px;
    width: 10%;
    font-weight: 600;

}
body {
    font-family: "Open Sans",Arial,sans-serif;
    min-height: 100vh;
    background-color: #fafafa;
    color: #262626;
    padding-bottom: 3rem;
}
img {
    display: block;
}

.container {
    max-width: 85.5rem;
    margin: 0 auto;
    padding: 0 2rem;
}

.btn {
    all: unset;
    background: none;
    color: none;
    display: inline-block;
    cursor: pointer;
    border: none;
    align-items:center;
}

 .btn:focus {
        outline: 0.5rem auto #4d90fe;
        align-items:center;
    }

.visually-hidden {
    position: absolute !important;
    height: 1px;
    widows: 1;
    overflow: hidden;
    clip: rect(1px, 1px, 1px, 1px);
}
/*flip card*/

.flip-card {
    background-color: transparent;
    width: 150px;
    height: 150px;
    perspective: 1000px;
    margin-left: 70px;
    display: flex;
    justify-content: center;
    align-items: center;
    border-radius: 50%;
}

.flip-card-inner {
    position: relative;
    width: 100%;
    height: 100%;
    text-align: center;
    transition: transform 0.6s;
    transform-style: preserve-3d;
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
    border-radius: 50%;
}
.flip-card:hover .flip-card-inner {
    transform: rotateY(180deg);
    border-radius: 50%;
}

.flip-card-front, .flip-card-back {
    position: absolute;
    width: 150px;
    height: 150px;
    -webkit-backface-visibility: hidden;
    backface-visibility: hidden;
}

.flip-card-front {
    background-color: #bbb;
    color: black;
    border-radius: 50%;
}

    .flip-card-front img {
        border-radius: 50%;
        max-width: 250px;
        max-height: 250px;
    }

.flip-card-back {
    background-color: #4CCEE8;
    color: white;
    transform: rotateY(180deg);
    border-radius: 50%;
}

    .flip-card-back h1, p {
        text-align: center;
        padding-top: 10px;
    }

Profile Section
.profile {
    padding: 5rem 0;
}

    .profile::after {
        content: "";
        display: block;
        clear: both;
    }

.profile-image {
    float: left;
    width: calc(33.333%-1rem);
    display: flex;
    justify-content: center;
    align-items: center;
    margin-right: 3rem;
}
.profile-image img {
        border-radius: 50%;
    }

.profile-user-settings,
.profile-stats,
.profile-bio {
    float: left;
    width: calc(66.666%-2rem);

}

.profile-user-settings {
    margin-top: 1.1rem;
    
}

.profile-user-name {
    display: inline-block;
    font-size: 3.2rem;
    font-weight: 300;
}

.profile-edit-btn {
    font-size: 1rem;
    line-height: 1.8;
    border: 0.1rem solid #dbdbdb;
    border-radius: 0.3rem;
    padding: 0 2.4rem;
    margin-left: 20rem;
    align-items:center;
}
.profile-settings-btn {
    font-size: 2rem;
    margin-top: 1rem;
}

.profile-stats {
    margin-top: 2.3rem;
}

    .profile-stats li {
        display: inline-block;
        font-size: 1.6rem;
        line-height: 2;
        margin-right: 2rem;
        cursor: pointer;
    }

        .profile-stats li:last-of-type {
            margin-right: 0;
             align-items:center;
        }

.profile-bio {
    font-size: 1.6rem;
    font-weight: 400;
    line-height: 1.5;
    margin-top: 2.3rem;
    align-content: flex-start;
    align-items:center;
}


.profile-real-name,
.profile-stat-count,
.profile-esit-btn {
    font-weight: 600;
    
}
/*gallery section*/
.gallery {
    display: flex;
    flex-wrap: wrap;
    margin: -1rem -1rem;
    padding-bottom: 3rem;
}

.gallery-item {
    position: relative;
    flex: 1 0 22rem;
    margin: 1rem;
    color: #fff;
    cursor: pointer;
     box-shadow: 0 19px 38px rgba(0, 0, 0, 0.30), 0 15px 12px rgba(0, 0, 0, 0.22);
     border-radius:100px;
     width:20px;
     height:280px;
}

    .gallery-item:hover .gallery-item-info,
    .gallery-item:focus .gallery-item-info {
        display: flex;
        justify-content: center;
        align-items: center;
        position: absolute;
        top: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0,0,0,.3);
    }

.gallery-item-info {
    display: none;
}

    .gallery-item-info li {
        display: inline-block;
        font-size: 1.7rem;
        font-weight: 600;
    }

.gallery-item-likes {
    margin-right: 2.2rem;
}

.gallery-item-type {
    position: absolute;
    top: 1rem;
    font-size: 1.5rem;
    text-shadow: 0.2rem 0.2rem 0.2rem rgba(0,0,0,.1);
}

.fa-clone,
.fa-comment {
    transform: rotateY(180deg);
}

.gallery-image {
    width: 100%;
    height: 100%;
    object-fit: cover;
}

/*loader*/

.loader {
    width: 5rem;
    height: 5rem;
    border: 0.6rem;
    border-bottom-color: transparent;
    border-radius: 50%;
    margin: 0 auto;
    animation: laoder 500ms linear infinite;
}

/*Media Query*/

@media screen and (max-width: 40rem) {
    .profile {
        display: flex;
        flex-wrap: wrap;
        padding: 4rem 0;
    }

        .profile::after {
            display: none;
        }

    .profile-image,
    .profile-user-settings,
    .profile-bio,
    .profile-stats {
        float: none;
        width: auto;
    }

.profile-image img {
            width: 7.7rem;
        }

    .profile-user-settings {
        flex-basis: calc(100% - 10.7rem);
        display: flex;
        flex-wrap: wrap;
        margin-top: 1rem;
    }

    .profile-user-name {
        font-size: 2.2rem;
    }

    .profile-edit-btn {
        order: 1;
        padding: 0;
        text-align: center;
        margin-top: 1rem;
    }

    .profile-bio {
        font-size: 1.4rem;
        margin-top: 1.5rem;
    }

    .profile-edit-btn,
    .profile-bio,
    .profile-stats {
        flex-basis: 100%;
    }

    .profile-stats {
        order: 1;
        margin-top: 1.5rem;
    }

        .profile-stats ul {
            display: flex;
            text-align: center;
            padding: 1.2rem 0;
            border-top: 0.1rem solid #dadada;
            border-bottom: 0.1rem solid #dadada;
        }

        .profile-stats li {
            font-size: 1.4rem;
            flex: 2;
            margin: 0;
        }

    .profile-stat-count {
        display: block;
    }
}
/*End media*/

/*Spinner Animation*/
@keyframes loader {
    to {
        transform: rotate(360deg);
    }
}

/*grid code*/

@supports (display:grid) {
    .profile {
        display: grid;
        grid-template-columns: 2fr 3fr;
        grid-template-rows: repeat(1,auto);
        grid-column-gap: -3rem;
        align-items: center;
     /*  padding-left: 20px;
        margin-top:-5px;
          margin-bottom:-200;*/
    }
    /*.profile-image {
        grid-row: 1/-1;
         margin-left: 20px;
    }

    .profile-image,
    .profile-user-settings,
    .profile-stats,
    .profile-bio,
    .profile-item,
    .gallery {
        width: auto;
        margin: 0;
         margin-left: 20px;
    }

    @media (mmax-width: 40rem) {
        .profile {
            grid-template-columns:  1fr;
            grid-row-gap: 1.5rem;
             margin-left: 20px;
        }

        .profile-image {
            grid-row: 1/2;
             margin-left: 20px;
        }

        .profile-user-settings {
            display: grid;
            grid-template-columns: 1fr;
            grid-gap: 1rem;
             margin-left: 20px;
        }*/
    
        .profile-edit-btn,
        .profile-bio,
        .profile-stats {
            grid-column: 1/-1;
           margin-top:-5px;
         
        }

        .profile-user-settings,
        .profile-edit-btn,
        .profile-settings-btn,
        .profile-bio,
        .profile-stats {
            margin: 10px;
            /*padding-left:20px;*/
            
        }
    /*}*/
}


    </style>&nbsp;

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
                                <asp:Label ID="Label1" runat="server" Text="steve waltin"></asp:Label></h1>
                            <p>
                                <asp:Label ID="Label2" runat="server" Text="steve"></asp:Label></p>
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
</asp:Content>
