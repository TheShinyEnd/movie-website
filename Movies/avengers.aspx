<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="avengers.aspx.cs" Inherits="avengers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">

    <body>

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
                    animation: fadeIn 2.4s;
                    transition: opacity 1.6s ease-out;
                }

.background {
  height: 100vh;
  width: 100%;
  opacity: 1;
  animation-fill-mode: forwards;
  transform: rotate(-20deg) scale(2.5);
  animation: backgroundAnimation 1.4s forwards ease-in-out;
  background-image: url('avengers background.jpg');
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
    left: 60%;
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

            <div style="display: flex;">

                <img class="background" src="avengers background.jpg"/>

                <div class="title"><strong>The Avengers</strong></div>
                <span class="heart-icon" onclick="favoriteVideo()">❤️</span>

<a onclick="window.location.href='movies.aspx';" class="arrow">
    </a>
                 <div class="glossy-container-video">
                    <div class="content">
                        <video id="avengersPlayer" class="player">
                            <source src="avengers trailer.mp4" type="video/mp4">
                            Your browser does not support the video tag.
                        </video>
                    </div>
                </div>

                 <div class="glossy-container-expanding-text">
                    <div class="content">
                        <div class="expanding-text">
                            <p><strong>"The Avengers,"</strong> released in 2012, is an American superhero film based on the Marvel Comics superhero team with the same name. Joss Whedon wrote and directed the film, featuring an ensemble cast including Robert Downey Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth, Scarlett Johansson, and Jeremy Renner as the Avengers, alongside Tom Hiddleston, Stellan Skarsgård, and Samuel L. Jackson.</p>

                            <p>The storyline follows the Asgardian Loki, who encounters the Other, the leader of an extraterrestrial race known as the Chitauri. In exchange for retrieving the Tesseract, a potent energy source, the Other promises Loki an army to conquer Earth. Loki, Thor's adopted brother, teams up with the Chitauri Army, using the Tesseract's power to plot the invasion of Earth and pursue kingship.</p>

                            <p>In response, Nick Fury, the director of S.H.I.E.L.D., assembles a team comprising Tony Stark (Iron Man), Steve Rogers (Captain America), Bruce Banner (The Hulk), Thor, Natasha Romanoff (Black Widow), and Clint Barton (Hawkeye). This group must unite and learn to fight as a team to thwart Loki and his alien army from enslaving humanity.</p>

                            <p>The film's development started in 2005, with the official release planned for 2011 but eventually pushed to 2012. "The Avengers" premiered on April 11, 2012, at the El Capitan Theatre in Los Angeles and was released in the United States on May 4.</p>

                            <p>Joss Whedon's direction and screenplay, along with visual effects, action sequences, acting, and the musical score, received acclaim. The film achieved significant financial success, grossing over $1.5 billion worldwide, setting box office records, and becoming the third-highest-grossing film at the time of its release and the highest-grossing film of 2012.</p>
                        </div>
                    </div>
                </div>

                 <div class="glossy-container-right">
                    <div class="content">
                        <div class="director-cast">
                            <div>
                                <h2>Director</h2>
                                <ul>
                                    <li>Joss Whedon</li>
                                </ul>
                            </div>
                            <div>
                                <h2>Cast</h2>
                                <ul id="cast-list">
                                    <li>Robert Downey Jr. as Tony Stark</li>
                                    <li>Chris Evans as Steve Rogers</li>
                                    <li>Scarlett Johansson as Natasha Romanoff</li>
                                    <li>Jeremy Renner as Clint Barton</li>
                                    <li>Mark Ruffalo as Bruce Banner</li>
                                    <li>Chris Hemsworth as Thor</li>
                                    <li>Tom Hiddleston as Loki</li>
                                    <li>Clark Gregg as Agent Phil Coulson</li>
                                    <li>Cobie Smulders as Agent Maria Hill</li>
                                    <li>Stellan Skarsgård as Selvig</li>
                                    <li>Samuel L. Jackson as Nick Fury</li>
                                    <li>Gwyneth Paltrow as Pepper Potts</li>
                                    <li>Paul Bettany as Jarvis</li>
                                    <!-- Add more cast members as needed -->
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

            </div>


            <script>

                function fadeOutAndRedirect(redirectLocation) {
                    console.log('Fading out...');
                    document.body.style.opacity = 0;

                    setTimeout(() => {
                        console.log('Redirecting to:', redirectLocation);
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