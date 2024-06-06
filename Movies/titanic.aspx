<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="titanic.aspx.cs" Inherits="titanic" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
        <style>
            body {
                margin: 0;
                font-family: 'Roboto', sans-serif;
                font-weight: 300;
                margin: 0;
                height: 100vh;
                padding: 0;
                overflow: hidden;
                background-color: black;
                transition: opacity 1.6s ease-out;
            }

            .background {
                height: 100vh;
                width: 100%;
                opacity: 1;
                animation-fill-mode: forwards;
                transform: rotate(-20deg) scale(2.5);
                animation: backgroundAnimation 1.4s forwards ease-in-out;
                background-image: url('titanic background.jpg');
                height: 100vh;
                display: flex;
                position: absolute;
                opacity: 1;
                animation-fill-mode: forwards;
                z-index: 1000;
                filter: blur(10px) brightness(40%);
                object-fit: cover;
                animation-fill-mode: forwards;
                transition: transform 0.6s ease-out, filter 0.6s ease-out;
                transform: scale(1.6);
            }

            @keyframes backgroundAnimation {
                to {
                    transform: scale(1.1);
                    opacity: 1;
                    object-fit: cover;
                }
            }

            .glossy-container-video {
                position: fixed;
                z-index: 1;
                top: 20%;
                left: 2%;
                transform: translate(0, 0);
                max-width: 30%;
                max-height: auto;
                border: 10px solid rgba(255, 255, 255, 0.1);
                background-color: rgba(0, 0, 0, 0.1);
                box-shadow: rgba(0, 0, 0, 0.2) -5px -5px 20px, rgba(255, 255, 255, 0.1) -5px -5px 20px inset, rgba(0, 0, 0, 0.4) 5px 5px 20px, rgba(255, 255, 255, 0.1) -5px -5px 20px inset;
                overflow: hidden;
            }

            .glossy-container-video .content {
                padding: 10px;
                z-index: 1;
            }

            .glossy-container-expanding-text {
                position: fixed;
                top: 20%;
                z-index: 1;
                right: 2%;
                width: 30%;
                height: 53%;
                border: 10px solid rgba(255, 255, 255, 0.1);
                background-color: rgba(0, 0, 0, 0.1);
                overflow-y: auto;
                scrollbar-width: thin;
                scrollbar-color: #fff rgba(0, 0, 0, 0.1);
                -webkit-overflow-scrolling: touch;
                box-shadow: rgba(0, 0, 0, 0.2) -5px -5px 20px, rgba(255, 255, 255, 0.1) -5px -5px 20px inset, rgba(0, 0, 0, 0.4) 5px 5px 20px, rgba(255, 255, 255, 0.1) -5px -5px 20px inset;
            }

            .glossy-container-expanding-text::-webkit-scrollbar-track {
                background: rgba(0, 0, 0, 0.1);
                z-index: 1;
            }

            .glossy-container-expanding-text::-webkit-scrollbar-thumb {
                background: gray;
                z-index: 1;
                border-radius: 10px;
            }

            .glossy-container-expanding-text::-webkit-scrollbar {
                width: 8px;
                z-index: 1;
            }

            .glossy-container-expanding-text .content {
                padding: 10px;
                height: 100%;
                z-index: 1;
                box-sizing: border-box;
            }

            .glossy-container-right {
                position: fixed;
                top: 57%;
                z-index: 1;
                left: 2%;
                width: 30%;
                height: 30%;
                border: 10px solid rgba(255, 255, 255, 0.1);
                background-color: rgba(0, 0, 0, 0.1);
                box-shadow: rgba(0, 0, 0, 0.2) -5px -5px 20px, rgba(255, 255, 255, 0.1) -5px -5px 20px inset, rgba(0, 0, 0, 0.4) 5px 5px 20px, rgba(255, 255, 255, 0.1) -5px -5px 20px inset;
                overflow: hidden;
            }

            .glossy-container-right .content {
                padding: 10px;
                z-index: 1;
            }

            .player {
                max-width: fit-content;
                z-index: 1;
            }

            .expanding-text {
                position: absolute;
                flex: 1;
                padding-right: 20px;
                color: #fff;
                font-size: 0.7vw;
                z-index: 1;
                line-height: 1.5;
                display: flex;
                flex-direction: column;
                top: 0;
            }

            .director-cast {
                width: 30%;
                display: flex;
                flex-wrap: wrap;
                color: #fff;
                z-index: 1;
                font-size: 16px;
                line-height: 1.5;
                padding: 20px;
            }

            .director-cast div {
                flex: 1;
                margin-right: 20px;
                z-index: 1;
            }

            .director-cast ul {
                column-count: 2;
                z-index: 1;
                column-gap: 20px;
                max-height: 125px;
            }

            .plyr__controls {
                background: rgba(0, 0, 0, 0.7);
                z-index: 1;
            }

            .player {
                box-shadow: 0 0 20px rgba(0, 0, 0, 0.5);
                z-index: 1;
            }

            .expanding-text {
                opacity: 0;
                animation: fadeIn 4s forwards;
                z-index: 1;
            }

            .director-cast {
                opacity: 0;
                animation: fadeIn 4s forwards;
            }

            @keyframes fadeIn {
                to {
                    opacity: 1;
                }
            }

            .title {
                top: 8%;
                left: 50%;
                transform: translate(-50%, -50%);
                position: absolute;
                z-index: 1;
                text-align: center;
                font-size: 3.2vw;
                color: whitesmoke
            }

            .heart-icon {
                position: absolute;
                top: 7%;
                z-index: 1;
                left: 55%;
                font-size: 20px;
                cursor: pointer;
                opacity: 0.3;
                transition: all 0.3s ease-in-out;
            }

            .heart-icon:hover {
                transform: scale(1.1);
                opacity: 1;
                z-index: 1;
            }

            .arrow {
                position: absolute;
                bottom: 25px;
                z-index: 1;
                right: 25px;
                width: 120px;
                height: 120px;
                background-image: url('backarrow.png');
                background-size: cover;
                cursor: pointer;
                transition: all 0.3s ease-in-out;
            }

            .arrow:hover {
                filter: brightness(1.2);
                z-index: 1;
                transform: scale(1.1);
            }

            @keyframes fadein {
                from {
                    opacity: 0;
                }
                to {
                    opacity: 1;
                }
            }
        </style>
    </head>
    <body>
        <script>
            window.onbeforeunload = function () {
                document.body.style.opacity = 0;
            }

            function fadeOutAndRedirect(redirectLocation) {
                document.body.style.opacity = 0;
                setTimeout(() => {
                    window.location.href = redirectLocation;
                }, 1000);
            }

            document.addEventListener('DOMContentLoaded', () => {
                const player = new Plyr('#avengersPlayer', { autoplay: true });
            });

            function favoriteVideo() {
                alert("Video favorited! ❤️");
            }

            function goBack() {
                window.history.back();
                return false;
            }

            document.addEventListener("DOMContentLoaded", function () {
                setTimeout(function () {
                    const oldBg = document.querySelector(".background");
                    const newBg = oldBg.cloneNode(true);

                    const oldBgStyles = window.getComputedStyle(oldBg);
                    newBg.style.width = oldBgStyles.width;
                    newBg.style.height = oldBgStyles.height;
                    newBg.style.position = oldBgStyles.position;
                    newBg.style.top = oldBgStyles.top;
                    newBg.style.left = oldBgStyles.left;
                    newBg.style.zIndex = oldBgStyles.zIndex;
                    newBg.style.backgroundImage = oldBgStyles.backgroundImage;
                    newBg.style.backgroundSize = oldBgStyles.backgroundSize;
                    newBg.style.opacity = oldBgStyles.opacity;
                    newBg.style.filter = oldBgStyles.filter;
                    newBg.style.transform = oldBgStyles.transform;

                    newBg.style.transform = "transform: scale(1.1)";
                    newBg.style.objectFit = 'cover';
                    newBg.style.zIndex = '-1';

                    newBg.classList.remove("background");
                    newBg.classList.add("parallax");
                    oldBg.parentNode.replaceChild(newBg, oldBg);

                    const parallaxBg = document.querySelector(".parallax");
                    let latestMouseMoveTime = 0;

                    window.addEventListener("mousemove", (e) => {
                        const now = Date.now();
                        if (now - latestMouseMoveTime > 60) {
                            latestMouseMoveTime = now;
                            requestAnimationFrame(() => {
                                const xOffset = (window.innerWidth / 2 - e.clientX) / 50;
                                const yOffset = (window.innerHeight / 2 - e.clientY) / 50;
                                parallaxBg.style.transition = 'transform 0.6s ease-out';
                                parallaxBg.style.transform = `translateX(${xOffset}px) translateY(${yOffset}px)`;
                            });
                        }
                    });
                }, 1500);
            });
        </script>

        <div style="display: flex;">
            <img class="background" src="titanic background.jpg" />
            <div class="title"><strong>Titanic</strong></div>
            <span class="heart-icon" onclick="favoriteVideo()">❤️</span>
            <a onclick="fadeOutAndRedirect('movies.aspx');" class="arrow"></a>

            <div class="glossy-container-video">
                <div class="content">
                    <video id="avengersPlayer" class="player">
                        <source src="titanictrailer.mp4" type="video/mp4">
                        Your browser does not support the video tag.
                    </video>
                </div>
            </div>

            <div class="glossy-container-expanding-text">
                <div class="content">
                    <div class="expanding-text">
                        <p><strong>"Titanic,"</strong> released in 1997, is a romance and disaster film directed, written, co-produced, and co-edited by James Cameron. The film stars Leonardo DiCaprio and Kate Winslet as members of different social classes who fall in love aboard the ship during its ill-fated maiden voyage.</p>
                        <p>The storyline follows the young and passionate Jack Dawson, a third-class artist, and Rose DeWitt Bukater, a first-class passenger who is engaged to a wealthy but cruel man. Their forbidden love blossoms amidst the luxurious yet doomed voyage of the RMS Titanic.</p>
                        <p>As the ship sails towards its tragic destiny, Jack and Rose must navigate societal expectations, class divisions, and the impending disaster that will ultimately test the strength of their love.</p>
                        <p>"Titanic" was a massive critical and commercial success, winning 11 Academy Awards, including Best Picture and Best Director for Cameron. It held the record for the highest-grossing film of all time until Cameron's own "Avatar" surpassed it in 2009.</p>
                        <p>The film's groundbreaking use of visual effects, combined with its emotional storytelling and memorable performances, continues to captivate audiences worldwide. Its portrayal of the real-life tragedy of the Titanic's sinking has cemented its place in cinematic history.</p>
                        <p>Despite its fictionalized romance, "Titanic" also pays homage to the thousands who lost their lives in the disaster, serving as a poignant reminder of the human cost of hubris and the fragility of life.</p>
                    </div>
                </div>
            </div>

            <div class="glossy-container-right">
                <div class="content">
                    <div class="director-cast">
                        <div>
                            <h2>Director</h2>
                            <ul>
                                <li>James Cameron</li>
                            </ul>
                        </div>
                        <div>
                            <h2>Cast</h2>
                            <ul id="cast-list">
                                <li>Leonardo DiCaprio as Jack Dawson</li>
                                <li>Kate Winslet as Rose DeWitt Bukater</li>
                                <li>Billy Zane as Caledon 'Cal' Hockley</li>
                                <li>Kathy Bates as Molly Brown</li>
                                <li>Frances Fisher as Ruth DeWitt Bukater</li>
                                <li>Jonathan Hyde as J. Bruce Ismay</li>
                                <li>Danny Nucci as Fabrizio</li>
                                <li>David Warner as Spicer Lovejoy</li>
                                <li>Bill Paxton as Brock Lovett</li>
                                <li>Suzy Amis as Lizzy Calvert</li>
                                <li>Bernard Hill as Captain Edward James Smith</li>
                                <li>Victor Garber as Thomas Andrews</li>
                                <li>Gloria Stuart as Old Rose</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    </html>
</asp:Content>