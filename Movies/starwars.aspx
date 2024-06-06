<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="starwars.aspx.cs" Inherits="starwars" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
        <style>
            body {
                margin: 0;
                overflow: hidden;
                font-family: 'Roboto', sans-serif;
                font-weight: 300;
                background-color: black;
                padding: 0;
                animation: fadein 2.4s;
                transition: opacity 1.6s ease-out;
            }

            .background {
                height: 100vh;
                width: 100%;
                opacity: 1;
                animation-fill-mode: forwards;
                transform: rotate(-20deg) scale(2.5);
                animation: backgroundAnimation 1.4s forwards ease-in-out;
                background-image: url('star wars background.jpg');
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
                left: 57%;
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
            <img class="background" src="star wars background.jpg" />
            <div class="title"><strong>Star wars</strong></div>
            <span class="heart-icon" onclick="favoriteVideo()">❤️</span>
            <a onclick="fadeOutAndRedirect('movies.aspx');" class="arrow"></a>

            <div class="glossy-container-video">
                <div class="content">
                    <video id="avengersPlayer" class="player">
                        <source src="starwarstrailer.mp4" type="video/mp4">
                        Your browser does not support the video tag.
                    </video>
                </div>
            </div>

            <div class="glossy-container-expanding-text">
                <div class="content">
                    <div class="expanding-text">
                        <h2>Star Wars: Skywalker Saga - A Journey Through the Galaxy</h2>
                        <p><strong>"Star Wars: Skywalker Saga,"</strong> released in 1977, is more than just an epic space opera film series; it's a cultural touchstone that has captivated audiences for generations. Created by the visionary George Lucas, the saga delves into the timeless themes of good versus evil, family, destiny, and redemption, all set against the backdrop of a sprawling galaxy filled with unforgettable characters, thrilling battles, and groundbreaking special effects.</p>
                        <p>The story unfolds across multiple trilogies, spanning multiple generations of the Skywalker family and their allies. We first meet Anakin Skywalker, a young slave with exceptional Force sensitivity. His fall to the dark side and transformation into the iconic Darth Vader ignites a conflict that will shape the galaxy's fate.</p>
                        <p>Years later, Anakin's son, Luke Skywalker, emerges as a beacon of hope, destined to restore balance to the Force. Luke's journey takes him across the stars, where he encounters iconic characters like the wise Jedi Master Yoda, the smuggler Han Solo, and the fierce princess Leia Organa. Together, they face Darth Vader and the tyrannical Emperor Palpatine, embarking on epic adventures that define the Star Wars universe.</p>
                        <p>The saga continues with the next generation, as Luke's legacy inspires Rey, a scavenger from the desert planet Jakku. Rey discovers her own connection to the Force and must confront the dark side, embodied by Kylo Ren, a descendant of Anakin Skywalker. The battle for the galaxy's fate reaches new heights as Rey and her allies, including the loyal droid BB-8 and the reformed stormtrooper Finn, face off against the remnants of the First Order.</p>
                        <p>Beyond the core Skywalker family, the saga introduces a rich tapestry of characters who add depth and intrigue to the narrative. From the wise and powerful Jedi Masters like Obi-Wan Kenobi and Mace Windu to the cunning bounty hunter Boba Fett and the adorable droid duo R2-D2 and C-3PO, each character contributes to the galaxy's vibrant tapestry.</p>
                        <p>The "Star Wars: Skywalker Saga" is not just a film series; it's a cultural phenomenon that has transcended generations and mediums. The influence of Star Wars can be seen in countless aspects of popular culture, from music and literature to fashion and technology. The saga continues to inspire and entertain audiences worldwide, solidifying its place as a timeless classic.</p>
                        <p>This expanding text provides a brief overview of the "Star Wars: Skywalker Saga." To delve deeper into the vast universe of Star Wars, explore the numerous books, comics, TV series, video games, and other media that expand upon this epic saga.</p>
                    </div>
                </div>
            </div>

            <div class="glossy-container-right">
                <div class="content">
                    <div class="director-cast">
                        <div>
                            <h2>Creator</h2>
                            <ul>
                                <li>George Lucas</li>
                            </ul>
                        </div>
                        <div>
                            <h2>Main Characters</h2>
                            <ul id="cast-list">
                                <li>Mark Hamill as Luke Skywalker</li>
                                <li>Carrie Fisher as Leia Organa</li>
                                <li>Harrison Ford as Han Solo</li>
                                <li>Daisy Ridley as Rey</li>
                                <li>Adam Driver as Kylo Ren</li>
                                <li>James Earl Jones (Voice) / David Prowse (Physical) as Darth Vader</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    </html>
</asp:Content>