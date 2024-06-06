<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="lotr.aspx.cs" Inherits="lotr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
        <script>
            window.onbeforeunload = function () {
                document.body.style.opacity = 0;
            }
        </script>
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
                background-image: url('lord of the rings background.jpg');
                height: 100vh;
                display: flex;
                position: absolute;
                opacity: 1;
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
                left: 65%;
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
        </style>
    </head>
    <body>
        <div style="display: flex;">
            <img class="background" src="lord of the rings background.jpg" />
            <div class="title"><strong>The Lord of the Rings</strong></div>
            <span class="heart-icon" onclick="favoriteVideo()">❤️</span>
            <a onclick="window.location.href='movies.aspx';" class="arrow"></a>
             <div class="glossy-container-video">
                <div class="content">
                    <video id="avengersPlayer" class="player">
                        <source src="lotrtrailer.mp4" type="video/mp4">
                        Your browser does not support the video tag.
                    </video>
                </div>
            </div>
             <div class="glossy-container-expanding-text">
                <div class="content">
                    <div class="expanding-text">
                        <p><strong>"The Lord of the Rings,"</strong> released in 2001, wasn't just a fantasy adventure film; it was a cultural phenomenon. Directed by Peter Jackson and based on the beloved novel by J.R.R. Tolkien, the film transported audiences to the sprawling, meticulously crafted world of Middle-earth, where hobbits, elves, dwarves, humans, and other fantastical creatures coexisted in a delicate balance.</p>
                        <p>At the heart of the story lies Frodo Baggins, an unassuming hobbit who inherits the One Ring, an artifact of immense power forged by the Dark Lord Sauron. This seemingly unassuming trinket holds the key to Sauron's dominion, threatening to plunge Middle-earth into eternal darkness. Thrust into an extraordinary destiny, Frodo embarks on a perilous quest to destroy the Ring in the fires of Mount Doom, the only place where its power can be unmade.</p>
                        <p>His journey is far from solitary. Joining Frodo is a diverse fellowship forged in a time of need. There's the wise wizard Gandalf, the noble Aragorn, heir to the throne of Gondor, the stoic dwarf Gimli, the graceful elf Legolas, and the loyal Samwise Gamgee, Frodo's unwavering companion. Each member brings unique strengths and talents, forming a bond of friendship that becomes the heart and soul of the film.</p>
                        <p>Their path is fraught with danger. From the treacherous mines of Moria to the sprawling plains of Rohan, they face monstrous orcs, deceitful Gollum consumed by the Ring's corrupting influence, and the ever-present threat of Sauron's watchful eye. Each encounter tests their courage, loyalty, and fellowship, forcing them to confront their own vulnerabilities and rise above them.</p>
                        <p>But "The Lord of the Rings" is more than just a thrilling adventure. It's a timeless tale of good versus evil, where even the smallest individual can make a difference. It explores themes of friendship, sacrifice, hope, and the enduring power of courage in the face of overwhelming odds. It reminds us that even in the darkest times, there is always light to be found, and even the most unlikely heroes can rise to the occasion.</p>
                        <p>The film's success wasn't just due to its compelling story and memorable characters. Jackson's vision brought Tolkien's world to life with groundbreaking visual effects that still hold up today. The sweeping landscapes, intricate costumes, and awe-inspiring battles immersed audiences in Middle-earth like never before.</p>
                        <p>"The Lord of the Rings" trilogy went on to win numerous awards, including 17 Academy Awards, and became the highest-grossing film franchise of its time. But more importantly, it captured the hearts and imaginations of millions, leaving an indelible mark on pop culture and inspiring generations of fans to delve into the world of Tolkien's legendarium.</p>
                    </div>
                </div>
            </div>

             <div class="glossy-container-right">
                <div class="content">
                    <div class="director-cast">
                        <div>
                            <h2>Director</h2>
                            <ul>
                                <li>Peter Jackson</li>
                            </ul>
                        </div>
                        <div>
                            <h2>Cast</h2>
                            <ul id="cast-list">
                                <li>Elijah Wood as Frodo Baggins</li>
                                <li>Ian McKellen as Gandalf</li>
                                <li>Viggo Mortensen as Aragorn</li>
                                <li>Sean Astin as Samwise Gamgee</li>
                                <li>Orlando Bloom as Legolas</li>
                                <li>Liv Tyler as Arwen</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
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
    </body>
    </html>
</asp:Content>