<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="movies.aspx.cs" Inherits="movies" %>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">

<!-- 
Movie Website Project - A simple website about movies and their descriptions.
Copyright (C) 2024 TheShinyEnd

This program is free software: you can redistribute it and/or modify
it under the terms of the Movie Website Project Custom License as published by
the original author(s), either version 1.0 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
Movie Website Project Custom License for more details.

You should have received a copy of the Movie Website Project Custom License
along with this program.  If not, see <https://github.com/TheShinyEnd/movie-website/blob/main/LICENSE>.

Same applies with every single item in this "project" repository.
    But most importantly, enjoy.
-->

    <!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">

    <body>
        <script>
            window.onbeforeunload = function () {
                document.body.style.opacity = 0;
            }
        </script>
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

        @keyframes fadein {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        @keyframes blurfade {
            0% { filter: blur(10px); opacity: 0; }
            100% { filter: blur(0px); opacity: 1; }
        }

        .slide {
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            color: white;
            background-size: cover;
            background-position: center;
            flex-shrink: 0;
            width: 100%;
            position: relative;
            transition: 1s;
            filter: blur(20px);
            opacity: 0;
        }

        .slide:first-child {
            filter: blur(0);
            opacity: 1;
        }

        .slide.active {
            filter: blur(0);
            opacity: 1;
        }

        .slide:before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: inherit;
            background-color: black;
            filter: blur(10px) brightness(40%);
            z-index: -1;
        }

        .slide h2 {
            position: absolute;
            z-index: 1;
            color: gray;
            top: 7%;
            text-align: center;
            font-size: 4vw;
        }

        .info-graph {
            position: absolute;
            z-index: 1;
            margin-bottom: 1px;
            margin-left: 1px;
            bottom: 55%;
            text-align: center;
            font-size: 1.5vw;
            color: whitesmoke;
            padding: 0 30%;
            box-sizing: border-box;
            font-weight: normal;
        }

        .arrow {
            position: absolute;
            bottom: 25px;
            right: 25px;
            width: 80px;
            height: 80px;
            background-image: url('arrow pointing right toslidespages.png');
            background-size: cover;
            cursor: pointer;
            transition: all 0.3s ease-in-out;
        }

        .arrow:hover {
            filter: brightness(1.2);
            transform: scale(1.1);
        }

        .info-list {
            list-style-type: lower-greek;
            position: absolute;
            color: darkslategrey;
            z-index: 1;
            left: 1%;
            text-align: left;
            bottom: 1%;
            font-size: 1.6vw;
        }

        .info-list .views-label {
            color: grey;
        }

        .info-list .views-value {
            color: lightgrey;
        }

        .slide:first-child h2 {
            position: absolute;
            z-index: 1;
            top: 3%;
            left: 3%;
            text-align: center;
            font-size: 3.5vw;
            color: darkgoldenrod;
        }

        .slide:first-child h1 {
            position: absolute;
            z-index: 1;
            top: 25%;
            text-align: left;
            font-size: 2.1vw;
            left: -18%;
            right: 30%;
            padding: 0 20%;
            box-sizing: border-box;
            font-weight: bold;
        }

        .slide:first-child p {
            position: absolute;
            z-index: 1;
            top: 35%;
            text-align: left;
            right: 20%;
            font-size: 2vw;
            left: -18%;
            right: 30%;
            padding: 0 20%;
            box-sizing: border-box;
            font-weight: normal;
        }

        .slide:first-child .newdiv {
            position: absolute;
            z-index: 1;
            top: 45%;
            text-align: left;
            right: 20%;
            font-size: 2vw;
            left: 1%;
            right: 30%;
            padding: 0 20%;
            box-sizing: border-box;
            font-weight: normal;
        }

        .slide:first-child h2,
        .slide:first-child h1,
        .slide:first-child p {
            opacity: 0;
            transform: translateY(20px);
            animation: fadeFromRight 1.4s ease-out 1.4s forwards;
        }

        @keyframes fadeFromRight {
            from {
                opacity: 0;
                filter: blur(10px);
                transform: translateX(20px);
            }
            to {
                opacity: 1;
                filter: blur(0px);
                transform: translateX(0);
            }
        }

        @keyframes blurzoom {
            to {
                opacity: 1;
                animation-fill-mode: forwards;
                transform: scale(1.6);
            }
        }

        @keyframes zoomOutFadeOutSlideUp {
            0% { opacity: 1; transform: scale(1); filter: blur(0px); }
            100% { opacity: 0; transform: scale(0.7); filter: blur(40px); }
        }

        @keyframes zoomInFadeInSlideDown {
            0% { opacity: 0; transform: scale(0.7); filter: blur(40px); }
            100% { opacity: 1; transform: scale(1); filter: blur(0); }
        }

        @keyframes slideInFromTop {
            from {
                opacity: 0;
                transform: translateY(-40px);
                filter: blur(10px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
                filter: blur(0px);
            }
        }

        .tip-container {
            position: absolute;
            bottom: 1vw;
            right: 1vw;
            background-color: rgba(0, 0, 0, 0.2);
            color: white;
            filter: blur(10px);
            padding: 10px 20px;
            border-radius: 5px;
            display: flex;
            align-items: center;
            opacity: 0;
            transform: translateY(-40px);
            animation: slideInFromTop 1s ease-out forwards;
            animation-delay: 2s;
            z-index: 10000000000;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .tip-container:hover {
            transform: translateY(-10px);
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
        }

        .tip-text {
            margin-right: 10px;
        }

        .close-button {
            cursor: pointer;
            font-size: 1.2em;
            transform: rotate(90deg);
        }
    </style>

    <div id="container" style="scroll-snap-type: y mandatory;">
        <div class="slide" style="background-image: url('slide 0 background.jpg');">
            <h2>Movies</h2>
            <h1>Movies are a way for people to escape from reality and enjoy something that may or may not be real.</h1>
            <p>With this, people watch them together, to pass time, to enjoy the moment.</p>
            <div class="newdiv">
                <p>- Here are some well known movies</p>
            </div>
            <div class="tip-container" id="tipContainer">
                <span class="tip-text">Tip: Middle click to open menu selector.</span>
                <span class="close-button" onclick="dismissTip()">×</span>
            </div>
        </div>

        <div class="slide" style="background-image: url('avengers background.jpg');">
            <h2>The Avengers</h2>
            <ul class="info-graph">
                <p>Nick Fury and the spy agency S.H.I.E.L.D. recruit Tony Stark, Steve Rogers, Bruce Banner, Thor, Natasha Romanoff, and Clint Barton to form a team capable of stopping Thor's brother Loki from subjugating Earth. Robert Downey Jr</p>
            </ul>
            <ul class="info-list">
                <li><span class="views-label">Budget:</span> <span class="views-value">220 million</span></li>
                <li><span class="views-label">Gross:</span> <span class="views-value">1.5 billion</span></li>
            </ul>
            <div class="arrow" onclick="handleArrowClick('avengers.aspx')"></div>
        </div>

        <div class="slide" style="background-image: url('finding nemo background.jpg');">
            <h2>Finding Nemo</h2>
            <ul class="info-graph">
                <p>Finding Nemo follows the epic journeys of two fish, the overly cautious Marlin and his curious son, Nemo, who become separated in the Great Barrier Reef when Nemo is taken from his ocean home.</p>
            </ul>
            <ul class="info-list">
                <li><span class="views-label">Budget:</span> <span class="views-value">94 million</span></li>
                <li><span class="views-label">Gross:</span> <span class="views-value">940 million</span></li>
            </ul>
            <div class="arrow" onclick="handleArrowClick('findingnemo.aspx')"></div>
        </div>

        <div class="slide" style="background-image: url('lord of the rings background.jpg');">
            <h2>The Lord of the Rings</h2>
            <ul class="info-graph">
                <p>Nick Fury and the spy agency S.H.I.E.L.D. recruit Tony Stark, Steve Rogers, Bruce Banner, Thor, Natasha Romanoff, and Clint Barton to form a team capable of stopping Thor's brother Loki from subjugating Earth. Robert Downey Jr.</p>
            </ul>
            <ul class="info-list">
                <li><span class="views-label">Budget:</span> <span class="views-value">93 million</span></li>
                <li><span class="views-label">Gross:</span> <span class="views-value">898 million</span></li>
            </ul>
            <div class="arrow" onclick="handleArrowClick('lotr.aspx')"></div>
        </div>

        <div class="slide" style="background-image: url('star wars background.jpg');">
            <h2>Star wars</h2>
            <ul class="info-graph">
                <p>A space opera set “a long time ago in a galaxy far, far away,” the film centres on Luke Skywalker (played by the then relatively unknown Mark Hamill), a young man who finds himself embroiled in an interplanetary war between an authoritarian empire and rebel forces.</p>
            </ul>
            <ul class="info-list">
                <li><span class="views-label">Budget:</span> <span class="views-value">76.5 million</span></li>
                <li><span class="views-label">Gross:</span> <span class="views-value">10 billion(totalling)</span></li>
            </ul>
            <div class="arrow" onclick="handleArrowClick('starwars.aspx')"></div>
        </div>

        <div class="slide" style="background-image: url('titanic background.jpg');">
            <h2>Titanic</h2>
            <ul class="info-graph">
                <p>Incorporating both historical and fictionalized aspects, it is based on accounts of the sinking of RMS Titanic in 1912. Kate Winslet and Leonardo DiCaprio star as members of different social classes who fall in love during the ship's maiden voyage.</p>
            </ul>
            <ul class="info-list">
                <li><span class="views-label">Budget:</span> <span class="views-value">295 million</span></li>
                <li><span class="views-label">Gross:</span> <span class="views-value">2.2 billion</span></li>
            </ul>
            <div class="arrow" onclick="handleArrowClick('titanic.aspx')"></div>
        </div>
    </div>

    <script>
        function fadeOutAndRedirect(redirectLocation) {
            document.body.style.opacity = 0;
            setTimeout(() => {
                window.location.href = redirectLocation;
            }, 500);
        }

        const container = document.getElementById('container');
        const slides = Array.from(container.children);
        let currentSlide = 0;
        let isScrolling = false;

        container.addEventListener('wheel', (event) => {
            if (isScrolling) return;
            isScrolling = true;
            setTimeout(() => { isScrolling = false; }, 500);

            const direction = event.deltaY > 0 ? 1 : -1;
            const newSlide = Math.max(Math.min(currentSlide + direction, slides.length - 1), 0);

            if (newSlide === currentSlide) return;

            currentSlide = newSlide;

            const activeSlide = slides[currentSlide];
            const previousSlide = slides[currentSlide - direction] || slides[slides.length - 1];

            previousSlide.style.animation = direction === 1 ? 'zoomOutFadeOutSlideUp 1.7s' : 'zoomOutFadeOutSlideDown 1.7s';
            activeSlide.style.animation = direction === 1 ? 'zoomInFadeInSlideDown 1.7s' : 'zoomInFadeInSlideUp 1.7s';

            activeSlide.classList.add('active');

            const scrollPosition = activeSlide.offsetTop - (window.innerHeight / 2) + (activeSlide.offsetHeight / 2);
            window.scrollTo({ top: scrollPosition, behavior: 'smooth' });

            setTimeout(() => {
                previousSlide.style.animation = '';
                activeSlide.style.animation = '';
            }, 1700);

            slides.forEach((slide, index) => {
                if (index !== currentSlide) {
                    slide.classList.remove('active');
                }
            });
        });

        function dismissTip() {
            const tipContainer = document.getElementById('tipContainer');
            tipContainer.style.display = 'none';
        }

        function handleArrowClick(redirectLocation) {
            const activeSlide = slides[currentSlide];
            const clone = activeSlide.cloneNode(true);

            clone.style.zIndex = '10';
            clone.style.animation = 'blurzoom 1.3s forwards ease-in-out';
            clone.style.position = 'fixed';
            clone.style.top = '0';
            clone.style.left = '0';
            clone.style.width = '100%';
            clone.style.height = '100%';

            clone.querySelectorAll('*').forEach(element => element.innerHTML = '');

            container.innerHTML = '';
            container.appendChild(clone);

            setTimeout(() => {
                window.location.href = redirectLocation;
            }, 1200);
        }
    </script>

    </body>
    </html>
</asp:Content>