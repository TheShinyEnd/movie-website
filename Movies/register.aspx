﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="Register" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<!DOCTYPE html>
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Register</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
                    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
</head>

<body>

    
        <script>
            window.onbeforeunload = function () {
                document.body.style.opacity = 0;
            }

        </script>

    <style>




@keyframes fadeIn {
    0% {
        opacity: 0;
    }
    100% {
        opacity: 1;
    }
}
html {
    font-family: 'Roboto', sans-serif;
    background: #0D133A;
    height: 100%;
    font-size: 100%;
    text-size-adjust: 100%;
    -ms-text-size-adjust: 100%;
    overflow: hidden;
    position: relative;
    background-color: black;
}

body {
    height: 100%;
    overflow: hidden;
    margin: 0;
    font-size: 1em;
    line-height: 1.4;
    position: relative;
        font-family: 'Roboto', sans-serif;
    font-weight: 300;
    background-color: black;
    animation: fadeIn 2.4s;
    transition: opacity 1.6s ease-out;
    
}

img {
    border: 0;
    -ms-interpolation-mode: bicubic;
    vertical-align: middle;
}

svg:not(:root) {
    overflow: hidden;
}


/* Animation globals
  ---------------------------------------------- */
  #landscape, .land, #bottom, .stags,.stag, .counter:before, #lensFlare, .sunMask{
    animation-duration: 60s;
    animation-iteration-count: infinite;
    animation-timing-function: linear;  
  }

/* Background gradients
  ---------------------------------------------- */
  #sky{
    height: 60%;
    margin-bottom: -6px;
    position: absolute;
    top: 0px;
    z-index: 2;
  }
#sky-rect{height:100%;}

  #reflection, #sunMask{
    height: 40%;
    position: absolute;
    top: 60%;
    z-index: 4;
  }
#reflection-rect{height:100%;}
  #sunMask{
    background: #0D133A;
    height: 40%;
    position: absolute;
    top: 60%;
    width: 100%;
  }

/* Stag
  ---------------------------------------------- */
  #stag{
    position: absolute;
    bottom: 15.3%;
    width: 6.3%;
    left: 38%;
    z-index: 5;
  }
  .stag{
    width:100%;
    position: absolute;
    bottom: 0px;
  }
  .stags{
    animation-name: stags;
    animation-delay:1s;
  }
  @keyframes stags{ 
    0% { fill:#0D141E;}
    4% { fill:#101522;}
    8% { fill:#121726;}
    12% { fill:#141829;}
    16% { fill:#1C1E3C;}
    20% { fill:#22214F;}
    24% { fill:#262262;}
    28% { fill:#1D4065;}
    32% { fill:#125768;}
    36% { fill:#1E4553;}
    40% { fill:#1E404E;}
    44% { fill:#1E3B49;}
    48% { fill:#1D3643;}
    52% { fill:#1C313E;}
    56% { fill:#1C3344;}
    60% { fill:#1C3449;}
    64% { fill:#1B344F;}
    68% { fill:#183454;}
    72% { fill:#242B4A;}
    76% { fill:#2B2241;}
    80% { fill:#24203C;}
    84% { fill:#1D1D37;}
    88% { fill:#151A32;}
    92% { fill:#14192C;}
    96% { fill:#111725;}
    100% { fill:#0D141E;}
  }
  #stag1{
    animation-name: stag_one;
    width: 108%;
    left: -20%;
    
  }
  @keyframes stag_one{ 
    0% {opacity:1.0;}
    15% {opacity:1.0;}
    20% {opacity:0.0;}
    90% {opacity:0.0;}
    95% {opacity:1.0;}
    100% {opacity:1.0;}
  }
  #stag2{
    animation-name: stag_two;
  }
  @keyframes stag_two{ 
    0% {opacity:0.0;}
    17% {opacity:0.0;}
    20% {opacity:1.0;}
    40% {opacity:1.0;}
    45% {opacity:0.0;}
    65% {opacity:0.0;}
    70% {opacity:1.0;}
    90% {opacity:1.0;}
    95% {opacity:0.0;}
    100% {opacity:0.0;}
  }
  #stag3{
    animation-name: stag_three;
    width: 144%;
    left: -10%;
    bottom: -3%;
  }
  @keyframes stag_three{ 
    0% {opacity:0.0;}
    15% {opacity:0.0;}
    20% {opacity:0.0;}
    40% {opacity:0.0;}
    45% {opacity:1.0;}
    65% {opacity:1.0;}
    70% {opacity:0.0;}
    100% {opacity:0.0;}
  }

/* Sun
  ---------------------------------------------- */
  .sunMask{
    position:absolute;
    width:100%;
    height:100%;
    -webkit-mask-image: gradient(linear, left 50%, left 60%, from(rgba(0,0,0,1)), to(rgba(0,0,0,0)));
    z-index: 4;
    mix-blend-mode: screen;  
    animation-name: sunFocus;
  }
  @keyframes sunFocus{ 
    0% { filter: blur(10px);opacity:0;}
    16% {filter: blur(10px);}
    20% {filter: blur(10px);}
    25% {filter: blur(5px);opacity:0;}
    30% {filter: blur(0px);opacity:1;}
    80% {filter: blur(0px);opacity:1;}
    88% {filter: blur(5px);opacity:0;}
    100% {filter: blur(10px);opacity:0;}
  }
  .sun{
    width: 100%;
    padding-bottom: 100%;
    position:absolute;   
    right: -51%;
    top: -330%;
  }
  .sun div{
    background: transparent url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/21555/sun.svg);
    position: absolute;
    top: 0; bottom: 0; left: 0; right: 0;
  }    
  .suncrane{
    animation: suncrane 60s linear infinite; 
    position:absolute;
    width: 21%;
    height: 4%;
    background: transparent;
    margin: auto;
    top: 57%;
    left: 0;
    right: 0;
  }
  @keyframes suncrane{ 
    0% {transform:rotate(90deg);}
    100% {transform:rotate(-270deg);}
  }
  .sun:before{
    display:block; 
    content:' '; 
    animation: glare 60s linear infinite;  
    position:absolute;
    width: 120%;
    height: 120%;
    background: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/21555/glare.svg) no-repeat scroll center;
    top: -10%;
    left: -10%;
    background-size: 100%;
  } 

  @keyframes glare{ 
    from {transform:rotate(90deg);opacity:0.0;}
    30%{opacity:0.0;}
    36%{opacity:1.0;}
    68%{opacity:1.0;}
    74%{opacity:0.0;}
    to {transform:rotate(450deg);opacity:0.0;}
  }


  .sun:after{display: block; content:' '; position:absolute;background: white;width: 10%;height: 10%;top: 45%;border-radius: 100%;margin: auto;left: 0;right: 0;box-shadow: 0px 0px 80px 30px white;}

/* Clouds
  ---------------------------------------------- */
  .clouds{
    position: absolute;
    width: 100%;
    z-index: 4;  mix-blend-mode: screen;
    height: 100%;
  }
  .clouds svg{
    width: 60%;
    position: absolute;
    top: 51%;
    filter: blur(2px);
    opacity: 0.4;
    left: -60%;
    animation-duration: 60s;
    animation-iteration-count: infinite;
    animation-timing-function: linear;  
  animation-name: clouds;
  }
  @keyframes clouds{ 
    0% {transform: translate3d(110%, 0px, 0px);opacity: 0.0;}
    19%{opacity: 0.0;filter: blur(5px);}
    25%{opacity: 0.3;filter: blur(2px);}
    50%{opacity: 0.6;}
    75%{opacity: 0.2;}
    90%{opacity: 0.0;}
    100% {transform: translate3d(150%, 0px, 0px);opacity: 0.0}
  }

/* Lens flare
  ---------------------------------------------- */
  .lighting{
    width: 100%;
    height: 100%;
    position: absolute;
    z-index: 8;  
    opacity: 0.3;
    -webkit-mask-image: gradient(linear, left 50%, left 60%, from(rgba(0,0,0,1)), to(rgba(0,0,0,1)));
    mix-blend-mode: screen;
    pointer-events: none;
    filter: blur(3px);
  }
  .lighting .suncrane{
    width: 100%;
  }
  #lensFlare{ 
    transform: rotate(16deg) translate3d(9%, -47%, 0px) scale(1); 
    animation-name: flaring;
  }

  @keyframes flaring{ 
    0% { transform: rotate(16deg) translate3d(9%, -47%, 0px) scale(1); opacity: 0.0;}
    28% { transform: rotate(16deg) translate3d(9%, -47%, 0px) scale(1); opacity: 0.0; }
    35% { transform: rotate(16deg) translate3d(9%, -47%, 0px) scale(1); opacity: 1.0; }
    70% { transform: rotate(16deg) translate3d(9%, -47%, 0px) scale(1); opacity: 1.0; } 
    78% { transform: rotate(16deg) translate3d(9%, -47%, 0px) scale(1); opacity: 0.0; }
    100% { transform: rotate(16deg) translate3d(9%, -47%, 0px) scale(1); opacity: 0.0; }
  }

/* Sun on lake twinkles
  ---------------------------------------------- */
  .twinkleWrap{
    position: absolute;
    z-index: 4;
    width:100%;
    height:100%;
    top:0; 
    opacity: 0.55;
  }

  .twinkles{
      width: 2.3%;
      position: absolute;
      right: 49.2%;
      top: 72.5%;
      animation: twinkles 60s linear infinite;
  }
  @keyframes twinkles{ 
    0% {transform: translate(450%, 0%);opacity:0.0;}
    32%{opacity:0.0;}
    34%{opacity:1.0;}
    36.5% {transform: translate(450%, 0%);}
    54% {transform: translate(0%, 0%);}
    72% {transform: translate(-450%, 0%);opacity:1.0;}
    78%{opacity:0.0;}
    100% {transform: translate(-450%, 0%);opacity:0.0;}
  }
  .twinkles:before{
    content:' '; 
    display: none;
    position:absolute;
    height: 600px;
    width:3px;
    background:red;
    top: -600px;
    left: 50%;
  }
  .twinkles svg{
      width: 100%;
      position: absolute;
      top: 0;
  }
  #twinkle1{
    animation: twinkle1 2s linear infinite;
  }
  @keyframes twinkle1{ 
    0% {opacity:1.0;}
    33.33% {opacity:0.0;}
    66.66% {opacity:0.0;}
    99.99% {opacity:1.0;}
    100% {opacity:1.0;}
  }
  #twinkle2{  animation: twinkle2 2s linear infinite;
  }
  @keyframes twinkle2{ 
    0% {opacity:0.0;}
    33.33% {opacity:1.0;}
    66.66% {opacity:0.0;}
    99.99% {opacity:0.0;}
    100% {opacity:0.0;}
  }
  #twinkle3{ animation: twinkle3 2s linear infinite;
  }
  @keyframes twinkle3{ 
    0% {opacity:0.0;}
    33.33% {opacity:0.0;}
    66.66% {opacity:1.0;}
    99.99% {opacity:0.0;}
    100% {opacity:0.0;}
  }

/* Vignette
  ---------------------------------------------- */
  .vignette{
    background: radial-gradient(transparent 60%, rgb(1, 14, 39) 130%);
    background-size: cover;
    height: 100%;
    z-index: 9;
    position: absolute;
    width: 100%; 
    pointer-events: none;
}

/* Stars
  ---------------------------------------------- */
  .stars{
    height: 100%;
    z-index: 2;
    position: absolute;
    width: 100%; 
     
    overflow: hidden;
  }
  .starWrap{
    height: 60%;
    width: 100%; 
    position:relative;
  }
  .starProject{
    overflow: hidden;
  }
  .starReflect{
    overflow: hidden;
    height: 40%;
    opacity: 0.9;
    top: 1%;
  }
  #stars{
    position: absolute;
    width: 120%;
    border-radius: 100%;
    margin: auto;
    left: -10%;
    right: 0;
    animation: stars 120s linear infinite;  
    transform: rotate(0deg);
    top: -35%;
  }

  @keyframes stars{ 
    100% {transform: rotate(-360deg);}
  }

  #starReflection{
    position: absolute;
    width: 120%;
    border-radius: 100%;
    margin: auto;
    left: -10%;
    right: 0;
    animation: starsReflect 120s linear infinite;  
    transform: rotate(0deg);
    top:initial;
    bottom: -102%;
  }
  @keyframes starsReflect{ 
    100% {transform: rotate(360deg);}
  }

/* Sprites 
  ----------------------------------------------- */
  .spriteWrap{
    height: 100%;
    width: 100%;
    position: absolute;
    z-index: 13;
    animation: sprites 60s linear infinite;    
    pointer-events: none;
  }
  @keyframes sprites{ 
    0% {opacity:0.8;}
    20% {opacity:0.8;}
    25%{opacity:0.0;}
    73% {opacity:0.0;}
    90% {opacity:0.8;}
    100% {opacity:0.8;}
  }

  #sprites{
    height: 100%;
    width: 100%;
  }

/* Landscape
  ---------------------------------------------- */
  #landscape{
    width: 100.02%;
    position: absolute;
    bottom: 11%;
    z-index: 5;
    animation-name: focus;
  }
   @keyframes focus{ 
    0% { filter: blur(5px);}
    16% {filter: blur(2px);}
    20% {filter: blur(0px);}
    80% {filter: blur(0px);}
    88% {filter: blur(2px);}
    100% {filter: blur(5px);}
  }

  #bottom{
    animation-name: bottomFill;
    height: 100%;
    position: absolute;
    top: 88%;
    width: 100%;
    z-index: 5;
    animation-delay:1s;
  }
  @keyframes bottomFill{ 
    0% { background:#0D141E; }
    4% { background:#101522; }
    8% { background:#121726; }
    12% { background:#141829; }
    16% { background:#1C1E3C; }
    20% { background:#22214F; }
    24% { background:#262262; }
    28% { background:#1D4065; }
    32% { background:#125768; }
    36% { background:#1E4553; }
    40% { background:#1E404E; }
    44% { background:#1E3B49; }
    48% { background:#1D3643; }
    52% { background:#1C313E; }
    56% { background:#1C3344; }
    60% { background:#1C3449; }
    64% { background:#1B344F; }
    68% { background:#183454; }
    72% { background:#242B4A; }
    76% { background:#2B2241; }
    80% { background:#24203C; }
    84% { background:#1D1D37; }
    88% { background:#151A32; }
    92% { background:#14192C; }
    96% { background:#111725; }
    100% { background:#0D141E; }
  }

  /* Land - layer 1 animation */
  #landscape .layer1 {
      fill:#F1F2F2;
      animation-name: layer1;
      animation-delay:1s;
  }
  @keyframes layer1{ 
    0% { fill:#244154; }
    4% { fill:#344358; }
    8% { fill:#42465D; }
    12% { fill:#4F4761; }
    16% { fill:#7E5773; }
    20% { fill:#A3517F; }
    24% { fill:#F3829F; }
    28% { fill:#D4B2AF; }
    32% { fill:#AEDABB; }
    36% { fill:#A1D6D6; }
    40% { fill:#9ED5DD; }
    44% { fill:#9AD4E4; }
    48% { fill:#97D3EA; }
    52% { fill:#92D3F4; }
    56% { fill:#95C8DA; }
    60% { fill:#96BDC5; }
    64% { fill:#96B3B2; }
    68% { fill:#96AA9E; }
    72% { fill:#AF866A; }
    76% { fill:#C0633B; }
    80% { fill:#9D5E51; }
    84% { fill:#7B5960; }
    88% { fill:#59546D; }
    92% { fill:#484E64; }
    96% { fill:#37475C; }
    100% { fill:#244154; }
  }

  /* Land - layer 2 animation */
  #landscape .layer2 {
      fill:#E6E7E8;
      animation-name: layer2;
      animation-delay:1s;
  }
  @keyframes layer2{ 
    0% { fill:#0F2B46; }
    4% { fill:#1C2D4A; }
    8% { fill:#272E4E; }
    12% { fill:#302F52; }
    16% { fill:#663966; }
    20% { fill:#913776; }
    24% { fill:#D94A93; }
    28% { fill:#BB94AD; }
    32% { fill:#76CCCE; }
    36% { fill:#6BAEC9; }
    40% { fill:#62A7CA; }
    44% { fill:#59A0CB; }
    48% { fill:#5099CC; }
    52% { fill:#4692CF; }
    56% { fill:#4D8FBD; }
    60% { fill:#518CAF; }
    64% { fill:#548AA1; }
    68% { fill:#578793; }
    72% { fill:#7E6768; }
    76% { fill:#8F4244; }
    80% { fill:#74404D; }
    84% { fill:#593D55; }
    88% { fill:#393B5D; }
    92% { fill:#2C3655; }
    96% { fill:#1F304E; }
    100% { fill:#0F2B46; }
  }

  /* Land - layer 3 animation */
  #landscape .layer3 {
      fill:#D1D3D4;
      animation-name: layer3;
      animation-delay:1s;
  }
  @keyframes layer3{ 
    0% { fill:#0F2944; }
    4% { fill:#1B2B47; }
    8% { fill:#252C4B; }
    12% { fill:#2E2D4E; }
    16% { fill:#5F3663; }
    20% { fill:#863572; }
    24% { fill:#C8458D; }
    28% { fill:#A48BAB; }
    32% { fill:#68BFC7; }
    36% { fill:#54A4C8; }
    40% { fill:#4F9EC8; }
    44% { fill:#4B98C7; }
    48% { fill:#4691C7; }
    52% { fill:#408BC8; }
    56% { fill:#4688B7; }
    60% { fill:#4984A9; }
    64% { fill:#4C819C; }
    68% { fill:#4E7E8F; }
    72% { fill:#776167; }
    76% { fill:#893E45; }
    80% { fill:#6F3C4C; }
    84% { fill:#543A52; }
    88% { fill:#353758; }
    92% { fill:#2A3351; }
    96% { fill:#1E2E4A; }
    100% { fill:#0F2944; }
  }

  /* Land - layer 4 animation */
  #landscape .layer4 {
      fill:#BCBEC0;
      animation-name: layer4;
      animation-delay:1s;
  }
  @keyframes layer4{ 
    0% { fill:#0F2841; }
    4% { fill:#1A2945; }
    8% { fill:#232A48; }
    12% { fill:#2B2A4B; }
    16% { fill:#59335F; }
    20% { fill:#7C336D; }
    24% { fill:#B84089; }
    28% { fill:#9683A5; }
    32% { fill:#57B5C1; }
    36% { fill:#4798BD; }
    40% { fill:#4391BC; }
    44% { fill:#408BBB; }
    48% { fill:#3D85BA; }
    52% { fill:#397FBA; }
    56% { fill:#3E7DAC; }
    60% { fill:#407AA1; }
    64% { fill:#427896; }
    68% { fill:#44768B; }
    72% { fill:#705B66; }
    76% { fill:#823B46; }
    80% { fill:#69394B; }
    84% { fill:#503650; }
    88% { fill:#323454; }
    92% { fill:#27304D; }
    96% { fill:#1C2C47; }
    100% { fill:#0F2841; }
  }

  /* Land - layer 5 animation */
  #landscape .layer5 {
      fill:#A7A9AC;
      animation-name: layer5;
      animation-delay:1s;
  }
  @keyframes layer5{ 
    0% { fill:#0E263F; }
    4% { fill:#192742; }
    8% { fill:#212745; }
    12% { fill:#292848; }
    16% { fill:#51305B; }
    20% { fill:#6E3068; }
    24% { fill:#A23B82; }
    28% { fill:#84799F; }
    32% { fill:#44AABC; }
    36% { fill:#3A8DB3; }
    40% { fill:#3887B1; }
    44% { fill:#3680AF; }
    48% { fill:#347AAD; }
    52% { fill:#3273AB; }
    56% { fill:#3672A1; }
    60% { fill:#387198; }
    64% { fill:#396F90; }
    68% { fill:#3A6E87; }
    72% { fill:#695565; }
    76% { fill:#7C3747; }
    80% { fill:#64354A; }
    84% { fill:#4B334D; }
    88% { fill:#2E314F; }
    92% { fill:#252D4A; }
    96% { fill:#1B2A44; }
    100% { fill:#0E263F; }
  }

  /* Land - layer 6 animation */
  #landscape .layer6 {
      fill:#939598;
      animation-name: layer6;
      animation-delay:1s;
  }
  @keyframes layer6{ 
    0% { fill:#0E243C; }
    4% { fill:#18253F; }
    8% { fill:#202542; }
    12% { fill:#262544; }
    16% { fill:#482C56; }
    20% { fill:#612D63; }
    24% { fill:#8D357C; }
    28% { fill:#6F719B; }
    32% { fill:#00A1BC; }
    36% { fill:#2583A8; }
    40% { fill:#287CA3; }
    44% { fill:#2A759F; }
    48% { fill:#2D6F9A; }
    52% { fill:#2E6895; }
    56% { fill:#2F6891; }
    60% { fill:#30678D; }
    64% { fill:#306788; }
    68% { fill:#306683; }
    72% { fill:#625064; }
    76% { fill:#753347; }
    80% { fill:#5E3249; }
    84% { fill:#47304A; }
    88% { fill:#2B2E4B; }
    92% { fill:#222A46; }
    96% { fill:#192741; }
    100% { fill:#0E243C; }
  }

  /* Land - layer 7 animation */
  #landscape .layer7 {
      fill:#808285;
      animation-name: layer7;
      animation-delay:1s;
  }
  @keyframes layer7{ 
    0% { fill:#102237; }
    4% { fill:#18223A; }
    8% { fill:#1E233D; }
    12% { fill:#242340; }
    16% { fill:#402952; }
    20% { fill:#542A5E; }
    24% { fill:#793177; }
    28% { fill:#5F668F; }
    32% { fill:#0A8FA7; }
    36% { fill:#237595; }
    40% { fill:#256F90; }
    44% { fill:#27698C; }
    48% { fill:#286387; }
    52% { fill:#285D82; }
    56% { fill:#285E82; }
    60% { fill:#285F81; }
    64% { fill:#275F81; }
    68% { fill:#255F7F; }
    72% { fill:#574A63; }
    76% { fill:#683148; }
    80% { fill:#542F48; }
    84% { fill:#3F2D47; }
    88% { fill:#242742; }
    92% { fill:#202841; }
    96% { fill:#19253C; }
    100% { fill:#102237; }
  }

  /* Land - layer 8 animation */
  #landscape .layer8 {
      fill:#6D6E71;
      animation-name: layer8;
      animation-delay:1s;
  }
  @keyframes layer8{ 
    0% { fill:#111F31; }
    4% { fill:#172034; }
    8% { fill:#1C2037; }
    12% { fill:#20213B; }
    16% { fill:#37274C; }
    20% { fill:#472759; }
    24% { fill:#662C71; }
    28% { fill:#4F5C83; }
    32% { fill:#118095; }
    36% { fill:#206983; }
    40% { fill:#21637E; }
    44% { fill:#225D7A; }
    48% { fill:#225775; }
    52% { fill:#225270; }
    56% { fill:#235372; }
    60% { fill:#235574; }
    64% { fill:#235675; }
    68% { fill:#235676; }
    72% { fill:#4C445F; }
    76% { fill:#5B2F49; }
    80% { fill:#4A2C47; }
    84% { fill:#382A44; }
    88% { fill:#242742; }
    92% { fill:#1E253D; }
    96% { fill:#182338; }
    100% { fill:#111F31; }
  }

  /* Land - layer 9 animation */
  #landscape .layer9 {
      fill:#58595B;
      animation-name: layer9;
      animation-delay:1s;
  }
  @keyframes layer9{ 
    0% { fill:#111C2B; }
    4% { fill:#151D2E; }
    8% { fill:#191E32; }
    12% { fill:#1D1E35; }
    16% { fill:#2F2447; }
    20% { fill:#3A2454; }
    24% { fill:#52296C; }
    28% { fill:#405279; }
    32% { fill:#137185; }
    36% { fill:#1C5C72; }
    40% { fill:#1C576E; }
    44% { fill:#1C5269; }
    48% { fill:#1B4C64; }
    52% { fill:#1A475F; }
    56% { fill:#1C4A63; }
    60% { fill:#1E4B67; }
    64% { fill:#1F4D6A; }
    68% { fill:#204E6D; }
    72% { fill:#413E5A; }
    76% { fill:#4E2D49; }
    80% { fill:#402A45; }
    84% { fill:#312742; }
    88% { fill:#20243E; }
    92% { fill:#1B2238; }
    96% { fill:#171F32; }
    100% { fill:#111C2B; }
  }

  /* Land - layer 10 animation */
  #landscape .layer10 {
      fill:#414042;
      animation-name: layer10;
      animation-delay:1s;
  }
  @keyframes layer10{ 
    0% { fill:#101825; }
    4% { fill:#131928; }
    8% { fill:#161A2C; }
    12% { fill:#181B2F; }
    16% { fill:#262141; }
    20% { fill:#2C214F; }
    24% { fill:#3D2567; }
    28% { fill:#30486F; }
    32% { fill:#136476; }
    36% { fill:#165163; }
    40% { fill:#154C5E; }
    44% { fill:#144759; }
    48% { fill:#134254; }
    52% { fill:#113D4F; }
    56% { fill:#154055; }
    60% { fill:#19425A; }
    64% { fill:#1B445F; }
    68% { fill:#1E4564; }
    72% { fill:#363856; }
    76% { fill:#412A49; }
    80% { fill:#352744; }
    84% { fill:#29243F; }
    88% { fill:#1C203A; }
    92% { fill:#191F33; }
    96% { fill:#151C2C; }
    100% { fill:#101825; }
  }

  /* Land - layer 11 animation */
  #landscape .layer11 {
      fill:#232323;
      animation-name: layer11;
      animation-delay:1s;
  }
  @keyframes layer11{ 
    0% { fill:#0D141E;  transform: skew(0deg, 0deg) translate3d(0px, 0px, 0px);}
    4% { fill:#101522;  transform: skew(1deg, 0deg) translate3d(-0.5%, 0px, 0px);}
    8% { fill:#121726;  transform: skew(0deg, 0deg) translate3d(0px, 0px, 0px);}
    12% { fill:#141829; transform: skew(-1deg, 0deg) translate3d(0.5%, 0px, 0px);}
    16% { fill:#1C1E3C; transform: skew(0deg, 0deg) translate3d(0px, 0px, 0px);}
    20% { fill:#22214F; transform: skew(1deg, 0deg) translate3d(-0.5%, 0px, 0px);}
    24% { fill:#262262; transform: skew(0deg, 0deg) translate3d(0px, 0px, 0px);}
    28% { fill:#1D4065; transform: skew(-1deg, 0deg) translate3d(0.5%, 0px, 0px);}
    32% { fill:#125768; transform: skew(0deg, 0deg) translate3d(0px, 0px, 0px);}
    36% { fill:#1E4553; transform: skew(1deg, 0deg) translate3d(-0.5%, 0px, 0px);}
    40% { fill:#1E404E; transform: skew(0deg, 0deg) translate3d(0px, 0px, 0px);}
    44% { fill:#1E3B49; transform: skew(-1deg, 0deg) translate3d(0.5%, 0px, 0px);}
    48% { fill:#1D3643; transform: skew(0deg, 0deg) translate3d(0px, 0px, 0px);}
    52% { fill:#1C313E; transform: skew(1deg, 0deg) translate3d(-0.5%, 0px, 0px);}
    56% { fill:#1C3344; transform: skew(0deg, 0deg) translate3d(0px, 0px, 0px);}
    60% { fill:#1C3449; transform: skew(-1deg, 0deg) translate3d(0.5%, 0px, 0px);}
    64% { fill:#1B344F; transform: skew(0deg, 0deg) translate3d(0px, 0px, 0px);}
    68% { fill:#183454; transform: skew(1deg, 0deg) translate3d(-0.5%, 0px, 0px);}
    72% { fill:#242B4A; transform: skew(0deg, 0deg) translate3d(0px, 0px, 0px);}
    76% { fill:#2B2241; transform: skew(-1deg, 0deg) translate3d(0.5%, 0px, 0px);}
    80% { fill:#24203C; transform: skew(0deg, 0deg) translate3d(0px, 0px, 0px);}
    84% { fill:#1D1D37; }
    88% { fill:#151A32; }
    92% { fill:#14192C; }
    96% { fill:#111725; }
    100% { fill:#0D141E; }
  }

/* Aspect ratio media queries
  ---------------------------------------------- */

  /* 3/2 and 6/1 -- out of range*/
  @media screen and (min-aspect-ratio: 3/1) and (max-aspect-ratio: 6/1){
    body{background: rgb(31, 60, 80);}
    body:before{content:'Aspect ratio out of range - too wide';color: white;text-align: center;width: 100%;height: 100%;display: block;position: absolute;top: 50%;}
    #sky, #reflection, #sunMask, #landscape, #bottom, #stag, .controls, .stars, .sunMask, .clouds, .lighting, .vignette, .twinkleWrap,.spriteWrap{display: none;}
  }

  /* 14/5 and 3/1 */
  @media screen and (min-aspect-ratio: 14/5) and (max-aspect-ratio: 7/2){
    .twinkles{}
    #reflection, #sunMask{height: 42%;}
    #landscape{bottom: -3%;}
    #bottom{top: 101%;}
    #stag{bottom: 3%;}
    .sun{top: -570%;}
    .twinkles{top: 77%;}
  }
  /* 5/2 and 14/5 */
  @media screen and (min-aspect-ratio: 5/2) and (max-aspect-ratio: 14/5){
    .twinkles{top: 75%;}
    #reflection, #sunMask{}
    #landscape{bottom: 1%;}
    #bottom{top: 98%;}
    #stag{bottom: 7%;}
    .sun{top: -532%;}
  }
  /* 9/4 and 5/2 */
  @media screen and (min-aspect-ratio: 9/4) and (max-aspect-ratio: 5/2){
    .twinkles{top: 75%;}
    #reflection, #sunMask{height: 40%;}
    #landscape{bottom: 5%;}
    #bottom{top: 94%;}
    #stag{bottom: 10%;}
    .sun{top: -452%;}
  }
  /* 11/5 and 9/4 */
  @media screen and (min-aspect-ratio: 11/5) and (max-aspect-ratio: 9/4){
    .twinkles{}
    #reflection, #sunMask{}
    #landscape{bottom: 6%;}
    #bottom{top: 93%;}
    #stag{
    bottom: 11%;}
    .sun{top: -410%;}
  }
  /* 13/6 and 11/5 */
  @media screen and (min-aspect-ratio: 13/6) and (max-aspect-ratio: 11/5){
    .twinkles{}
    #reflection, #sunMask{height: 37%;}
    #landscape{bottom: 6%;}
    #bottom{top: 93%;}
    #stag{bottom: 11%;}
    .sun{}
  }

  /* 15/7 and 13/6 */
  @media screen and (min-aspect-ratio: 15/7) and (max-aspect-ratio: 13/6){
    .twinkles{}
    #reflection, #sunMask{height: 31%;}
    #landscape{bottom: 7%;}
    #bottom{top: 92%;}
    #stag{bottom: 12%;}
    .sun{}
  }

  /* 2/1 and 15/7 */
  @media screen and (min-aspect-ratio: 2/1) and (max-aspect-ratio: 15/7){
    .twinkles{}
    #reflection, #sunMask{height: 31%;}
    #landscape{bottom: 8%;}
    #bottom{top: 91%;}
    #stag{bottom: 12%;}
    .sun{top: -370%;}
  }

  @media screen and (min-aspect-ratio: 15/8) and (max-aspect-ratio: 2/1){
    .twinkles{}
    #reflection, #sunMask{height: 30%;}
    #landscape{}
    #bottom{}
    #stag{bottom: 15%;}
    .sun{}
  }

  /* 7/4 and 15/8 */
  @media screen and (min-aspect-ratio: 7/4) and (max-aspect-ratio: 15/8){
    .twinkles{top: 71%;}
    #reflection, #sunMask{height: 28%;}
    #landscape{bottom: 13%;}
    #bottom{top: 86%;}
    #stag{bottom: 17%;}
    .sun{top: -300%;}
  }
  /* 11/7 and 7/4 */
  @media screen and (min-aspect-ratio: 11/7) and (max-aspect-ratio: 7/4){
    .twinkles{top: 69%;}
    #reflection, #sunMask{height: 24%;}
    #landscape{bottom: 16%;}
    #bottom{top: 83%;}
    #stag{bottom: 20%;}
    .sun{top: -270%;}
  }
  /* 13/9 and 11/7 */
  @media screen and (min-aspect-ratio: 13/9) and (max-aspect-ratio: 11/7){
    .twinkles{top: 68%;}
    #reflection, #sunMask{height: 22%;}
    #landscape{bottom: 18%;}
    #bottom{top: 81%;}
    #stag{bottom: 21.6%;}
    .sun{top: -240%;}
  }
  /* 4/3 and 13/9 */
  @media screen and (min-aspect-ratio: 4/3) and (max-aspect-ratio: 13/9){
    .twinkles{top: 66%;}
    #reflection, #sunMask{height: 19%;}
    #landscape{bottom: 22%;}
    #bottom{top: 77%;}
    #stag{bottom: 25%;}
    .sun{top: -230%;}
  }
  /* 8/7 and 4/3 */
  @media screen and (min-aspect-ratio: 8/7) and (max-aspect-ratio: 4/3){
    .twinkles{top: 65%;}
    #reflection, #sunMask{height: 18%;}
    #landscape{bottom: 23%;}
    #bottom{top: 76%;}
    #stag{bottom: 25.3%;}
    .sun{top: -180%;}
  }
  /* 14/15 and 8/7 */
  @media screen and (min-aspect-ratio: 14/15) and (max-aspect-ratio: 8/7){
    .twinkles{top: 63%;width: 3%;}
    #reflection, #sunMask{height: 17%;}
    #landscape{bottom: 26%;}
    #bottom{top: 73.8%;}
    #stag{bottom: 28.3%;}
    .sun{top: -140%;}
  }
  /* 5/6 and 14/15 */
  @media screen and (min-aspect-ratio: 5/6) and (max-aspect-ratio: 14/15){
    .twinkles{top: 63%; width: 3%;}
    #reflection, #sunMask{height: 13%;}
    #landscape{bottom: 28%;}
    #bottom{top: 71.5%;}
    #stag{bottom: 30%;}
    .sun{top: -110%;}
  }
  /* 7/10 and 5/6 */
  @media screen and (min-aspect-ratio: 7/10) and (max-aspect-ratio: 5/6){
    .twinkles{top: 62%; width: 3%;}
    #reflection, #sunMask{height: 11%;}
    #landscape{bottom: 30%;}
    #bottom{top: 69.6%;}
    #stag{bottom: 31.8%;}
    .sun{top: -70%;}
  }
  /* 5/9 and 7/10 */
  @media screen and (min-aspect-ratio: 5/9) and (max-aspect-ratio: 7/10){
    .twinkles{top: 62%; width: 3%;}
    #reflection, #sunMask{height: 8%;}
    #landscape{bottom: 32%;}
    #bottom{top: 67.5%;}
    #stag{bottom: 33.5%;}
    .sun{top: -55%;}
  }

  /* 1/10 and 5/9 --- out of range*/
  @media screen and (min-aspect-ratio: 1/10) and (max-aspect-ratio: 5/9){
    body{background: rgb(31, 60, 80);}
    body:before{content:'Aspect ratio out of range - too narrow';color: white;text-align: center;width: 100%;height: 100%;display: block;position: absolute;top: 50%;}
    #sky, #reflection, #sunMask, #landscape, #bottom, #stag, .controls, .stars, .sunMask, .clouds, .lighting, .vignette, .twinkleWrap,.spriteWrap{display: none;}
  }
    </style>

</head>
<body>
    <!-- partial:index.partial.html -->
    <!-- Stars -->
    <div class="stars">
        <div class="starWrap starProject">
            <svg version="1.1" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" viewBox="0 0 599.456 593.71" enable-background="new 0 0 599.456 593.71" xml:space="preserve" id="stars"></svg>
            <circle fill="#FFFFFF" cx="287.793" cy="0.398" r="0.398" />
            <circle fill="#FFFFFF" cx="300.965" cy="15.945" r="0.398" />
            <circle fill="#FFFFFF" cx="306.237" cy="22.961" r="0.398" />
            <circle fill="#FFFFFF" cx="282.496" cy="16.214" r="0.398" />
            <circle fill="#FFFFFF" cx="257.775" cy="32.352" r="0.398" />
            <circle fill="#FFFFFF" cx="287.624" cy="62.283" r="0.398" />
            <circle fill="#FFFFFF" cx="240.963" cy="68.985" r="0.398" />
            <circle fill="#FFFFFF" cx="183.157" cy="79.314" r="0.398" />
            <circle fill="#FFFFFF" cx="146.147" cy="75.118" r="0.398" />
            <circle fill="#FFFFFF" cx="104.511" cy="75.817" r="0.398" />
            <circle fill="#FFFFFF" cx="256.101" cy="75.548" r="0.398" />
            <circle fill="#FFFFFF" cx="238.941" cy="85.554" r="0.398" />
            <circle fill="#FFFFFF" cx="199.887" cy="82.994" r="0.398" />
            <circle fill="#FFFFFF" cx="176.917" cy="65.08" r="0.878" />
            <circle fill="#FFFFFF" cx="198.757" cy="44.455" r="0.398" />
            <circle fill="#FFFFFF" cx="133.344" cy="62.638" r="0.398" />
            <circle fill="#FFFFFF" cx="161.909" cy="57.85" r="0.398" />
            <circle fill="#FFFFFF" cx="157.283" cy="29.393" r="0.398" />
            <circle fill="#FFFFFF" cx="173.604" cy="58.872" r="0.398" />
            <circle fill="#FFFFFF" cx="251.83" cy="18.15" r="0.398" />
            <circle fill="#FFFFFF" cx="233.537" cy="26.273" r="0.398" />
            <circle fill="#FFFFFF" cx="264.063" cy="103.144" r="0.398" />
            <circle fill="#FFFFFF" cx="265.408" cy="108.308" r="0.398" />
            <circle fill="#FFFFFF" cx="269.012" cy="124.984" r="0.398" />
            <circle fill="#FFFFFF" cx="290.991" cy="154.549" r="0.398" />
            <circle fill="#FFFFFF" cx="255.079" cy="145.534" r="0.398" />
            <circle fill="#FFFFFF" cx="245.988" cy="116.754" r="0.398" />
            <circle fill="#FFFFFF" cx="231.55" cy="113.419" r="0.398" />
            <circle fill="#FFFFFF" cx="224.202" cy="123.209" r="0.398" />
            <circle fill="#FFFFFF" cx="229.581" cy="131.709" r="0.398" />
            <circle fill="#FFFFFF" cx="238.134" cy="141.607" r="0.398" />
            <circle fill="#FFFFFF" cx="230.872" cy="153.925" r="0.398" />
            <circle fill="#FFFFFF" cx="180.414" cy="170.709" r="0.398" />
            <circle fill="#FFFFFF" cx="256.317" cy="191.334" r="0.398" />
            <circle fill="#FFFFFF" cx="235.714" cy="193.948" r="0.398" />
            <circle fill="#FFFFFF" cx="224.094" cy="193.948" r="0.398" />
            <circle fill="#FFFFFF" cx="244.321" cy="208.795" r="0.398" />
            <circle fill="#FFFFFF" cx="266.936" cy="221.759" r="0.398" />
            <circle fill="#FFFFFF" cx="291.444" cy="227.999" r="0.398" />
            <circle fill="#FFFFFF" cx="259.652" cy="242.362" r="0.398" />
            <circle fill="#FFFFFF" cx="247.979" cy="240.103" r="0.398" />
            <circle fill="#FFFFFF" cx="239.802" cy="230.958" r="0.398" />
            <circle fill="#FFFFFF" cx="245.127" cy="225.009" r="0.398" />
            <circle fill="#FFFFFF" cx="233.669" cy="241.071" r="0.398" />
            <circle fill="#FFFFFF" cx="221.566" cy="236.983" r="0.398" />
            <circle fill="#FFFFFF" cx="189.881" cy="228.613" r="0.398" />
            <circle fill="#FFFFFF" cx="171.452" cy="204.922" r="0.398" />
            <circle fill="#FFFFFF" cx="199.403" cy="193.41" r="0.398" />
            <circle fill="#FFFFFF" cx="130.515" cy="219.123" r="0.398" />
            <circle fill="#FFFFFF" cx="112.849" cy="204.523" r="0.878" />
            <circle fill="#FFFFFF" cx="101.176" cy="199.865" r="0.398" />
            <circle fill="#FFFFFF" cx="105.372" cy="210.678" r="0.398" />
            <circle fill="#FFFFFF" cx="104.318" cy="220.522" r="0.398" />
            <circle fill="#FFFFFF" cx="74.656" cy="232.572" r="0.398" />
            <circle fill="#FFFFFF" cx="107.846" cy="235.638" r="0.398" />
            <circle fill="#FFFFFF" cx="84.338" cy="218.294" r="0.398" />
            <circle fill="#FFFFFF" cx="66.264" cy="214.551" r="0.398" />
            <circle fill="#FFFFFF" cx="10.964" cy="203.577" r="0.398" />
            <circle fill="#FFFFFF" cx="46.005" cy="194.593" r="0.398" />
            <circle fill="#FFFFFF" cx="40.389" cy="177.702" r="0.878" />
            <circle fill="#FFFFFF" cx="74.225" cy="144.296" r="0.398" />
            <circle fill="#FFFFFF" cx="125.19" cy="146.018" r="0.398" />
            <circle fill="#FFFFFF" cx="145.556" cy="159.896" r="0.398" />
            <circle fill="#FFFFFF" cx="183.857" cy="160.295" r="0.398" />
            <circle fill="#FFFFFF" cx="185.255" cy="181.844" r="0.398" />
            <circle fill="#FFFFFF" cx="117.475" cy="137.734" r="0.398" />
            <circle fill="#FFFFFF" cx="163.523" cy="116.862" r="0.398" />
            <circle fill="#FFFFFF" cx="164.814" cy="129.449" r="0.398" />
            <circle fill="#FFFFFF" cx="186.062" cy="113.871" r="0.398" />
            <circle fill="#FFFFFF" cx="202.093" cy="94.914" r="0.398" />
            <circle fill="#FFFFFF" cx="89.395" cy="106.587" r="0.398" />
            <circle fill="#FFFFFF" cx="89.686" cy="109.815" r="0.398" />
            <circle fill="#FFFFFF" cx="79.013" cy="106.587" r="0.398" />
            <circle fill="#FFFFFF" cx="56.742" cy="196.853" r="0.398" />
            <circle fill="#FFFFFF" cx="45.715" cy="147.201" r="0.398" />
            <circle fill="#FFFFFF" cx="75.022" cy="110.675" r="0.398" />
            <circle fill="#FFFFFF" cx="80.067" cy="116.862" r="0.398" />
            <circle fill="#FFFFFF" cx="112.203" cy="112.472" r="0.398" />
            <circle fill="#FFFFFF" cx="115.7" cy="254.197" r="0.398" />
            <circle fill="#FFFFFF" cx="96.227" cy="283.568" r="0.398" />
            <circle fill="#FFFFFF" cx="72.611" cy="282.492" r="0.398" />
            <circle fill="#FFFFFF" cx="50.986" cy="284.267" r="0.398" />
            <circle fill="#FFFFFF" cx="46.253" cy="288.947" r="0.398" />
            <circle fill="#FFFFFF" cx="21.723" cy="303.418" r="0.878" />
            <circle fill="#FFFFFF" cx="18.71" cy="333.488" r="0.398" />
            <circle fill="#FFFFFF" cx="54.913" cy="351.993" r="0.398" />
            <circle fill="#FFFFFF" cx="6.876" cy="342.902" r="0.398" />
            <circle fill="#FFFFFF" cx="12.632" cy="356.781" r="0.398" />
            <circle fill="#FFFFFF" cx="10.318" cy="339.513" r="0.398" />
            <circle fill="#FFFFFF" cx="0.398" cy="348.26" r="0.398" />
            <circle fill="#FFFFFF" cx="11.771" cy="323.989" r="0.398" />
            <circle fill="#FFFFFF" cx="31.965" cy="326.549" r="0.398" />
            <circle fill="#FFFFFF" cx="64.65" cy="303.095" r="0.398" />
            <circle fill="#FFFFFF" cx="64.22" cy="293.358" r="0.398" />
            <circle fill="#FFFFFF" cx="74.709" cy="293.358" r="0.398" />
            <circle fill="#FFFFFF" cx="84.199" cy="299.276" r="0.398" />
            <circle fill="#FFFFFF" cx="89.556" cy="303.418" r="0.398" />
            <circle fill="#FFFFFF" cx="106.286" cy="320.47" r="0.398" />
            <circle fill="#FFFFFF" cx="127.987" cy="303.019" r="0.398" />
            <circle fill="#FFFFFF" cx="128.611" cy="305.753" r="0.398" />
            <circle fill="#FFFFFF" cx="151.311" cy="297.285" r="0.398" />
            <circle fill="#FFFFFF" cx="179.445" cy="297.684" r="0.398" />
            <circle fill="#FFFFFF" cx="184.233" cy="299.814" r="0.398" />
            <circle fill="#FFFFFF" cx="203.384" cy="321.708" r="0.398" />
            <circle fill="#FFFFFF" cx="296.393" cy="309.335" r="0.398" />
            <circle fill="#FFFFFF" cx="260.997" cy="332.574" r="0.398" />
            <circle fill="#FFFFFF" cx="246.849" cy="331.014" r="0.398" />
            <circle fill="#FFFFFF" cx="269.604" cy="348.228" r="0.398" />
            <circle fill="#FFFFFF" cx="267.344" cy="352.8" r="0.398" />
            <circle fill="#FFFFFF" cx="253.842" cy="358.018" r="0.398" />
            <circle fill="#FFFFFF" cx="237.166" cy="350.057" r="0.398" />
            <circle fill="#FFFFFF" cx="230.496" cy="341.773" r="0.398" />
            <circle fill="#FFFFFF" cx="221.942" cy="343.655" r="0.398" />
            <circle fill="#FFFFFF" cx="219.898" cy="359.471" r="0.398" />
            <circle fill="#FFFFFF" cx="216.724" cy="361.246" r="0.398" />
            <circle fill="#FFFFFF" cx="221.996" cy="382.01" r="0.398" />
            <circle fill="#FFFFFF" cx="179.069" cy="354.791" r="0.398" />
            <circle fill="#FFFFFF" cx="182.189" cy="361.246" r="0.398" />
            <circle fill="#FFFFFF" cx="174.227" cy="359.525" r="0.398" />
            <circle fill="#FFFFFF" cx="166.589" cy="358.449" r="0.398" />
            <circle fill="#FFFFFF" cx="173.829" cy="364.043" r="0.398" />
            <circle fill="#FFFFFF" cx="146.309" cy="355.759" r="0.398" />
            <circle fill="#FFFFFF" cx="150.236" cy="371.305" r="0.398" />
            <circle fill="#FFFFFF" cx="141.951" cy="389.649" r="0.398" />
            <circle fill="#FFFFFF" cx="138.347" cy="406.11" r="0.398" />
            <circle fill="#FFFFFF" cx="156.669" cy="419.182" r="0.398" />
            <circle fill="#FFFFFF" cx="173.851" cy="411.543" r="0.398" />
            <circle fill="#FFFFFF" cx="175.25" cy="416.653" r="0.398" />
            <circle fill="#FFFFFF" cx="180.629" cy="417.675" r="0.398" />
            <circle fill="#FFFFFF" cx="166.589" cy="386.045" r="0.398" />
            <circle fill="#FFFFFF" cx="185.847" cy="379.751" r="0.398" />
            <circle fill="#FFFFFF" cx="187.299" cy="383.754" r="0.398" />
            <circle fill="#FFFFFF" cx="192.141" cy="380.719" r="0.398" />
            <circle fill="#FFFFFF" cx="190.85" cy="382.732" r="0.398" />
            <circle fill="#FFFFFF" cx="199.887" cy="390.047" r="0.398" />
            <circle fill="#FFFFFF" cx="213.152" cy="388.466" r="0.398" />
            <circle fill="#FFFFFF" cx="209.624" cy="400.515" r="0.398" />
            <circle fill="#FFFFFF" cx="220.544" cy="404.904" r="0.398" />
            <circle fill="#FFFFFF" cx="242.223" cy="416.761" r="0.398" />
            <circle fill="#FFFFFF" cx="242.223" cy="424.292" r="0.398" />
            <circle fill="#FFFFFF" cx="257.123" cy="435.051" r="0.398" />
            <circle fill="#FFFFFF" cx="272.939" cy="435.449" r="0.398" />
            <circle fill="#FFFFFF" cx="264.493" cy="458.612" r="0.398" />
            <circle fill="#FFFFFF" cx="257.554" cy="465.821" r="0.398" />
            <circle fill="#FFFFFF" cx="287.355" cy="470.07" r="0.398" />
            <circle fill="#FFFFFF" cx="269.711" cy="484.81" r="0.398" />
            <circle fill="#FFFFFF" cx="265.708" cy="499.334" r="0.398" />
            <circle fill="#FFFFFF" cx="254.757" cy="514.303" r="0.398" />
            <circle fill="#FFFFFF" cx="285.257" cy="532.762" r="0.398" />
            <circle fill="#FFFFFF" cx="301.525" cy="577.313" r="0.398" />
            <circle fill="#FFFFFF" cx="241.577" cy="569.104" r="0.398" />
            <circle fill="#FFFFFF" cx="225.116" cy="563.886" r="0.398" />
            <circle fill="#FFFFFF" cx="302.31" cy="515.956" r="0.398" />
            <circle fill="#FFFFFF" cx="244.643" cy="515.149" r="0.398" />
            <circle fill="#FFFFFF" cx="230.388" cy="506.758" r="0.398" />
            <circle fill="#FFFFFF" cx="228.236" cy="496.483" r="0.398" />
            <circle fill="#FFFFFF" cx="237.973" cy="489.813" r="0.398" />
            <circle fill="#FFFFFF" cx="228.774" cy="519.015" r="0.398" />
            <circle fill="#FFFFFF" cx="266.107" cy="493.955" r="0.398" />
            <circle fill="#FFFFFF" cx="285.957" cy="476.31" r="0.398" />
            <circle fill="#FFFFFF" cx="275.79" cy="428.671" r="0.398" />
            <circle fill="#FFFFFF" cx="280.233" cy="417.277" r="0.398" />
            <circle fill="#FFFFFF" cx="283.644" cy="415.846" r="0.398" />
            <circle fill="#FFFFFF" cx="302.74" cy="406.917" r="0.398" />
            <circle fill="#FFFFFF" cx="300.589" cy="412.834" r="0.398" />
            <circle fill="#FFFFFF" cx="300.987" cy="427.681" r="0.398" />
            <circle fill="#FFFFFF" cx="264.17" cy="409.391" r="0.398" />
            <circle fill="#FFFFFF" cx="276.973" cy="403.474" r="0.398" />
            <circle fill="#FFFFFF" cx="274.306" cy="397.579" r="0.398" />
            <circle fill="#FFFFFF" cx="258.522" cy="392.5" r="0.398" />
            <circle fill="#FFFFFF" cx="277.372" cy="392.124" r="0.398" />
            <circle fill="#FFFFFF" cx="286.925" cy="387.712" r="0.398" />
            <circle fill="#FFFFFF" cx="187.698" cy="400.515" r="0.398" />
            <circle fill="#FFFFFF" cx="223.556" cy="320.04" r="0.398" />
            <circle fill="#FFFFFF" cx="182.189" cy="330.476" r="0.398" />
            <circle fill="#FFFFFF" cx="111.988" cy="332.036" r="0.398" />
            <circle fill="#FFFFFF" cx="134.313" cy="327.195" r="0.398" />
            <circle fill="#FFFFFF" cx="129.633" cy="332.435" r="0.398" />
            <circle fill="#FFFFFF" cx="139.961" cy="338.437" r="0.398" />
            <circle fill="#FFFFFF" cx="149.213" cy="336.447" r="0.398" />
            <circle fill="#FFFFFF" cx="153.947" cy="325.742" r="0.878" />
            <circle fill="#FFFFFF" cx="52.869" cy="317.458" r="0.398" />
            <circle fill="#FFFFFF" cx="29.039" cy="294.596" r="0.398" />
            <circle fill="#FFFFFF" cx="39.206" cy="309.626" r="0.398" />
            <circle fill="#FFFFFF" cx="60.831" cy="326.549" r="0.398" />
            <circle fill="#FFFFFF" cx="55.559" cy="357.588" r="0.398" />
            <circle fill="#FFFFFF" cx="51.502" cy="368.132" r="0.398" />
            <circle fill="#FFFFFF" cx="76.216" cy="354.091" r="0.398" />
            <circle fill="#FFFFFF" cx="41.465" cy="372.865" r="0.398" />
            <circle fill="#FFFFFF" cx="39.029" cy="378.998" r="0.398" />
            <circle fill="#FFFFFF" cx="28.339" cy="381.827" r="0.398" />
            <circle fill="#FFFFFF" cx="17.312" cy="381.03" r="0.398" />
            <circle fill="#FFFFFF" cx="13.438" cy="376.147" r="0.398" />
            <circle fill="#FFFFFF" cx="55.16" cy="388.896" r="0.398" />
            <circle fill="#FFFFFF" cx="65.479" cy="383.678" r="0.398" />
            <circle fill="#FFFFFF" cx="68.631" cy="386.583" r="0.878" />
            <circle fill="#FFFFFF" cx="64.112" cy="390.51" r="0.398" />
            <circle fill="#FFFFFF" cx="99.185" cy="407.885" r="0.398" />
            <circle fill="#FFFFFF" cx="112.526" cy="417.675" r="0.398" />
            <circle fill="#FFFFFF" cx="116.722" cy="420.15" r="0.398" />
            <circle fill="#FFFFFF" cx="113.817" cy="420.096" r="0.398" />
            <circle fill="#FFFFFF" cx="115.431" cy="421.28" r="0.398" />
            <circle fill="#FFFFFF" cx="115.431" cy="419.827" r="0.398" />
            <circle fill="#FFFFFF" cx="72.99" cy="427.412" r="0.398" />
            <circle fill="#FFFFFF" cx="54.375" cy="418.074" r="0.398" />
            <circle fill="#FFFFFF" cx="52.815" cy="435.589" r="0.398" />
            <circle fill="#FFFFFF" cx="93.268" cy="454.847" r="0.398" />
            <circle fill="#FFFFFF" cx="87.405" cy="464.96" r="0.398" />
            <circle fill="#FFFFFF" cx="87.243" cy="468.51" r="0.398" />
            <circle fill="#FFFFFF" cx="55.828" cy="473.567" r="0.398" />
            <circle fill="#FFFFFF" cx="107.276" cy="491.05" r="0.398" />
            <circle fill="#FFFFFF" cx="122.586" cy="500.141" r="0.398" />
            <circle fill="#FFFFFF" cx="108.976" cy="518.323" r="0.398" />
            <circle fill="#FFFFFF" cx="106.932" cy="528.759" r="0.398" />
            <circle fill="#FFFFFF" cx="134.366" cy="516.925" r="0.398" />
            <circle fill="#FFFFFF" cx="150.02" cy="526.285" r="0.398" />
            <circle fill="#FFFFFF" cx="124.038" cy="456.245" r="0.398" />
            <circle fill="#FFFFFF" cx="136.841" cy="461.786" r="0.398" />
            <circle fill="#FFFFFF" cx="157.067" cy="453.448" r="0.398" />
            <circle fill="#FFFFFF" cx="162.608" cy="449.844" r="0.398" />
            <circle fill="#FFFFFF" cx="193.324" cy="454.245" r="0.398" />
            <circle fill="#FFFFFF" cx="206.45" cy="446.401" r="0.398" />
            <circle fill="#FFFFFF" cx="229.151" cy="448.392" r="0.398" />
            <circle fill="#FFFFFF" cx="232.809" cy="446.939" r="0.398" />
            <circle fill="#FFFFFF" cx="203.2" cy="477.408" r="0.398" />
            <circle fill="#FFFFFF" cx="189.992" cy="492.449" r="0.398" />
            <circle fill="#FFFFFF" cx="186.654" cy="507.156" r="0.398" />
            <circle fill="#FFFFFF" cx="202.254" cy="529.614" r="0.398" />
            <circle fill="#FFFFFF" cx="179.177" cy="541.912" r="0.398" />
            <circle fill="#FFFFFF" cx="178.208" cy="554.688" r="0.398" />
            <circle fill="#FFFFFF" cx="160.757" cy="554.688" r="0.398" />
            <circle fill="#FFFFFF" cx="150.989" cy="550.836" r="0.398" />
            <circle fill="#FFFFFF" cx="187.622" cy="507.694" r="0.398" />
            <circle fill="#FFFFFF" cx="173.389" cy="433.276" r="0.398" />
            <circle fill="#FFFFFF" cx="181.974" cy="425.745" r="0.398" />
            <circle fill="#FFFFFF" cx="142.328" cy="429.402" r="0.398" />
            <circle fill="#FFFFFF" cx="162.608" cy="456.407" r="0.398" />
            <circle fill="#FFFFFF" cx="69.814" cy="392.177" r="0.398" />
            <circle fill="#FFFFFF" cx="77.076" cy="394.544" r="0.398" />
            <circle fill="#FFFFFF" cx="75.624" cy="396.427" r="0.398" />
            <circle fill="#FFFFFF" cx="77.076" cy="398.041" r="0.398" />
            <circle fill="#FFFFFF" cx="79.712" cy="390.295" r="0.398" />
            <circle fill="#FFFFFF" cx="90.686" cy="389.057" r="0.398" />
            <circle fill="#FFFFFF" cx="92.085" cy="387.39" r="0.398" />
            <circle fill="#FFFFFF" cx="88.911" cy="399.009" r="0.398" />
            <circle fill="#FFFFFF" cx="86.705" cy="372.65" r="0.398" />
            <circle fill="#FFFFFF" cx="72.592" cy="403.743" r="0.398" />
            <circle fill="#FFFFFF" cx="69.76" cy="397.256" r="0.398" />
            <circle fill="#FFFFFF" cx="69.76" cy="394.921" r="0.398" />
            <circle fill="#FFFFFF" cx="69.029" cy="394.146" r="0.398" />
            <circle fill="#FFFFFF" cx="66.748" cy="398.041" r="0.398" />
            <circle fill="#FFFFFF" cx="48.781" cy="394.383" r="0.398" />
            <circle fill="#FFFFFF" cx="72.558" cy="329.669" r="0.398" />
            <circle fill="#FFFFFF" cx="29.039" cy="324.559" r="0.398" />
            <circle fill="#FFFFFF" cx="30.007" cy="327.571" r="0.398" />
            <circle fill="#FFFFFF" cx="66.318" cy="267.591" r="0.398" />
            <circle fill="#FFFFFF" cx="47.651" cy="269.151" r="0.398" />
            <circle fill="#FFFFFF" cx="34.095" cy="249.323" r="0.398" />
            <circle fill="#FFFFFF" cx="48.404" cy="236.036" r="0.398" />
            <circle fill="#FFFFFF" cx="11.847" cy="236.176" r="0.398" />
            <circle fill="#FFFFFF" cx="45.607" cy="247.957" r="0.398" />
            <circle fill="#FFFFFF" cx="23.52" cy="257.478" r="0.398" />
            <circle fill="#FFFFFF" cx="13.654" cy="267.591" r="0.398" />
            <circle fill="#FFFFFF" cx="44.24" cy="284.267" r="0.398" />
            <circle fill="#FFFFFF" cx="114.248" cy="207.795" r="0.398" />
            <circle fill="#FFFFFF" cx="196.767" cy="270.927" r="0.398" />
            <circle fill="#FFFFFF" cx="153.087" cy="259.63" r="0.398" />
            <circle fill="#FFFFFF" cx="171.452" cy="251.238" r="0.398" />
            <circle fill="#FFFFFF" cx="172.022" cy="246.343" r="0.398" />
            <circle fill="#FFFFFF" cx="117.776" cy="222.835" r="0.398" />
            <circle fill="#FFFFFF" cx="199.026" cy="276.629" r="0.398" />
            <circle fill="#FFFFFF" cx="282.944" cy="273.509" r="0.398" />
            <circle fill="#FFFFFF" cx="257.608" cy="285.774" r="0.398" />
            <circle fill="#FFFFFF" cx="195.508" cy="288.302" r="0.398" />
            <circle fill="#FFFFFF" cx="230.496" cy="291.96" r="0.398" />
            <circle fill="#FFFFFF" cx="220.221" cy="205.513" r="0.398" />
            <circle fill="#FFFFFF" cx="211.991" cy="202.017" r="0.398" />
            <circle fill="#FFFFFF" cx="212.744" cy="134.129" r="0.398" />
            <circle fill="#FFFFFF" cx="192.517" cy="151.558" r="0.398" />
            <circle fill="#FFFFFF" cx="370.09" cy="13.901" r="0.398" />
            <circle fill="#FFFFFF" cx="321.999" cy="54.353" r="0.398" />
            <circle fill="#FFFFFF" cx="334.479" cy="72.321" r="0.398" />
            <circle fill="#FFFFFF" cx="373.533" cy="63.821" r="0.398" />
            <circle fill="#FFFFFF" cx="416.137" cy="30.2" r="0.398" />
            <circle fill="#FFFFFF" cx="450.673" cy="40.26" r="0.398" />
            <circle fill="#FFFFFF" cx="433.351" cy="98.626" r="0.878" />
            <circle fill="#FFFFFF" cx="418.181" cy="112.311" r="0.398" />
            <circle fill="#FFFFFF" cx="466.381" cy="100.777" r="0.398" />
            <circle fill="#FFFFFF" cx="462.723" cy="121.595" r="0.398" />
            <circle fill="#FFFFFF" cx="456.59" cy="143.328" r="0.398" />
            <circle fill="#FFFFFF" cx="516.086" cy="138.67" r="0.398" />
            <circle fill="#FFFFFF" cx="532.87" cy="143.597" r="0.398" />
            <circle fill="#FFFFFF" cx="543.79" cy="142.93" r="0.398" />
            <circle fill="#FFFFFF" cx="572.569" cy="173.022" r="0.398" />
            <circle fill="#FFFFFF" cx="574.291" cy="184.588" r="0.398" />
            <circle fill="#FFFFFF" cx="545.995" cy="198.359" r="0.398" />
            <circle fill="#FFFFFF" cx="517.646" cy="197.96" r="0.398" />
            <circle fill="#FFFFFF" cx="558.314" cy="220.576" r="0.398" />
            <circle fill="#FFFFFF" cx="553.472" cy="235.477" r="0.398" />
            <circle fill="#FFFFFF" cx="550.245" cy="246.935" r="0.398" />
            <circle fill="#FFFFFF" cx="586.502" cy="255.004" r="0.398" />
            <circle fill="#FFFFFF" cx="593.71" cy="281.524" r="0.398" />
            <circle fill="#FFFFFF" cx="598.39" cy="239.941" r="0.398" />
            <circle fill="#FFFFFF" cx="535.021" cy="194.217" r="0.398" />
            <circle fill="#FFFFFF" cx="510.061" cy="158.175" r="0.398" />
            <circle fill="#FFFFFF" cx="515.44" cy="168.181" r="0.398" />
            <circle fill="#FFFFFF" cx="503.584" cy="165.652" r="0.398" />
            <circle fill="#FFFFFF" cx="495.429" cy="162.21" r="0.398" />
            <circle fill="#FFFFFF" cx="497.258" cy="173.022" r="0.398" />
            <circle fill="#FFFFFF" cx="477.623" cy="175.873" r="0.398" />
            <circle fill="#FFFFFF" cx="481.981" cy="180.768" r="0.398" />
            <circle fill="#FFFFFF" cx="497.688" cy="185.61" r="0.398" />
            <circle fill="#FFFFFF" cx="461.969" cy="170.332" r="0.398" />
            <circle fill="#FFFFFF" cx="458.634" cy="178.908" r="0.398" />
            <circle fill="#FFFFFF" cx="444.271" cy="171.301" r="0.398" />
            <circle fill="#FFFFFF" cx="419.128" cy="179.854" r="0.398" />
            <circle fill="#FFFFFF" cx="438.408" cy="185.61" r="0.398" />
            <circle fill="#FFFFFF" cx="436.364" cy="212.453" r="0.398" />
            <circle fill="#FFFFFF" cx="455.353" cy="199.327" r="0.398" />
            <circle fill="#FFFFFF" cx="460.033" cy="212.851" r="0.398" />
            <circle fill="#FFFFFF" cx="481.582" cy="214.443" r="0.398" />
            <circle fill="#FFFFFF" cx="476.494" cy="196.691" r="0.398" />
            <circle fill="#FFFFFF" cx="483.433" cy="188.622" r="0.398" />
            <circle fill="#FFFFFF" cx="453.363" cy="149.913" r="0.398" />
            <circle fill="#FFFFFF" cx="440.237" cy="135.044" r="0.398" />
            <circle fill="#FFFFFF" cx="423.937" cy="138.67" r="0.398" />
            <circle fill="#FFFFFF" cx="427.111" cy="138.271" r="0.398" />
            <circle fill="#FFFFFF" cx="404.249" cy="145.426" r="0.398" />
            <circle fill="#FFFFFF" cx="383.216" cy="174.421" r="0.398" />
            <circle fill="#FFFFFF" cx="373.102" cy="189.268" r="0.398" />
            <circle fill="#FFFFFF" cx="371.004" cy="189.322" r="0.398" />
            <circle fill="#FFFFFF" cx="376.222" cy="193.302" r="0.398" />
            <circle fill="#FFFFFF" cx="402.797" cy="197.713" r="0.398" />
            <circle fill="#FFFFFF" cx="381.419" cy="232.496" r="0.398" />
            <circle fill="#FFFFFF" cx="344.699" cy="222.674" r="0.398" />
            <circle fill="#FFFFFF" cx="339.966" cy="221.705" r="0.398" />
            <circle fill="#FFFFFF" cx="309.949" cy="229.452" r="0.398" />
            <circle fill="#FFFFFF" cx="329.099" cy="258.608" r="0.398" />
            <circle fill="#FFFFFF" cx="334.263" cy="274.132" r="0.398" />
            <circle fill="#FFFFFF" cx="325.71" cy="288.732" r="0.398" />
            <circle fill="#FFFFFF" cx="311.687" cy="295.779" r="0.398" />
            <circle fill="#FFFFFF" cx="360.138" cy="292.39" r="0.398" />
            <circle fill="#FFFFFF" cx="358.255" cy="302.557" r="0.398" />
            <circle fill="#FFFFFF" cx="362.882" cy="302.956" r="0.398" />
            <circle fill="#FFFFFF" cx="361.483" cy="312.025" r="0.398" />
            <circle fill="#FFFFFF" cx="353.253" cy="315.306" r="0.398" />
            <circle fill="#FFFFFF" cx="335.232" cy="319.233" r="0.398" />
            <circle fill="#FFFFFF" cx="359.654" cy="327.571" r="0.398" />
            <circle fill="#FFFFFF" cx="363.28" cy="324.075" r="0.398" />
            <circle fill="#FFFFFF" cx="377.482" cy="325.419" r="0.398" />
            <circle fill="#FFFFFF" cx="364.334" cy="335.21" r="0.398" />
            <circle fill="#FFFFFF" cx="357.825" cy="238.812" r="0.398" />
            <circle fill="#FFFFFF" cx="392.414" cy="244.837" r="0.398" />
            <circle fill="#FFFFFF" cx="406.347" cy="261.19" r="0.398" />
            <circle fill="#FFFFFF" cx="380.849" cy="274.047" r="0.398" />
            <circle fill="#FFFFFF" cx="371.435" cy="289.969" r="0.398" />
            <circle fill="#FFFFFF" cx="429.478" cy="224.556" r="0.398" />
            <circle fill="#FFFFFF" cx="434.75" cy="226.224" r="0.398" />
            <circle fill="#FFFFFF" cx="433.674" cy="234.616" r="0.398" />
            <circle fill="#FFFFFF" cx="449.543" cy="238.22" r="0.398" />
            <circle fill="#FFFFFF" cx="441.635" cy="251.991" r="0.398" />
            <circle fill="#FFFFFF" cx="462.83" cy="240.663" r="0.398" />
            <circle fill="#FFFFFF" cx="475.31" cy="264.471" r="0.398" />
            <circle fill="#FFFFFF" cx="476.494" cy="268.99" r="0.398" />
            <circle fill="#FFFFFF" cx="488.974" cy="261.513" r="0.398" />
            <circle fill="#FFFFFF" cx="492.847" cy="245.697" r="0.398" />
            <circle fill="#FFFFFF" cx="447.983" cy="283.891" r="0.398" />
            <circle fill="#FFFFFF" cx="478.269" cy="294.273" r="0.398" />
            <circle fill="#FFFFFF" cx="481.55" cy="312.832" r="0.398" />
            <circle fill="#FFFFFF" cx="470.953" cy="324.989" r="0.878" />
            <circle fill="#FFFFFF" cx="467.08" cy="330.046" r="0.398" />
            <circle fill="#FFFFFF" cx="473.804" cy="331.444" r="0.398" />
            <circle fill="#FFFFFF" cx="451.103" cy="334.278" r="0.398" />
            <circle fill="#FFFFFF" cx="474.396" cy="339.298" r="0.398" />
            <circle fill="#FFFFFF" cx="465.681" cy="354.468" r="0.398" />
            <circle fill="#FFFFFF" cx="486.93" cy="338.545" r="0.398" />
            <circle fill="#FFFFFF" cx="462.992" cy="351.402" r="0.398" />
            <circle fill="#FFFFFF" cx="472.89" cy="370.229" r="0.398" />
            <circle fill="#FFFFFF" cx="483.541" cy="381.957" r="0.398" />
            <circle fill="#FFFFFF" cx="470.953" cy="386.529" r="0.398" />
            <circle fill="#FFFFFF" cx="462.238" cy="387.174" r="0.398" />
            <circle fill="#FFFFFF" cx="452.394" cy="381.365" r="0.398" />
            <circle fill="#FFFFFF" cx="451.996" cy="393.253" r="0.398" />
            <circle fill="#FFFFFF" cx="444.863" cy="396.481" r="0.398" />
            <circle fill="#FFFFFF" cx="517.377" cy="392.231" r="0.398" />
            <circle fill="#FFFFFF" cx="411.888" cy="294.004" r="0.398" />
            <circle fill="#FFFFFF" cx="404.948" cy="308.098" r="0.398" />
            <circle fill="#FFFFFF" cx="400.914" cy="320.385" r="0.398" />
            <circle fill="#FFFFFF" cx="416.944" cy="338.115" r="0.398" />
            <circle fill="#FFFFFF" cx="419.526" cy="346.507" r="0.398" />
            <circle fill="#FFFFFF" cx="422.7" cy="352.047" r="0.398" />
            <circle fill="#FFFFFF" cx="410.973" cy="358.449" r="0.398" />
            <circle fill="#FFFFFF" cx="394.405" cy="359.256" r="0.398" />
            <circle fill="#FFFFFF" cx="372.672" cy="352.585" r="0.398" />
            <circle fill="#FFFFFF" cx="382.409" cy="369.476" r="0.398" />
            <circle fill="#FFFFFF" cx="371.489" cy="360.063" r="0.398" />
            <circle fill="#FFFFFF" cx="359.224" cy="384.485" r="0.398" />
            <circle fill="#FFFFFF" cx="352.231" cy="413.587" r="0.398" />
            <circle fill="#FFFFFF" cx="345.883" cy="418.644" r="0.398" />
            <circle fill="#FFFFFF" cx="350.832" cy="421.441" r="0.398" />
            <circle fill="#FFFFFF" cx="355.512" cy="422.302" r="0.398" />
            <circle fill="#FFFFFF" cx="354.866" cy="428.972" r="0.398" />
            <circle fill="#FFFFFF" cx="361.537" cy="430.478" r="0.398" />
            <circle fill="#FFFFFF" cx="332.703" cy="427.95" r="0.398" />
            <circle fill="#FFFFFF" cx="314.898" cy="443.604" r="0.398" />
            <circle fill="#FFFFFF" cx="312.961" cy="450.92" r="0.398" />
            <circle fill="#FFFFFF" cx="315.167" cy="454.416" r="0.398" />
            <circle fill="#FFFFFF" cx="340.902" cy="453.125" r="0.398" />
            <circle fill="#FFFFFF" cx="352.629" cy="442.367" r="0.398" />
            <circle fill="#FFFFFF" cx="360.407" cy="443.604" r="0.398" />
            <circle fill="#FFFFFF" cx="359.6" cy="458.043" r="0.398" />
            <circle fill="#FFFFFF" cx="377.621" cy="455.815" r="0.398" />
            <circle fill="#FFFFFF" cx="387.089" cy="485.8" r="0.398" />
            <circle fill="#FFFFFF" cx="369.197" cy="490.297" r="0.398" />
            <circle fill="#FFFFFF" cx="366.992" cy="507.78" r="0.398" />
            <circle fill="#FFFFFF" cx="333.995" cy="519.851" r="0.398" />
            <circle fill="#FFFFFF" cx="338.406" cy="517.624" r="0.398" />
            <circle fill="#FFFFFF" cx="370.843" cy="510.039" r="0.398" />
            <circle fill="#FFFFFF" cx="382.839" cy="546.457" r="0.398" />
            <circle fill="#FFFFFF" cx="390.047" cy="548.77" r="0.398" />
            <circle fill="#FFFFFF" cx="409.467" cy="535.806" r="0.398" />
            <circle fill="#FFFFFF" cx="430.554" cy="547.695" r="0.398" />
            <circle fill="#FFFFFF" cx="437.278" cy="548.663" r="0.398" />
            <circle fill="#FFFFFF" cx="412.856" cy="561.842" r="0.398" />
            <circle fill="#FFFFFF" cx="420.118" cy="570.342" r="0.398" />
            <circle fill="#FFFFFF" cx="417.375" cy="576.313" r="0.398" />
            <circle fill="#FFFFFF" cx="409.068" cy="579.433" r="0.398" />
            <circle fill="#FFFFFF" cx="370.445" cy="579.002" r="0.398" />
            <circle fill="#FFFFFF" cx="362.613" cy="562.241" r="0.398" />
            <circle fill="#FFFFFF" cx="335.178" cy="555.441" r="0.398" />
            <circle fill="#FFFFFF" cx="325.065" cy="580.616" r="0.398" />
            <circle fill="#FFFFFF" cx="339.535" cy="576.313" r="0.398" />
            <circle fill="#FFFFFF" cx="354.597" cy="584.382" r="0.398" />
            <circle fill="#FFFFFF" cx="343.247" cy="592.666" r="0.398" />
            <circle fill="#FFFFFF" cx="322.827" cy="593.312" r="0.398" />
            <circle fill="#FFFFFF" cx="403.442" cy="489.275" r="0.398" />
            <circle fill="#FFFFFF" cx="415.707" cy="468.779" r="0.398" />
            <circle fill="#FFFFFF" cx="421.248" cy="477.655" r="0.398" />
            <circle fill="#FFFFFF" cx="436.633" cy="474.858" r="0.398" />
            <circle fill="#FFFFFF" cx="450.942" cy="480.528" r="0.398" />
            <circle fill="#FFFFFF" cx="436.955" cy="500.84" r="0.398" />
            <circle fill="#FFFFFF" cx="482.035" cy="496.053" r="0.398" />
            <circle fill="#FFFFFF" cx="478.699" cy="499.603" r="0.398" />
            <circle fill="#FFFFFF" cx="487.898" cy="512.567" r="0.398" />
            <circle fill="#FFFFFF" cx="388.81" cy="467.327" r="0.398" />
            <circle fill="#FFFFFF" cx="328.4" cy="431.285" r="0.398" />
            <circle fill="#FFFFFF" cx="354.221" cy="378.352" r="0.398" />
            <circle fill="#FFFFFF" cx="345.883" cy="373.672" r="0.398" />
            <circle fill="#FFFFFF" cx="335.77" cy="349.25" r="0.398" />
            <circle fill="#FFFFFF" cx="311.186" cy="345.215" r="0.398" />
            <circle fill="#FFFFFF" cx="324.473" cy="373.887" r="0.398" />
            <circle fill="#FFFFFF" cx="324.075" cy="397.579" r="0.398" />
            <circle fill="#FFFFFF" cx="313.929" cy="402.022" r="0.398" />
            <circle fill="#FFFFFF" cx="341.396" cy="395.566" r="0.398" />
            <circle fill="#FFFFFF" cx="349.142" cy="392.554" r="0.398" />
            <circle fill="#FFFFFF" cx="349.433" cy="396.965" r="0.398" />
            <circle fill="#FFFFFF" cx="313.445" cy="369.875" r="0.398" />
            <circle fill="#FFFFFF" cx="354.866" cy="373.887" r="0.398" />
            <circle fill="#FFFFFF" cx="341.795" cy="372.435" r="0.398" />
            <circle fill="#FFFFFF" cx="514.149" cy="269.388" r="0.398" />
            <circle fill="#FFFFFF" cx="510.115" cy="284.289" r="0.398" />
            <circle fill="#FFFFFF" cx="505.22" cy="295.026" r="0.398" />
            <circle fill="#FFFFFF" cx="502.1" cy="295.833" r="0.398" />
            <circle fill="#FFFFFF" cx="506.833" cy="303.902" r="0.398" />
            <circle fill="#FFFFFF" cx="533.623" cy="305.946" r="0.398" />
            <circle fill="#FFFFFF" cx="547.448" cy="297.178" r="0.398" />
            <circle fill="#FFFFFF" cx="571.386" cy="305.677" r="0.398" />
            <circle fill="#FFFFFF" cx="573.721" cy="305.785" r="0.398" />
            <circle fill="#FFFFFF" cx="589.213" cy="297.339" r="0.398" />
            <circle fill="#FFFFFF" cx="593.312" cy="297.738" r="0.398" />
            <circle fill="#FFFFFF" cx="599.058" cy="299.383" r="0.398" />
            <circle fill="#FFFFFF" cx="590.751" cy="323.644" r="0.398" />
            <circle fill="#FFFFFF" cx="594.947" cy="304.117" r="0.398" />
            <circle fill="#FFFFFF" cx="529.319" cy="320.901" r="0.398" />
            <circle fill="#FFFFFF" cx="509.738" cy="339.944" r="0.398" />
            <circle fill="#FFFFFF" cx="530.018" cy="343.44" r="0.398" />
            <circle fill="#FFFFFF" cx="537.603" cy="346.56" r="0.398" />
            <circle fill="#FFFFFF" cx="521.035" cy="350.864" r="0.398" />
            <circle fill="#FFFFFF" cx="500.884" cy="373.242" r="0.398" />
            <circle fill="#FFFFFF" cx="490.48" cy="370.229" r="0.398" />
            <circle fill="#FFFFFF" cx="544.489" cy="362.214" r="0.398" />
            <circle fill="#FFFFFF" cx="519.152" cy="372.704" r="0.398" />
            <circle fill="#FFFFFF" cx="504.359" cy="380.343" r="0.398" />
            <circle fill="#FFFFFF" cx="520.389" cy="399.87" r="0.398" />
            <circle fill="#FFFFFF" cx="521.573" cy="401.645" r="0.398" />
            <circle fill="#FFFFFF" cx="501.508" cy="403.044" r="0.398" />
            <circle fill="#FFFFFF" cx="496.021" cy="402.775" r="0.398" />
            <circle fill="#FFFFFF" cx="481.658" cy="403.044" r="0.398" />
            <circle fill="#FFFFFF" cx="474.342" cy="414.34" r="0.398" />
            <circle fill="#FFFFFF" cx="458.15" cy="411.704" r="0.398" />
            <circle fill="#FFFFFF" cx="460.356" cy="419.289" r="0.398" />
            <circle fill="#FFFFFF" cx="444.863" cy="412.135" r="0.398" />
            <circle fill="#FFFFFF" cx="434.804" cy="417.837" r="0.398" />
            <circle fill="#FFFFFF" cx="411.296" cy="426.874" r="0.398" />
            <circle fill="#FFFFFF" cx="407.692" cy="409.553" r="0.398" />
            <circle fill="#FFFFFF" cx="412.264" cy="403.044" r="0.398" />
            <circle fill="#FFFFFF" cx="415.137" cy="395.244" r="0.878" />
            <circle fill="#FFFFFF" cx="410.22" cy="396.804" r="0.398" />
            <circle fill="#FFFFFF" cx="401.721" cy="398.525" r="0.398" />
            <circle fill="#FFFFFF" cx="398.385" cy="401.161" r="0.398" />
            <circle fill="#FFFFFF" cx="389.294" cy="417.622" r="0.398" />
            <circle fill="#FFFFFF" cx="375.523" cy="412.135" r="0.398" />
            <circle fill="#FFFFFF" cx="374.393" cy="405.195" r="0.398" />
            <circle fill="#FFFFFF" cx="375.922" cy="449.145" r="0.398" />
            <circle fill="#FFFFFF" cx="409.822" cy="381.365" r="0.398" />
            <circle fill="#FFFFFF" cx="418.688" cy="376.685" r="0.398" />
            <circle fill="#FFFFFF" cx="422.108" cy="378.03" r="0.398" />
            <circle fill="#FFFFFF" cx="421.033" cy="438.31" r="0.398" />
            <circle fill="#FFFFFF" cx="416.084" cy="429.026" r="0.398" />
            <circle fill="#FFFFFF" cx="418.289" cy="412.35" r="0.398" />
            <circle fill="#FFFFFF" cx="450.242" cy="429.671" r="0.398" />
            <circle fill="#FFFFFF" cx="455.46" cy="442.442" r="0.398" />
            <circle fill="#FFFFFF" cx="479.076" cy="445.218" r="0.398" />
            <circle fill="#FFFFFF" cx="492.04" cy="457.214" r="0.398" />
            <circle fill="#FFFFFF" cx="486.553" cy="462.808" r="0.398" />
            <circle fill="#FFFFFF" cx="491.502" cy="462.539" r="0.398" />
            <circle fill="#FFFFFF" cx="496.989" cy="458.666" r="0.398" />
            <circle fill="#FFFFFF" cx="498.334" cy="456.138" r="0.398" />
            <circle fill="#FFFFFF" cx="508.555" cy="461.84" r="0.398" />
            <circle fill="#FFFFFF" cx="480.69" cy="418.106" r="0.398" />
            <circle fill="#FFFFFF" cx="515.494" cy="406.11" r="0.398" />
            <circle fill="#FFFFFF" cx="542.768" cy="424.96" r="0.878" />
            <circle fill="#FFFFFF" cx="547.232" cy="433.007" r="0.398" />
            <circle fill="#FFFFFF" cx="564.285" cy="438.278" r="0.398" />
            <circle fill="#FFFFFF" cx="555.786" cy="408.315" r="0.398" />
            <circle fill="#FFFFFF" cx="541.799" cy="428.596" r="0.398" />
            <circle fill="#FFFFFF" cx="580.315" cy="408.315" r="0.398" />
            <circle fill="#FFFFFF" cx="507.048" cy="415.362" r="0.398" />
            <circle fill="#FFFFFF" cx="580.746" cy="367.325" r="0.398" />
            <circle fill="#FFFFFF" cx="350.832" cy="189.268" r="0.398" />
            <circle fill="#FFFFFF" cx="342.44" cy="186.471" r="0.398" />
            <circle fill="#FFFFFF" cx="343.086" cy="187.008" r="0.398" />
            <circle fill="#FFFFFF" cx="329.852" cy="187.546" r="0.398" />
            <circle fill="#FFFFFF" cx="460.194" cy="107.286" r="0.398" />
            <circle fill="#FFFFFF" cx="462.723" cy="111.913" r="0.398" />
            <circle fill="#FFFFFF" cx="496.828" cy="75.14" r="0.398" />
            <circle fill="#FFFFFF" cx="461.001" cy="49.835" r="0.398" />
            <circle fill="#FFFFFF" cx="511.944" cy="90.341" r="0.398" />
            <circle fill="#FFFFFF" cx="415.169" cy="74.741" r="0.398" />
            <circle fill="#FFFFFF" cx="410.381" cy="78.561" r="0.398" />
            <circle fill="#FFFFFF" cx="360.891" cy="95.506" r="0.398" />
            <circle fill="#FFFFFF" cx="365.163" cy="97.657" r="0.398" />
            <circle fill="#FFFFFF" cx="324.473" cy="90.18" r="0.398" />
            <circle fill="#FFFFFF" cx="355.351" cy="139.67" r="0.398" />
            <circle fill="#FFFFFF" cx="355.404" cy="170.279" r="0.398" />
            <circle fill="#FFFFFF" cx="374.931" cy="131.924" r="0.398" />
            <circle fill="#FFFFFF" cx="324.473" cy="134.667" r="0.398" />
            <circle fill="#FFFFFF" cx="321.6" cy="81.573" r="0.398" />
        </div>
        <div class="starWrap starReflect">
            <svg version="1.1" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" viewBox="0 0 599.456 593.71" enable-background="new 0 0 599.456 593.71" xml:space="preserve" id="starReflection">
            <circle fill="#FFFFFF" cx="287.793" cy="593.312" r="0.398" />
            <circle fill="#FFFFFF" cx="300.965" cy="577.765" r="0.398" />
            <circle fill="#FFFFFF" cx="306.237" cy="570.749" r="0.398" />
            <circle fill="#FFFFFF" cx="282.496" cy="577.496" r="0.398" />
            <circle fill="#FFFFFF" cx="257.775" cy="561.358" r="0.398" />
            <circle fill="#FFFFFF" cx="287.624" cy="531.427" r="0.398" />
            <circle fill="#FFFFFF" cx="240.963" cy="524.725" r="0.398" />
            <circle fill="#FFFFFF" cx="183.157" cy="514.396" r="0.398" />
            <circle fill="#FFFFFF" cx="146.147" cy="518.592" r="0.398" />
            <circle fill="#FFFFFF" cx="104.511" cy="517.893" r="0.398" />
            <circle fill="#FFFFFF" cx="256.101" cy="518.162" r="0.398" />
            <circle fill="#FFFFFF" cx="238.941" cy="508.156" r="0.398" />
            <circle fill="#FFFFFF" cx="199.887" cy="510.716" r="0.398" />
            <circle fill="#FFFFFF" cx="176.917" cy="528.63" r="0.878" />
            <circle fill="#FFFFFF" cx="198.757" cy="549.255" r="0.398" />
            <circle fill="#FFFFFF" cx="133.344" cy="531.072" r="0.398" />
            <circle fill="#FFFFFF" cx="161.909" cy="535.86" r="0.398" />
            <circle fill="#FFFFFF" cx="157.283" cy="564.317" r="0.398" />
            <circle fill="#FFFFFF" cx="173.604" cy="534.838" r="0.398" />
            <circle fill="#FFFFFF" cx="251.83" cy="575.56" r="0.398" />
            <circle fill="#FFFFFF" cx="233.537" cy="567.437" r="0.398" />
            <circle fill="#FFFFFF" cx="264.063" cy="490.566" r="0.398" />
            <circle fill="#FFFFFF" cx="265.408" cy="485.402" r="0.398" />
            <circle fill="#FFFFFF" cx="269.012" cy="468.726" r="0.398" />
            <circle fill="#FFFFFF" cx="290.991" cy="439.161" r="0.398" />
            <circle fill="#FFFFFF" cx="255.079" cy="448.176" r="0.398" />
            <circle fill="#FFFFFF" cx="245.988" cy="476.956" r="0.398" />
            <circle fill="#FFFFFF" cx="231.55" cy="480.291" r="0.398" />
            <circle fill="#FFFFFF" cx="224.202" cy="470.501" r="0.398" />
            <circle fill="#FFFFFF" cx="229.581" cy="462.001" r="0.398" />
            <circle fill="#FFFFFF" cx="238.134" cy="452.103" r="0.398" />
            <circle fill="#FFFFFF" cx="230.872" cy="439.785" r="0.398" />
            <circle fill="#FFFFFF" cx="180.414" cy="423.001" r="0.398" />
            <circle fill="#FFFFFF" cx="256.317" cy="402.376" r="0.398" />
            <circle fill="#FFFFFF" cx="235.714" cy="399.762" r="0.398" />
            <circle fill="#FFFFFF" cx="224.094" cy="399.762" r="0.398" />
            <circle fill="#FFFFFF" cx="244.321" cy="384.915" r="0.398" />
            <circle fill="#FFFFFF" cx="266.936" cy="371.951" r="0.398" />
            <circle fill="#FFFFFF" cx="291.444" cy="365.711" r="0.398" />
            <circle fill="#FFFFFF" cx="259.652" cy="351.348" r="0.398" />
            <circle fill="#FFFFFF" cx="247.979" cy="353.607" r="0.398" />
            <circle fill="#FFFFFF" cx="239.802" cy="362.752" r="0.398" />
            <circle fill="#FFFFFF" cx="245.127" cy="368.701" r="0.398" />
            <circle fill="#FFFFFF" cx="233.669" cy="352.639" r="0.398" />
            <circle fill="#FFFFFF" cx="221.566" cy="356.727" r="0.398" />
            <circle fill="#FFFFFF" cx="189.881" cy="365.097" r="0.398" />
            <circle fill="#FFFFFF" cx="171.452" cy="388.788" r="0.398" />
            <circle fill="#FFFFFF" cx="199.403" cy="400.3" r="0.398" />
            <circle fill="#FFFFFF" cx="130.515" cy="374.587" r="0.398" />
            <circle fill="#FFFFFF" cx="112.849" cy="389.187" r="0.878" />
            <circle fill="#FFFFFF" cx="101.176" cy="393.845" r="0.398" />
            <circle fill="#FFFFFF" cx="105.372" cy="383.032" r="0.398" />
            <circle fill="#FFFFFF" cx="104.318" cy="373.188" r="0.398" />
            <circle fill="#FFFFFF" cx="74.656" cy="361.138" r="0.398" />
            <circle fill="#FFFFFF" cx="107.846" cy="358.072" r="0.398" />
            <circle fill="#FFFFFF" cx="84.338" cy="375.416" r="0.398" />
            <circle fill="#FFFFFF" cx="66.264" cy="379.159" r="0.398" />
            <circle fill="#FFFFFF" cx="10.964" cy="390.133" r="0.398" />
            <circle fill="#FFFFFF" cx="46.005" cy="399.117" r="0.398" />
            <circle fill="#FFFFFF" cx="40.389" cy="416.008" r="0.878" />
            <circle fill="#FFFFFF" cx="74.225" cy="449.414" r="0.398" />
            <circle fill="#FFFFFF" cx="125.19" cy="447.692" r="0.398" />
            <circle fill="#FFFFFF" cx="145.556" cy="433.814" r="0.398" />
            <circle fill="#FFFFFF" cx="183.857" cy="433.415" r="0.398" />
            <circle fill="#FFFFFF" cx="185.255" cy="411.866" r="0.398" />
            <circle fill="#FFFFFF" cx="117.475" cy="455.977" r="0.398" />
            <circle fill="#FFFFFF" cx="163.523" cy="476.848" r="0.398" />
            <circle fill="#FFFFFF" cx="164.814" cy="464.261" r="0.398" />
            <circle fill="#FFFFFF" cx="186.062" cy="479.839" r="0.398" />
            <circle fill="#FFFFFF" cx="202.093" cy="498.796" r="0.398" />
            <circle fill="#FFFFFF" cx="89.395" cy="487.123" r="0.398" />
            <circle fill="#FFFFFF" cx="89.686" cy="483.895" r="0.398" />
            <circle fill="#FFFFFF" cx="79.013" cy="487.123" r="0.398" />
            <circle fill="#FFFFFF" cx="56.742" cy="396.857" r="0.398" />
            <circle fill="#FFFFFF" cx="45.715" cy="446.509" r="0.398" />
            <circle fill="#FFFFFF" cx="75.022" cy="483.035" r="0.398" />
            <circle fill="#FFFFFF" cx="80.067" cy="476.848" r="0.398" />
            <circle fill="#FFFFFF" cx="112.203" cy="481.238" r="0.398" />
            <circle fill="#FFFFFF" cx="115.7" cy="339.513" r="0.398" />
            <circle fill="#FFFFFF" cx="96.227" cy="310.142" r="0.398" />
            <circle fill="#FFFFFF" cx="72.611" cy="311.218" r="0.398" />
            <circle fill="#FFFFFF" cx="50.986" cy="309.443" r="0.398" />
            <circle fill="#FFFFFF" cx="46.253" cy="304.763" r="0.398" />
            <circle fill="#FFFFFF" cx="21.723" cy="290.292" r="0.878" />
            <circle fill="#FFFFFF" cx="18.71" cy="260.222" r="0.398" />
            <circle fill="#FFFFFF" cx="54.913" cy="241.717" r="0.398" />
            <circle fill="#FFFFFF" cx="6.876" cy="250.808" r="0.398" />
            <circle fill="#FFFFFF" cx="12.632" cy="236.929" r="0.398" />
            <circle fill="#FFFFFF" cx="10.318" cy="254.197" r="0.398" />
            <circle fill="#FFFFFF" cx="0.398" cy="245.45" r="0.398" />
            <circle fill="#FFFFFF" cx="11.771" cy="269.721" r="0.398" />
            <circle fill="#FFFFFF" cx="31.965" cy="267.161" r="0.398" />
            <circle fill="#FFFFFF" cx="64.65" cy="290.615" r="0.398" />
            <circle fill="#FFFFFF" cx="64.22" cy="300.352" r="0.398" />
            <circle fill="#FFFFFF" cx="74.709" cy="300.352" r="0.398" />
            <circle fill="#FFFFFF" cx="84.199" cy="294.434" r="0.398" />
            <circle fill="#FFFFFF" cx="89.556" cy="290.292" r="0.398" />
            <circle fill="#FFFFFF" cx="106.286" cy="273.24" r="0.398" />
            <circle fill="#FFFFFF" cx="127.987" cy="290.691" r="0.398" />
            <circle fill="#FFFFFF" cx="128.611" cy="287.957" r="0.398" />
            <circle fill="#FFFFFF" cx="151.311" cy="296.425" r="0.398" />
            <circle fill="#FFFFFF" cx="179.445" cy="296.026" r="0.398" />
            <circle fill="#FFFFFF" cx="184.233" cy="293.896" r="0.398" />
            <circle fill="#FFFFFF" cx="203.384" cy="272.002" r="0.398" />
            <circle fill="#FFFFFF" cx="296.393" cy="284.375" r="0.398" />
            <circle fill="#FFFFFF" cx="260.997" cy="261.136" r="0.398" />
            <circle fill="#FFFFFF" cx="246.849" cy="262.696" r="0.398" />
            <circle fill="#FFFFFF" cx="269.604" cy="245.482" r="0.398" />
            <circle fill="#FFFFFF" cx="267.344" cy="240.91" r="0.398" />
            <circle fill="#FFFFFF" cx="253.842" cy="235.692" r="0.398" />
            <circle fill="#FFFFFF" cx="237.166" cy="243.653" r="0.398" />
            <circle fill="#FFFFFF" cx="230.496" cy="251.937" r="0.398" />
            <circle fill="#FFFFFF" cx="221.942" cy="250.055" r="0.398" />
            <circle fill="#FFFFFF" cx="219.898" cy="234.239" r="0.398" />
            <circle fill="#FFFFFF" cx="216.724" cy="232.464" r="0.398" />
            <circle fill="#FFFFFF" cx="221.996" cy="211.7" r="0.398" />
            <circle fill="#FFFFFF" cx="179.069" cy="238.919" r="0.398" />
            <circle fill="#FFFFFF" cx="182.189" cy="232.464" r="0.398" />
            <circle fill="#FFFFFF" cx="174.227" cy="234.185" r="0.398" />
            <circle fill="#FFFFFF" cx="166.589" cy="235.261" r="0.398" />
            <circle fill="#FFFFFF" cx="173.829" cy="229.667" r="0.398" />
            <circle fill="#FFFFFF" cx="146.309" cy="237.951" r="0.398" />
            <circle fill="#FFFFFF" cx="150.236" cy="222.405" r="0.398" />
            <circle fill="#FFFFFF" cx="141.951" cy="204.061" r="0.398" />
            <circle fill="#FFFFFF" cx="138.347" cy="187.6" r="0.398" />
            <circle fill="#FFFFFF" cx="156.669" cy="174.528" r="0.398" />
            <circle fill="#FFFFFF" cx="173.851" cy="182.167" r="0.398" />
            <circle fill="#FFFFFF" cx="175.25" cy="177.057" r="0.398" />
            <circle fill="#FFFFFF" cx="180.629" cy="176.035" r="0.398" />
            <circle fill="#FFFFFF" cx="166.589" cy="207.665" r="0.398" />
            <circle fill="#FFFFFF" cx="185.847" cy="213.959" r="0.398" />
            <circle fill="#FFFFFF" cx="187.299" cy="209.956" r="0.398" />
            <circle fill="#FFFFFF" cx="192.141" cy="212.991" r="0.398" />
            <circle fill="#FFFFFF" cx="190.85" cy="210.979" r="0.398" />
            <circle fill="#FFFFFF" cx="199.887" cy="203.663" r="0.398" />
            <circle fill="#FFFFFF" cx="213.152" cy="205.245" r="0.398" />
            <circle fill="#FFFFFF" cx="209.624" cy="193.195" r="0.398" />
            <circle fill="#FFFFFF" cx="220.544" cy="188.806" r="0.398" />
            <circle fill="#FFFFFF" cx="242.223" cy="176.949" r="0.398" />
            <circle fill="#FFFFFF" cx="242.223" cy="169.418" r="0.398" />
            <circle fill="#FFFFFF" cx="257.123" cy="158.659" r="0.398" />
            <circle fill="#FFFFFF" cx="272.939" cy="158.261" r="0.398" />
            <circle fill="#FFFFFF" cx="264.493" cy="135.098" r="0.398" />
            <circle fill="#FFFFFF" cx="257.554" cy="127.889" r="0.398" />
            <circle fill="#FFFFFF" cx="287.355" cy="123.64" r="0.398" />
            <circle fill="#FFFFFF" cx="269.711" cy="108.9" r="0.398" />
            <circle fill="#FFFFFF" cx="265.708" cy="94.376" r="0.398" />
            <circle fill="#FFFFFF" cx="254.757" cy="79.407" r="0.398" />
            <circle fill="#FFFFFF" cx="285.257" cy="60.948" r="0.398" />
            <circle fill="#FFFFFF" cx="301.525" cy="16.397" r="0.398" />
            <circle fill="#FFFFFF" cx="241.577" cy="24.606" r="0.398" />
            <circle fill="#FFFFFF" cx="225.116" cy="29.824" r="0.398" />
            <circle fill="#FFFFFF" cx="302.31" cy="77.754" r="0.398" />
            <circle fill="#FFFFFF" cx="244.643" cy="78.561" r="0.398" />
            <circle fill="#FFFFFF" cx="230.388" cy="86.952" r="0.398" />
            <circle fill="#FFFFFF" cx="228.236" cy="97.227" r="0.398" />
            <circle fill="#FFFFFF" cx="237.973" cy="103.897" r="0.398" />
            <circle fill="#FFFFFF" cx="228.774" cy="74.695" r="0.398" />
            <circle fill="#FFFFFF" cx="266.107" cy="99.755" r="0.398" />
            <circle fill="#FFFFFF" cx="285.957" cy="117.4" r="0.398" />
            <circle fill="#FFFFFF" cx="275.79" cy="165.039" r="0.398" />
            <circle fill="#FFFFFF" cx="280.233" cy="176.433" r="0.398" />
            <circle fill="#FFFFFF" cx="283.644" cy="177.864" r="0.398" />
            <circle fill="#FFFFFF" cx="302.74" cy="186.793" r="0.398" />
            <circle fill="#FFFFFF" cx="300.589" cy="180.876" r="0.398" />
            <circle fill="#FFFFFF" cx="300.987" cy="166.029" r="0.398" />
            <circle fill="#FFFFFF" cx="264.17" cy="184.319" r="0.398" />
            <circle fill="#FFFFFF" cx="276.973" cy="190.236" r="0.398" />
            <circle fill="#FFFFFF" cx="274.306" cy="196.131" r="0.398" />
            <circle fill="#FFFFFF" cx="258.522" cy="201.21" r="0.398" />
            <circle fill="#FFFFFF" cx="277.372" cy="201.587" r="0.398" />
            <circle fill="#FFFFFF" cx="286.925" cy="205.998" r="0.398" />
            <circle fill="#FFFFFF" cx="187.698" cy="193.195" r="0.398" />
            <circle fill="#FFFFFF" cx="223.556" cy="273.67" r="0.398" />
            <circle fill="#FFFFFF" cx="182.189" cy="263.234" r="0.398" />
            <circle fill="#FFFFFF" cx="111.988" cy="261.674" r="0.398" />
            <circle fill="#FFFFFF" cx="134.313" cy="266.515" r="0.398" />
            <circle fill="#FFFFFF" cx="129.633" cy="261.276" r="0.398" />
            <circle fill="#FFFFFF" cx="139.961" cy="255.273" r="0.398" />
            <circle fill="#FFFFFF" cx="149.213" cy="257.263" r="0.398" />
            <circle fill="#FFFFFF" cx="153.947" cy="267.968" r="0.878" />
            <circle fill="#FFFFFF" cx="52.869" cy="276.252" r="0.398" />
            <circle fill="#FFFFFF" cx="29.039" cy="299.114" r="0.398" />
            <circle fill="#FFFFFF" cx="39.206" cy="284.084" r="0.398" />
            <circle fill="#FFFFFF" cx="60.831" cy="267.161" r="0.398" />
            <circle fill="#FFFFFF" cx="55.559" cy="236.122" r="0.398" />
            <circle fill="#FFFFFF" cx="51.502" cy="225.578" r="0.398" />
            <circle fill="#FFFFFF" cx="76.216" cy="239.619" r="0.398" />
            <circle fill="#FFFFFF" cx="41.465" cy="220.845" r="0.398" />
            <circle fill="#FFFFFF" cx="39.029" cy="214.712" r="0.398" />
            <circle fill="#FFFFFF" cx="28.339" cy="211.883" r="0.398" />
            <circle fill="#FFFFFF" cx="17.312" cy="212.68" r="0.398" />
            <circle fill="#FFFFFF" cx="13.438" cy="217.563" r="0.398" />
            <circle fill="#FFFFFF" cx="55.16" cy="204.814" r="0.398" />
            <circle fill="#FFFFFF" cx="65.479" cy="210.032" r="0.398" />
            <circle fill="#FFFFFF" cx="68.631" cy="207.127" r="0.878" />
            <circle fill="#FFFFFF" cx="64.112" cy="203.2" r="0.398" />
            <circle fill="#FFFFFF" cx="99.185" cy="185.825" r="0.398" />
            <circle fill="#FFFFFF" cx="112.526" cy="176.035" r="0.398" />
            <circle fill="#FFFFFF" cx="116.722" cy="173.56" r="0.398" />
            <circle fill="#FFFFFF" cx="113.817" cy="173.614" r="0.398" />
            <circle fill="#FFFFFF" cx="115.431" cy="172.43" r="0.398" />
            <circle fill="#FFFFFF" cx="115.431" cy="173.883" r="0.398" />
            <circle fill="#FFFFFF" cx="72.99" cy="166.298" r="0.398" />
            <circle fill="#FFFFFF" cx="54.375" cy="175.636" r="0.398" />
            <circle fill="#FFFFFF" cx="52.815" cy="158.121" r="0.398" />
            <circle fill="#FFFFFF" cx="93.268" cy="138.863" r="0.398" />
            <circle fill="#FFFFFF" cx="87.405" cy="128.75" r="0.398" />
            <circle fill="#FFFFFF" cx="87.243" cy="125.2" r="0.398" />
            <circle fill="#FFFFFF" cx="55.828" cy="120.143" r="0.398" />
            <circle fill="#FFFFFF" cx="107.276" cy="102.66" r="0.398" />
            <circle fill="#FFFFFF" cx="122.586" cy="93.569" r="0.398" />
            <circle fill="#FFFFFF" cx="108.976" cy="75.387" r="0.398" />
            <circle fill="#FFFFFF" cx="106.932" cy="64.951" r="0.398" />
            <circle fill="#FFFFFF" cx="134.366" cy="76.785" r="0.398" />
            <circle fill="#FFFFFF" cx="150.02" cy="67.425" r="0.398" />
            <circle fill="#FFFFFF" cx="124.038" cy="137.465" r="0.398" />
            <circle fill="#FFFFFF" cx="136.841" cy="131.924" r="0.398" />
            <circle fill="#FFFFFF" cx="157.067" cy="140.262" r="0.398" />
            <circle fill="#FFFFFF" cx="162.608" cy="143.866" r="0.398" />
            <circle fill="#FFFFFF" cx="193.324" cy="139.465" r="0.398" />
            <circle fill="#FFFFFF" cx="206.45" cy="147.309" r="0.398" />
            <circle fill="#FFFFFF" cx="229.151" cy="145.318" r="0.398" />
            <circle fill="#FFFFFF" cx="232.809" cy="146.771" r="0.398" />
            <circle fill="#FFFFFF" cx="203.2" cy="116.302" r="0.398" />
            <circle fill="#FFFFFF" cx="189.992" cy="101.261" r="0.398" />
            <circle fill="#FFFFFF" cx="186.654" cy="86.554" r="0.398" />
            <circle fill="#FFFFFF" cx="202.254" cy="64.096" r="0.398" />
            <circle fill="#FFFFFF" cx="179.177" cy="51.798" r="0.398" />
            <circle fill="#FFFFFF" cx="178.208" cy="39.022" r="0.398" />
            <circle fill="#FFFFFF" cx="160.757" cy="39.022" r="0.398" />
            <circle fill="#FFFFFF" cx="150.989" cy="42.874" r="0.398" />
            <circle fill="#FFFFFF" cx="187.622" cy="86.016" r="0.398" />
            <circle fill="#FFFFFF" cx="173.389" cy="160.434" r="0.398" />
            <circle fill="#FFFFFF" cx="181.974" cy="167.966" r="0.398" />
            <circle fill="#FFFFFF" cx="142.328" cy="164.308" r="0.398" />
            <circle fill="#FFFFFF" cx="162.608" cy="137.303" r="0.398" />
            <circle fill="#FFFFFF" cx="69.814" cy="201.533" r="0.398" />
            <circle fill="#FFFFFF" cx="77.076" cy="199.166" r="0.398" />
            <circle fill="#FFFFFF" cx="75.624" cy="197.283" r="0.398" />
            <circle fill="#FFFFFF" cx="77.076" cy="195.669" r="0.398" />
            <circle fill="#FFFFFF" cx="79.712" cy="203.416" r="0.398" />
            <circle fill="#FFFFFF" cx="90.686" cy="204.653" r="0.398" />
            <circle fill="#FFFFFF" cx="92.085" cy="206.32" r="0.398" />
            <circle fill="#FFFFFF" cx="88.911" cy="194.701" r="0.398" />
            <circle fill="#FFFFFF" cx="86.705" cy="221.06" r="0.398" />
            <circle fill="#FFFFFF" cx="72.592" cy="189.967" r="0.398" />
            <circle fill="#FFFFFF" cx="69.76" cy="196.454" r="0.398" />
            <circle fill="#FFFFFF" cx="69.76" cy="198.789" r="0.398" />
            <circle fill="#FFFFFF" cx="69.029" cy="199.564" r="0.398" />
            <circle fill="#FFFFFF" cx="66.748" cy="195.669" r="0.398" />
            <circle fill="#FFFFFF" cx="48.781" cy="199.327" r="0.398" />
            <circle fill="#FFFFFF" cx="72.558" cy="264.041" r="0.398" />
            <circle fill="#FFFFFF" cx="29.039" cy="269.151" r="0.398" />
            <circle fill="#FFFFFF" cx="30.007" cy="266.139" r="0.398" />
            <circle fill="#FFFFFF" cx="66.318" cy="326.119" r="0.398" />
            <circle fill="#FFFFFF" cx="47.651" cy="324.559" r="0.398" />
            <circle fill="#FFFFFF" cx="34.095" cy="344.387" r="0.398" />
            <circle fill="#FFFFFF" cx="48.404" cy="357.674" r="0.398" />
            <circle fill="#FFFFFF" cx="11.847" cy="357.534" r="0.398" />
            <circle fill="#FFFFFF" cx="45.607" cy="345.753" r="0.398" />
            <circle fill="#FFFFFF" cx="23.52" cy="336.232" r="0.398" />
            <circle fill="#FFFFFF" cx="13.654" cy="326.119" r="0.398" />
            <circle fill="#FFFFFF" cx="44.24" cy="309.443" r="0.398" />
            <circle fill="#FFFFFF" cx="114.248" cy="385.915" r="0.398" />
            <circle fill="#FFFFFF" cx="196.767" cy="322.784" r="0.398" />
            <circle fill="#FFFFFF" cx="153.087" cy="334.08" r="0.398" />
            <circle fill="#FFFFFF" cx="171.452" cy="342.472" r="0.398" />
            <circle fill="#FFFFFF" cx="172.022" cy="347.367" r="0.398" />
            <circle fill="#FFFFFF" cx="117.776" cy="370.875" r="0.398" />
            <circle fill="#FFFFFF" cx="199.026" cy="317.081" r="0.398" />
            <circle fill="#FFFFFF" cx="282.944" cy="320.201" r="0.398" />
            <circle fill="#FFFFFF" cx="257.608" cy="307.936" r="0.398" />
            <circle fill="#FFFFFF" cx="195.508" cy="305.408" r="0.398" />
            <circle fill="#FFFFFF" cx="230.496" cy="301.75" r="0.398" />
            <circle fill="#FFFFFF" cx="220.221" cy="388.197" r="0.398" />
            <circle fill="#FFFFFF" cx="211.991" cy="391.693" r="0.398" />
            <circle fill="#FFFFFF" cx="212.744" cy="459.581" r="0.398" />
            <circle fill="#FFFFFF" cx="192.517" cy="442.152" r="0.398" />
            <circle fill="#FFFFFF" cx="370.09" cy="579.809" r="0.398" />
            <circle fill="#FFFFFF" cx="321.999" cy="539.357" r="0.398" />
            <circle fill="#FFFFFF" cx="334.479" cy="521.389" r="0.398" />
            <circle fill="#FFFFFF" cx="373.533" cy="529.889" r="0.398" />
            <circle fill="#FFFFFF" cx="416.137" cy="563.51" r="0.398" />
            <circle fill="#FFFFFF" cx="450.673" cy="553.451" r="0.398" />
            <circle fill="#FFFFFF" cx="433.351" cy="495.084" r="0.878" />
            <circle fill="#FFFFFF" cx="418.181" cy="481.399" r="0.398" />
            <circle fill="#FFFFFF" cx="466.381" cy="492.933" r="0.398" />
            <circle fill="#FFFFFF" cx="462.723" cy="472.115" r="0.398" />
            <circle fill="#FFFFFF" cx="456.59" cy="450.382" r="0.398" />
            <circle fill="#FFFFFF" cx="516.086" cy="455.04" r="0.398" />
            <circle fill="#FFFFFF" cx="532.87" cy="450.113" r="0.398" />
            <circle fill="#FFFFFF" cx="543.79" cy="450.78" r="0.398" />
            <circle fill="#FFFFFF" cx="572.569" cy="420.688" r="0.398" />
            <circle fill="#FFFFFF" cx="574.291" cy="409.122" r="0.398" />
            <circle fill="#FFFFFF" cx="545.995" cy="395.351" r="0.398" />
            <circle fill="#FFFFFF" cx="517.646" cy="395.75" r="0.398" />
            <circle fill="#FFFFFF" cx="558.314" cy="373.134" r="0.398" />
            <circle fill="#FFFFFF" cx="553.472" cy="358.234" r="0.398" />
            <circle fill="#FFFFFF" cx="550.245" cy="346.775" r="0.398" />
            <circle fill="#FFFFFF" cx="586.502" cy="338.706" r="0.398" />
            <circle fill="#FFFFFF" cx="593.71" cy="312.186" r="0.398" />
            <circle fill="#FFFFFF" cx="598.39" cy="353.769" r="0.398" />
            <circle fill="#FFFFFF" cx="535.021" cy="399.493" r="0.398" />
            <circle fill="#FFFFFF" cx="510.061" cy="435.535" r="0.398" />
            <circle fill="#FFFFFF" cx="515.44" cy="425.529" r="0.398" />
            <circle fill="#FFFFFF" cx="503.584" cy="428.058" r="0.398" />
            <circle fill="#FFFFFF" cx="495.429" cy="431.5" r="0.398" />
            <circle fill="#FFFFFF" cx="497.258" cy="420.688" r="0.398" />
            <circle fill="#FFFFFF" cx="477.623" cy="417.837" r="0.398" />
            <circle fill="#FFFFFF" cx="481.981" cy="412.942" r="0.398" />
            <circle fill="#FFFFFF" cx="497.688" cy="408.1" r="0.398" />
            <circle fill="#FFFFFF" cx="461.969" cy="423.378" r="0.398" />
            <circle fill="#FFFFFF" cx="458.634" cy="414.802" r="0.398" />
            <circle fill="#FFFFFF" cx="444.271" cy="422.409" r="0.398" />
            <circle fill="#FFFFFF" cx="419.128" cy="413.856" r="0.398" />
            <circle fill="#FFFFFF" cx="438.408" cy="408.1" r="0.398" />
            <circle fill="#FFFFFF" cx="436.364" cy="381.257" r="0.398" />
            <circle fill="#FFFFFF" cx="455.353" cy="394.383" r="0.398" />
            <circle fill="#FFFFFF" cx="460.033" cy="380.859" r="0.398" />
            <circle fill="#FFFFFF" cx="481.582" cy="379.267" r="0.398" />
            <circle fill="#FFFFFF" cx="476.494" cy="397.019" r="0.398" />
            <circle fill="#FFFFFF" cx="483.433" cy="405.088" r="0.398" />
            <circle fill="#FFFFFF" cx="453.363" cy="443.797" r="0.398" />
            <circle fill="#FFFFFF" cx="440.237" cy="458.666" r="0.398" />
            <circle fill="#FFFFFF" cx="423.937" cy="455.04" r="0.398" />
            <circle fill="#FFFFFF" cx="427.111" cy="455.439" r="0.398" />
            <circle fill="#FFFFFF" cx="404.249" cy="448.284" r="0.398" />
            <circle fill="#FFFFFF" cx="383.216" cy="419.289" r="0.398" />
            <circle fill="#FFFFFF" cx="373.102" cy="404.442" r="0.398" />
            <circle fill="#FFFFFF" cx="371.004" cy="404.388" r="0.398" />
            <circle fill="#FFFFFF" cx="376.222" cy="400.408" r="0.398" />
            <circle fill="#FFFFFF" cx="402.797" cy="395.997" r="0.398" />
            <circle fill="#FFFFFF" cx="381.419" cy="361.214" r="0.398" />
            <circle fill="#FFFFFF" cx="344.699" cy="371.036" r="0.398" />
            <circle fill="#FFFFFF" cx="339.966" cy="372.005" r="0.398" />
            <circle fill="#FFFFFF" cx="309.949" cy="364.258" r="0.398" />
            <circle fill="#FFFFFF" cx="329.099" cy="335.102" r="0.398" />
            <circle fill="#FFFFFF" cx="334.263" cy="319.578" r="0.398" />
            <circle fill="#FFFFFF" cx="325.71" cy="304.978" r="0.398" />
            <circle fill="#FFFFFF" cx="311.687" cy="297.931" r="0.398" />
            <circle fill="#FFFFFF" cx="360.138" cy="301.32" r="0.398" />
            <circle fill="#FFFFFF" cx="358.255" cy="291.153" r="0.398" />
            <circle fill="#FFFFFF" cx="362.882" cy="290.754" r="0.398" />
            <circle fill="#FFFFFF" cx="361.483" cy="281.685" r="0.398" />
            <circle fill="#FFFFFF" cx="353.253" cy="278.404" r="0.398" />
            <circle fill="#FFFFFF" cx="335.232" cy="274.477" r="0.398" />
            <circle fill="#FFFFFF" cx="359.654" cy="266.139" r="0.398" />
            <circle fill="#FFFFFF" cx="363.28" cy="269.635" r="0.398" />
            <circle fill="#FFFFFF" cx="377.482" cy="268.291" r="0.398" />
            <circle fill="#FFFFFF" cx="364.334" cy="258.5" r="0.398" />
            <circle fill="#FFFFFF" cx="357.825" cy="354.898" r="0.398" />
            <circle fill="#FFFFFF" cx="392.414" cy="348.873" r="0.398" />
            <circle fill="#FFFFFF" cx="406.347" cy="332.52" r="0.398" />
            <circle fill="#FFFFFF" cx="380.849" cy="319.664" r="0.398" />
            <circle fill="#FFFFFF" cx="371.435" cy="303.741" r="0.398" />
            <circle fill="#FFFFFF" cx="429.478" cy="369.154" r="0.398" />
            <circle fill="#FFFFFF" cx="434.75" cy="367.486" r="0.398" />
            <circle fill="#FFFFFF" cx="433.674" cy="359.094" r="0.398" />
            <circle fill="#FFFFFF" cx="449.543" cy="355.49" r="0.398" />
            <circle fill="#FFFFFF" cx="441.635" cy="341.719" r="0.398" />
            <circle fill="#FFFFFF" cx="462.83" cy="353.047" r="0.398" />
            <circle fill="#FFFFFF" cx="475.31" cy="329.239" r="0.398" />
            <circle fill="#FFFFFF" cx="476.494" cy="324.72" r="0.398" />
            <circle fill="#FFFFFF" cx="488.974" cy="332.197" r="0.398" />
            <circle fill="#FFFFFF" cx="492.847" cy="348.013" r="0.398" />
            <circle fill="#FFFFFF" cx="447.983" cy="309.819" r="0.398" />
            <circle fill="#FFFFFF" cx="478.269" cy="299.437" r="0.398" />
            <circle fill="#FFFFFF" cx="481.55" cy="280.878" r="0.398" />
            <circle fill="#FFFFFF" cx="470.953" cy="268.721" r="0.878" />
            <circle fill="#FFFFFF" cx="467.08" cy="263.664" r="0.398" />
            <circle fill="#FFFFFF" cx="473.804" cy="262.266" r="0.398" />
            <circle fill="#FFFFFF" cx="451.103" cy="259.432" r="0.398" />
            <circle fill="#FFFFFF" cx="474.396" cy="254.412" r="0.398" />
            <circle fill="#FFFFFF" cx="465.681" cy="239.242" r="0.398" />
            <circle fill="#FFFFFF" cx="486.93" cy="255.165" r="0.398" />
            <circle fill="#FFFFFF" cx="462.992" cy="242.308" r="0.398" />
            <circle fill="#FFFFFF" cx="472.89" cy="223.481" r="0.398" />
            <circle fill="#FFFFFF" cx="483.541" cy="211.754" r="0.398" />
            <circle fill="#FFFFFF" cx="470.953" cy="207.181" r="0.398" />
            <circle fill="#FFFFFF" cx="462.238" cy="206.536" r="0.398" />
            <circle fill="#FFFFFF" cx="452.394" cy="212.345" r="0.398" />
            <circle fill="#FFFFFF" cx="451.996" cy="200.457" r="0.398" />
            <circle fill="#FFFFFF" cx="444.863" cy="197.229" r="0.398" />
            <circle fill="#FFFFFF" cx="517.377" cy="201.479" r="0.398" />
            <circle fill="#FFFFFF" cx="411.888" cy="299.706" r="0.398" />
            <circle fill="#FFFFFF" cx="404.948" cy="285.612" r="0.398" />
            <circle fill="#FFFFFF" cx="400.914" cy="273.325" r="0.398" />
            <circle fill="#FFFFFF" cx="416.944" cy="255.595" r="0.398" />
            <circle fill="#FFFFFF" cx="419.526" cy="247.204" r="0.398" />
            <circle fill="#FFFFFF" cx="422.7" cy="241.663" r="0.398" />
            <circle fill="#FFFFFF" cx="410.973" cy="235.261" r="0.398" />
            <circle fill="#FFFFFF" cx="394.405" cy="234.454" r="0.398" />
            <circle fill="#FFFFFF" cx="372.672" cy="241.125" r="0.398" />
            <circle fill="#FFFFFF" cx="382.409" cy="224.234" r="0.398" />
            <circle fill="#FFFFFF" cx="371.489" cy="233.648" r="0.398" />
            <circle fill="#FFFFFF" cx="359.224" cy="209.225" r="0.398" />
            <circle fill="#FFFFFF" cx="352.231" cy="180.123" r="0.398" />
            <circle fill="#FFFFFF" cx="345.883" cy="175.066" r="0.398" />
            <circle fill="#FFFFFF" cx="350.832" cy="172.269" r="0.398" />
            <circle fill="#FFFFFF" cx="355.512" cy="171.408" r="0.398" />
            <circle fill="#FFFFFF" cx="354.866" cy="164.738" r="0.398" />
            <circle fill="#FFFFFF" cx="361.537" cy="163.232" r="0.398" />
            <circle fill="#FFFFFF" cx="332.703" cy="165.76" r="0.398" />
            <circle fill="#FFFFFF" cx="314.898" cy="150.106" r="0.398" />
            <circle fill="#FFFFFF" cx="312.961" cy="142.79" r="0.398" />
            <circle fill="#FFFFFF" cx="315.167" cy="139.294" r="0.398" />
            <circle fill="#FFFFFF" cx="340.902" cy="140.585" r="0.398" />
            <circle fill="#FFFFFF" cx="352.629" cy="151.343" r="0.398" />
            <circle fill="#FFFFFF" cx="360.407" cy="150.106" r="0.398" />
            <circle fill="#FFFFFF" cx="359.6" cy="135.667" r="0.398" />
            <circle fill="#FFFFFF" cx="377.621" cy="137.895" r="0.398" />
            <circle fill="#FFFFFF" cx="387.089" cy="107.91" r="0.398" />
            <circle fill="#FFFFFF" cx="369.197" cy="103.413" r="0.398" />
            <circle fill="#FFFFFF" cx="366.992" cy="85.93" r="0.398" />
            <circle fill="#FFFFFF" cx="333.995" cy="73.859" r="0.398" />
            <circle fill="#FFFFFF" cx="338.406" cy="76.086" r="0.398" />
            <circle fill="#FFFFFF" cx="370.843" cy="83.671" r="0.398" />
            <circle fill="#FFFFFF" cx="382.839" cy="47.253" r="0.398" />
            <circle fill="#FFFFFF" cx="390.047" cy="44.94" r="0.398" />
            <circle fill="#FFFFFF" cx="409.467" cy="57.904" r="0.398" />
            <circle fill="#FFFFFF" cx="430.554" cy="46.015" r="0.398" />
            <circle fill="#FFFFFF" cx="437.278" cy="45.047" r="0.398" />
            <circle fill="#FFFFFF" cx="412.856" cy="31.868" r="0.398" />
            <circle fill="#FFFFFF" cx="420.118" cy="23.368" r="0.398" />
            <circle fill="#FFFFFF" cx="417.375" cy="17.397" r="0.398" />
            <circle fill="#FFFFFF" cx="409.068" cy="14.277" r="0.398" />
            <circle fill="#FFFFFF" cx="370.445" cy="14.708" r="0.398" />
            <circle fill="#FFFFFF" cx="362.613" cy="31.469" r="0.398" />
            <circle fill="#FFFFFF" cx="335.178" cy="38.269" r="0.398" />
            <circle fill="#FFFFFF" cx="325.065" cy="13.094" r="0.398" />
            <circle fill="#FFFFFF" cx="339.535" cy="17.397" r="0.398" />
            <circle fill="#FFFFFF" cx="354.597" cy="9.328" r="0.398" />
            <circle fill="#FFFFFF" cx="343.247" cy="1.044" r="0.398" />
            <circle fill="#FFFFFF" cx="322.827" cy="0.398" r="0.398" />
            <circle fill="#FFFFFF" cx="403.442" cy="104.435" r="0.398" />
            <circle fill="#FFFFFF" cx="415.707" cy="124.931" r="0.398" />
            <circle fill="#FFFFFF" cx="421.248" cy="116.055" r="0.398" />
            <circle fill="#FFFFFF" cx="436.633" cy="118.852" r="0.398" />
            <circle fill="#FFFFFF" cx="450.942" cy="113.182" r="0.398" />
            <circle fill="#FFFFFF" cx="436.955" cy="92.87" r="0.398" />
            <circle fill="#FFFFFF" cx="482.035" cy="97.657" r="0.398" />
            <circle fill="#FFFFFF" cx="478.699" cy="94.107" r="0.398" />
            <circle fill="#FFFFFF" cx="487.898" cy="81.143" r="0.398" />
            <circle fill="#FFFFFF" cx="388.81" cy="126.383" r="0.398" />
            <circle fill="#FFFFFF" cx="328.4" cy="162.425" r="0.398" />
            <circle fill="#FFFFFF" cx="354.221" cy="215.358" r="0.398" />
            <circle fill="#FFFFFF" cx="345.883" cy="220.038" r="0.398" />
            <circle fill="#FFFFFF" cx="335.77" cy="244.46" r="0.398" />
            <circle fill="#FFFFFF" cx="311.186" cy="248.495" r="0.398" />
            <circle fill="#FFFFFF" cx="324.473" cy="219.823" r="0.398" />
            <circle fill="#FFFFFF" cx="324.075" cy="196.131" r="0.398" />
            <circle fill="#FFFFFF" cx="313.929" cy="191.689" r="0.398" />
            <circle fill="#FFFFFF" cx="341.396" cy="198.144" r="0.398" />
            <circle fill="#FFFFFF" cx="349.142" cy="201.156" r="0.398" />
            <circle fill="#FFFFFF" cx="349.433" cy="196.745" r="0.398" />
            <circle fill="#FFFFFF" cx="313.445" cy="223.835" r="0.398" />
            <circle fill="#FFFFFF" cx="354.866" cy="219.823" r="0.398" />
            <circle fill="#FFFFFF" cx="341.795" cy="221.275" r="0.398" />
            <circle fill="#FFFFFF" cx="514.149" cy="324.322" r="0.398" />
            <circle fill="#FFFFFF" cx="510.115" cy="309.421" r="0.398" />
            <circle fill="#FFFFFF" cx="505.22" cy="298.684" r="0.398" />
            <circle fill="#FFFFFF" cx="502.1" cy="297.877" r="0.398" />
            <circle fill="#FFFFFF" cx="506.833" cy="289.808" r="0.398" />
            <circle fill="#FFFFFF" cx="533.623" cy="287.764" r="0.398" />
            <circle fill="#FFFFFF" cx="547.448" cy="296.532" r="0.398" />
            <circle fill="#FFFFFF" cx="571.386" cy="288.033" r="0.398" />
            <circle fill="#FFFFFF" cx="573.721" cy="287.925" r="0.398" />
            <circle fill="#FFFFFF" cx="589.213" cy="296.371" r="0.398" />
            <circle fill="#FFFFFF" cx="593.312" cy="295.972" r="0.398" />
            <circle fill="#FFFFFF" cx="599.058" cy="294.327" r="0.398" />
            <circle fill="#FFFFFF" cx="590.751" cy="270.066" r="0.398" />
            <circle fill="#FFFFFF" cx="594.947" cy="289.593" r="0.398" />
            <circle fill="#FFFFFF" cx="529.319" cy="272.809" r="0.398" />
            <circle fill="#FFFFFF" cx="509.738" cy="253.766" r="0.398" />
            <circle fill="#FFFFFF" cx="530.018" cy="250.27" r="0.398" />
            <circle fill="#FFFFFF" cx="537.603" cy="247.15" r="0.398" />
            <circle fill="#FFFFFF" cx="521.035" cy="242.846" r="0.398" />
            <circle fill="#FFFFFF" cx="500.884" cy="220.468" r="0.398" />
            <circle fill="#FFFFFF" cx="490.48" cy="223.481" r="0.398" />
            <circle fill="#FFFFFF" cx="544.489" cy="231.496" r="0.398" />
            <circle fill="#FFFFFF" cx="519.152" cy="221.006" r="0.398" />
            <circle fill="#FFFFFF" cx="504.359" cy="213.367" r="0.398" />
            <circle fill="#FFFFFF" cx="520.389" cy="193.84" r="0.398" />
            <circle fill="#FFFFFF" cx="521.573" cy="192.065" r="0.398" />
            <circle fill="#FFFFFF" cx="501.508" cy="190.666" r="0.398" />
            <circle fill="#FFFFFF" cx="496.021" cy="190.935" r="0.398" />
            <circle fill="#FFFFFF" cx="481.658" cy="190.666" r="0.398" />
            <circle fill="#FFFFFF" cx="474.342" cy="179.37" r="0.398" />
            <circle fill="#FFFFFF" cx="458.15" cy="182.006" r="0.398" />
            <circle fill="#FFFFFF" cx="460.356" cy="174.421" r="0.398" />
            <circle fill="#FFFFFF" cx="444.863" cy="181.575" r="0.398" />
            <circle fill="#FFFFFF" cx="434.804" cy="175.873" r="0.398" />
            <circle fill="#FFFFFF" cx="411.296" cy="166.836" r="0.398" />
            <circle fill="#FFFFFF" cx="407.692" cy="184.157" r="0.398" />
            <circle fill="#FFFFFF" cx="412.264" cy="190.666" r="0.398" />
            <circle fill="#FFFFFF" cx="415.137" cy="198.467" r="0.878" />
            <circle fill="#FFFFFF" cx="410.22" cy="196.906" r="0.398" />
            <circle fill="#FFFFFF" cx="401.721" cy="195.185" r="0.398" />
            <circle fill="#FFFFFF" cx="398.385" cy="192.549" r="0.398" />
            <circle fill="#FFFFFF" cx="389.294" cy="176.088" r="0.398" />
            <circle fill="#FFFFFF" cx="375.523" cy="181.575" r="0.398" />
            <circle fill="#FFFFFF" cx="374.393" cy="188.515" r="0.398" />
            <circle fill="#FFFFFF" cx="375.922" cy="144.565" r="0.398" />
            <circle fill="#FFFFFF" cx="409.822" cy="212.345" r="0.398" />
            <circle fill="#FFFFFF" cx="418.688" cy="217.025" r="0.398" />
            <circle fill="#FFFFFF" cx="422.108" cy="215.68" r="0.398" />
            <circle fill="#FFFFFF" cx="421.033" cy="155.4" r="0.398" />
            <circle fill="#FFFFFF" cx="416.084" cy="164.684" r="0.398" />
            <circle fill="#FFFFFF" cx="418.289" cy="181.36" r="0.398" />
            <circle fill="#FFFFFF" cx="450.242" cy="164.039" r="0.398" />
            <circle fill="#FFFFFF" cx="455.46" cy="151.268" r="0.398" />
            <circle fill="#FFFFFF" cx="479.076" cy="148.492" r="0.398" />
            <circle fill="#FFFFFF" cx="492.04" cy="136.496" r="0.398" />
            <circle fill="#FFFFFF" cx="486.553" cy="130.902" r="0.398" />
            <circle fill="#FFFFFF" cx="491.502" cy="131.171" r="0.398" />
            <circle fill="#FFFFFF" cx="496.989" cy="135.044" r="0.398" />
            <circle fill="#FFFFFF" cx="498.334" cy="137.572" r="0.398" />
            <circle fill="#FFFFFF" cx="508.555" cy="131.87" r="0.398" />
            <circle fill="#FFFFFF" cx="480.69" cy="175.604" r="0.398" />
            <circle fill="#FFFFFF" cx="515.494" cy="187.6" r="0.398" />
            <circle fill="#FFFFFF" cx="542.768" cy="168.751" r="0.878" />
            <circle fill="#FFFFFF" cx="547.232" cy="160.703" r="0.398" />
            <circle fill="#FFFFFF" cx="564.285" cy="155.432" r="0.398" />
            <circle fill="#FFFFFF" cx="555.786" cy="185.395" r="0.398" />
            <circle fill="#FFFFFF" cx="541.799" cy="165.114" r="0.398" />
            <circle fill="#FFFFFF" cx="580.315" cy="185.395" r="0.398" />
            <circle fill="#FFFFFF" cx="507.048" cy="178.348" r="0.398" />
            <circle fill="#FFFFFF" cx="580.746" cy="226.385" r="0.398" />
            <circle fill="#FFFFFF" cx="350.832" cy="404.442" r="0.398" />
            <circle fill="#FFFFFF" cx="342.44" cy="407.24" r="0.398" />
            <circle fill="#FFFFFF" cx="343.086" cy="406.702" r="0.398" />
            <circle fill="#FFFFFF" cx="329.852" cy="406.164" r="0.398" />
            <circle fill="#FFFFFF" cx="460.194" cy="486.424" r="0.398" />
            <circle fill="#FFFFFF" cx="462.723" cy="481.797" r="0.398" />
            <circle fill="#FFFFFF" cx="496.828" cy="518.57" r="0.398" />
            <circle fill="#FFFFFF" cx="461.001" cy="543.875" r="0.398" />
            <circle fill="#FFFFFF" cx="511.944" cy="503.369" r="0.398" />
            <circle fill="#FFFFFF" cx="415.169" cy="518.969" r="0.398" />
            <circle fill="#FFFFFF" cx="410.381" cy="515.149" r="0.398" />
            <circle fill="#FFFFFF" cx="360.891" cy="498.204" r="0.398" />
            <circle fill="#FFFFFF" cx="365.163" cy="496.053" r="0.398" />
            <circle fill="#FFFFFF" cx="324.473" cy="503.53" r="0.398" />
            <circle fill="#FFFFFF" cx="355.351" cy="454.04" r="0.398" />
            <circle fill="#FFFFFF" cx="355.404" cy="423.431" r="0.398" />
            <circle fill="#FFFFFF" cx="374.931" cy="461.786" r="0.398" />
            <circle fill="#FFFFFF" cx="324.473" cy="459.043" r="0.398" />
            <circle fill="#FFFFFF" cx="321.6" cy="512.137" r="0.398" />
            </svg>
        </div>
    </div>

    <!-- sky gradient -->
    <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" id="sky">
        <linearGradient id="skyGradient" x1="0%" y1="0%" x2="0%" y2="100%">

            <!-- sky zenith -->
            <stop stop-color="rgb(0,0,0)" offset="0%" id="skyZenith">
                <animate attributeName="stop-color" dur="60s" values="rgba(0,19,48,0);rgba(0,19,48,0);rgba(0,19,48,0);rgba(0,19,48,0);rgba(37,32,70,.33);rgba(69,40,92,0.67);rgba(102,44,113,1);rgba(94,112,155,1);rgba(0,137,185,1);rgba(9,127,182,1);rgba(20,116,178,1);rgba(27,106,175,1);rgba(29,101,173,1);rgba(31,96,173,1);rgba(47,100,170,1);rgba(66,119,177,1);rgba(73,119,174,1);rgba(79,120,174,1);rgba(76,101,150,1);rgba(71,82,133,0.93);rgba(59,66,108,0.78);rgba(44,49,84,0.56);rgba(27,30,60,0.33);rgba(0,19,48,0.0);rgba(0,19,48,0.0)"
                         repeatCount="indefinite" />
                <animate attributeName="offset" dur="60s" values="0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0.12;0.21;0.21;0.07;0.07;0;0;0;0;"
                         repeatCount="indefinite" />
            </stop>

            <!-- sky mid -->
            <stop stop-color="rgb(0,0,0)" offset="0%" id="skyMid">
                <animate attributeName="stop-color" dur="60s" values="rgba(38,118,127,0.3);rgba(64,105,129,0.3);rgba(76,77,120,0.3);rgba(91,64,124,0.3);rgba(137,66,131,0.53);rgba(175,69,138,0.77);rgba(239,80,154,1);rgba(218,166,181,1);rgba(211,226,199,1);rgba(134,189,187,1);rgba(127,180,194,1);rgba(142,205,217,1)rgba(119,203,227,1);rgba(92,202,273,1);rgba(107,197,222,1);rgba(122,200,212,1);rgba(135,203,202,1);rgba(148,205,192,1);rgba(153,134,141,1);rgba(174,93,104,1);rgba(150,96,114,0.78);rgba(127,98,124,0.79);rgba(99,99,134,0.53);rgba(54,92,145,0.3);rgba(38,118,123,0.3)"
                         repeatCount="indefinite" />
                <animate attributeName="offset" dur="60s" values=".66;.62;.52;.52;.52;.52;.58;.66;.69;.55;.57;.77;.78;.78;.74;.74;.74;.74;.55;.56;.56;.56;.56;.56;.56;.66;"
                         repeatCount="indefinite" />
            </stop>

            <!-- sky horizon -->
            <stop stop-color="rgb(0,0,0)" offset="100%" id="skyHorizon">
                <animate attributeName="stop-color" dur="60s" values="rgba(99,95,61,1);rgba(113,99,69,1);rgba(128,103,77,1);rgba(142,107,85,1);rgba(172,126,106,1);rgba(206,150,130,1);rgba(249,180,160,1);rgba(244,194,150,1);rgba(242,207,137,1);rgba(255,232,177,1);rgba(245,234,198,1);rgba(235,237,220,1)rgba(229,239,231,1);rgba(226,243,244,1);rgba(216,227,222,1);rgba(206,215,203,1);rgba(197,203,185,1);rgba(187,192,167,1);rgba(218,156,108,1);rgba(244,117,49,1);rgba(208,119,68,1);rgba(179,120,84,1);rgba(151,119,96,1);rgba(119,99,84,1);rgba(99,95,61,1)"
                         repeatCount="indefinite" />
            </stop>

        </linearGradient>
        <rect id="sky-rect" x="0" y="0" width="100%" height="100%" style="fill:url(#skyGradient)" />
    </svg>

    <!-- reflection gradient -->
    <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" id="reflection">
        <linearGradient id="reflect" x1="0%" y1="0%" x2="0%" y2="100%">

            <!-- reflected sky horizon -->
            <stop stop-color="rgb(0,0,0)" offset="0%" id="reflectHorizon">
                <animate attributeName="stop-color" dur="60s" values="rgba(99,95,61,1);rgba(113,99,69,1);rgba(128,103,77,1);rgba(142,107,85,1);rgba(172,126,106,1);rgba(206,150,130,1);rgba(249,180,160,1);rgba(244,194,150,1);rgba(242,207,137,1);rgba(255,232,177,1);rgba(245,234,198,1);rgba(235,237,220,1)rgba(229,239,231,1);rgba(226,243,244,1);rgba(216,227,222,1);rgba(206,215,203,1);rgba(197,203,185,1);rgba(187,192,167,1);rgba(218,156,108,1);rgba(244,117,49,1);rgba(208,119,68,1);rgba(179,120,84,1);rgba(151,119,96,1);rgba(119,99,84,1);rgba(99,95,61,1)"
                         repeatCount="indefinite" />
                <animate attributeName="offset" dur="60s" values=".22;.22;.22;.22;.22;.22;.22;.22;.22;.22;.22;.22;.22;.22;.22;.22;.22;.22;.22;.22;.22;.22;.22;.22;"
                         repeatCount="indefinite" />
            </stop>

            <!-- reflected sky mid -->
            <stop stop-color="rgb(0,0,0)" offset="50%" id="reflectMid">
                <animate attributeName="stop-color" dur="60s" values="rgba(38,118,127,0.3);rgba(64,105,129,0.3);rgba(76,77,120,0.3);rgba(91,64,124,0.3);rgba(137,66,131,0.53);rgba(175,69,138,0.77);rgba(239,80,154,1);rgba(218,166,181,1);rgba(211,226,199,1);rgba(134,189,187,1);rgba(127,180,194,1);rgba(142,205,217,1)rgba(119,203,227,1);rgba(92,202,273,1);rgba(107,197,222,1);rgba(122,200,212,1);rgba(135,203,202,1);rgba(148,205,192,1);rgba(153,134,141,1);rgba(174,93,104,1);rgba(150,96,114,0.78);rgba(127,98,124,0.79);rgba(99,99,134,0.53);rgba(54,92,145,0.3);rgba(38,118,123,0.3)"
                         repeatCount="indefinite" />
                <animate attributeName="offset" dur="60s" values=".62;.66;.73;.77;.87;.64;.55;.5;.47;.47;.47;.45;.45;.45;.42;.42;.45;.48;.58;.64;.64;.6;.6;.6;.6;"
                         repeatCount="indefinite" />
            </stop>

            <!-- reflected sky zenith -->
            <stop stop-color="rgb(0,0,0)" offset="100%" id="reflectZenith">
                <animate attributeName="stop-color" dur="60s" values="rgba(0,19,48,0);rgba(0,19,48,0);rgba(0,19,48,0);rgba(0,19,48,0);rgba(37,32,70,.33);rgba(69,40,92,0.67);rgba(102,44,113,1);rgba(94,112,155,1);rgba(0,137,185,1);rgba(9,127,182,1);rgba(20,116,178,1);rgba(27,106,175,1);rgba(29,101,173,1);rgba(31,96,173,1);rgba(47,100,170,1);rgba(66,119,177,1);rgba(73,119,174,1);rgba(79,120,174,1);rgba(76,101,150,1);rgba(71,82,133,0.93);rgba(59,66,108,0.78);rgba(44,49,84,0.56);rgba(27,30,60,0.33);rgba(0,19,48,0.0);rgba(0,19,48,0.0)"
                         repeatCount="indefinite" />
                <animate attributeName="offset" dur="60s" values="1;1;1;1;1;1;1;.85;.85;.85;.85;.85;.85;.85;.85;.85;.85;.85;.9;.9;.9;.95;1;1;1;"
                         repeatCount="indefinite" />
            </stop>


        </linearGradient>
        <rect id="reflection-rect" x="0" y="0" width="100%" height="100%" style="fill:url(#reflect)" />
    </svg>
    <!-- end reflection gradient -->
    <!-- Landscape -->
    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" viewBox="0 0 539.6 174.9" enable-background="new 0 0 539.6 174.9" xml:space="preserve" id="landscape">

        <!-- Land layer 1 -->
    <polygon class="land layer1"
             fill="#F1F2F2" points="309.4,89.8 304.7,90.9 296,89.6 286.2,91 251.5,89.1 232.7,90.9 225,89.6 205.7,90.3 199.6,90.3
          184.6,88.6 171.6,88.6 156.2,86.6 171.6,99 254.1,111.2 281.7,108.1 315.2,103.3 315.2,90.2 " />

        <!-- Land layer 2 -->
    <polygon class="land layer2"
             fill="#E6E7E8" points="301.3,96.7 297.9,94.1 294,91.2 289.6,89.2 288.3,89.9 286.7,88.7 284.9,88.7 284.4,88.1 283.2,87.9 282.1,87.2 281.4,88 280.2,88.3 279,87.5 278,85.8 276.9,84.9 275.2,82.9 273.2,80.3 272.2,80.5 271.3,80.1 269.9,81.5 269,81.4 267.9,79.3 267,78.6 266.2,77.2 265.2,77.2 264.8,78.1 263.9,78.5 263,79.3 262,79.8 259.2,83.1 257.3,84.4 256.7,85.3 254.1,87.7 252.9,87.3 252,87.5 249.5,86 248.6,86.4 247.5,86.4 245.8,88.1 244.3,87.6 243.3,87.1 241.6,88.5 240.9,88.4 240.2,88.8 239.4,88.6 238.6,91.1 237.5,93 236.6,91.8 235.5,93 234.8,93.9 233.2,93.9 231.5,95.1 229.7,95.2 227.8,96.1
          228.4,98.8 242.1,105.5 264.4,108.1 288.4,103.8 301.7,99.1 " />

        <!-- Land layer 3 -->
    <polygon class="land layer3"
             fill="#D1D3D4" points="278.2,102.9 271.1,103.9 263.8,106.1 258.2,105.6 254,103.9 244.5,102.9 235.1,103.9 237.8,107 254.1,111.2 265.9,108.1 280.9,106.3 284.4,104 " />

        <!-- Land layer 4 -->
    <g>
    <polygon class="land layer4"
             fill="#BCBEC0"
             points="355.5,84.5 352,83 349.2,82.1 346.1,83.2 345.2,81.6 341.8,79.8 340.3,79.8 337.8,79.3 335.6,81.9
            334.5,83.2 331.7,84 330.6,84.6 328.2,83 326.2,84.3 325.6,85.1 323.4,85.7 322.8,87 318.9,87 312.9,91.3 312,93.1 305.7,94.8
            302.6,96.7 298.6,96.9 296.1,99.6 291.9,101.8 290,102.6 287.8,102.1 286,102.1 284.2,102.6 280.1,105 277.6,105 273.5,105.6
            268.5,106.8 261.2,106.8 257.4,108.1 244.3,108.7 240.6,107.6 245.8,107.7 240.3,103.3 235.7,101.8 233,97.7 229.6,97.7
            228.4,95.2 226.4,95.2 225,92.5 222.5,90.3 214.8,92.5 228.7,107.6 230.1,107.6 231.6,108.3 233.5,108.5 235.3,109.6 236.9,109.7 237.5,110.6 238.7,111.7 239.7,110.6 240.8,112.4 241.6,114.9 242.3,114.7 243.1,115.1 243.8,115 245.6,116.4 246.5,115.9 248.1,115.4 249.8,117.2 250.9,117.2 251.8,117.5 254.4,116 255.3,116.3 256.6,115.9 259.2,118.2 259.8,119.1 261.8,120.4 264.6,123.8 265.7,124.2 266.5,125 267.5,125.4 267.9,126.4 268.9,126.4 269.8,124.9 270.6,124.2 271.7,122.1 272.7,122 274.1,123.5 275,123 276,123.2 278.1,120.7 279.8,118.7 281,117.7 282,116 283.2,115.2 284.4,115.6 285.1,116.3 286.2,115.6 287.5,115.5 288,114.9 289.9,114.9 291.5,113.6 292.7,114.3 297.2,112.3 301.2,109.5 304.7,106.8 305,104.8 334.5,100.2 " />
    <path class="land layer4"
          fill="#BCBEC0" d="M187.6,90l-5.1,2.4l-2.4,0.2l-6.7-3.4l-3.8,0.6l-6.3-2.8l-7-5.2l-6.3-2.6l-3.9-1.3l-2.7,0.3l-4.9-3.4
            l-1.7,0.3l-4.2-0.3l-4.7,0.7l-2.9-1.4l-2.3,0.7L111.2,79l-2.7-0.8l-2.6,0.8h-4.7h-0.4l-3.2-1.2L96,78.2l-3.2-1.6l-3.8-0.5l-1.6,0.5 l-2.1-0.7L79.9,79l-8.4,0.7l-3.6-1.3l-3.6,1.3l-28.2,2l7.5-5.9c0,0-18.2-18-19.5-16.8c-1.4,1.2-8.9-4.2-8.9-4.2l-3.1-2.1l-4.7-0.2 L3.1,49L0,44.8l0,41.9V99l27.7,1.7l85.2,5.9l27.3,2.4l39.2-6.7l14.4-9.4l-3-2.2L187.6,90z" />
        </g>

        <!-- Land layer 5 -->
    <g>
    <polygon class="land layer5"
             fill="#A7A9AC" points="99.5,85.9 84.8,74.3 72.2,63.4 68.4,61.3
            55.7,62.4 35.7,87.2 18.8,77.6 13.5,75.4 10.5,72.9 7,71.4 4.3,67
            2.7,65.7 0,66.3 0,91.6 0,91.6 17.5,96.9 12.2,98.9 63.6,110.3
            110.9,91.4 99.5,86.6 " />
    <polygon class="land layer5"
             fill="#A7A9AC" points="394,69.1 385.4,71.7 381.1,71.7 378.9,70 374.3,71 372.2,73.9 368.9,77.2 366,75.3 364.3,76.4 361.7,76.5 359.6,80 357.3,81.7 356.2,80.2 354.7,79.5 351.6,82.1 348.9,88.6 346,90.9 340.7,94.6 334.1,95.8 329.8,94.4 324.6,92.8 316.5,94.8 310.9,97.8 303.7,99 295.8,103 293.3,103 290.6,103.5 288.9,105.2 285.7,105.2 277.6,107.8 270.1,108.6
            263,110.7 265.8,111 273.3,112.2 291.6,114.6 343.4,108.2 406,89.4 " />
    <polygon class="land layer5"
             fill="#A7A9AC" points="244.3,107.7 242.4,106.5 238.8,105.1
            232.8,100.3 222,94.8 214,90.9 207.3,87.1
            204.6,85.8 202.6,85.8 199.5,87.4 191.3,93.7
            188.1,94 178.3,98.9 190.4,107.7 " />
    <polygon class="land layer5"
             fill="#A7A9AC" points="224,121.5 219.6,121.1 210.4,120 203.7,117.4 198,114.6
            132.7,127.1 138.7,138.7 141.7,139.9 147.9,142.3 151.9,142.3 156.4,143.5 162.6,147.5 165.5,148.5 175.5,147.7 180.3,145.1 192.2,136.8 201.8,132.8 209.3,130.7 211.8,129.3 216,130 226.8,127.9 230.4,125.6 233.1,122.8 235.9,122.2 240.1,121.9 242.6,122.7 246.7,125.8 249.7,124.1 252.5,122 232.3,121.4 " />
        </g>

        <!-- Land layer 6 -->
    <g>
    <polygon class="land layer6"
             fill="#939598" points="318.8,103.4 313,105 306.8,106.8 301.5,106.4 293.4,108.8 284.3,111 279.8,111 276.7,109.8
            271.9,111 269.6,112.4 266.1,114.1 272.1,114.1 276.4,114.7 277.8,115.9 282,117.2 291.6,118 309.7,119.1 319.6,116.2 327.9,103.4
            323.6,102.1   " />
    <polygon class="land layer6"
             fill="#939598" points="264.3,110 259.2,108.2 249.7,107.5 246.3,106 240,106.8 235.3,104.1 230.1,103.3 225.1,105.5
            219.2,105.4 215.2,107.2 204.3,105.5 198.3,103.6 185.9,105.9 205.1,113.5 230.8,117.7 240.8,115 253.3,115.2 260.2,113.4
            265.2,112.9 268.5,112   " />
    <polygon class="land layer6"
             fill="#939598" points="159.8,93 155.9,91.4 153,90.8 150,92.2 147.2,92.9 144,91.7 141.1,91.3 137.9,92.5 135.6,90.8
            132.7,89.6 132.7,89.6 128.8,88.6 124.3,89.1 117.3,87.7 113.8,86.7 110.8,88.8 104.3,87.1 96.2,87.8 91.7,90.6 88.5,89.9
            80.7,95.1 11.2,88.1 0,82.7 0,99 40.4,106.6 134.7,108.7 146.4,110.6 166,97.3 164.5,95.5  " />
    <polygon class="land layer6"
             fill="#939598" points="522.3,30 515.3,30 512.2,32.9 507.1,37.4 505.1,35.8 502.5,35.8 492.2,38.9 488.1,42.3 477.6,44
            472.4,46.8 467.3,51.2 463.3,55.6 462.3,56.2 458,53.4 455.5,50.5 454,47.6 450.2,46.3 447.1,44.1 442.3,46.3 440.5,48.2
            437.5,50.5 434.4,53.8 429.6,56.6 427.8,58 425.6,58 423.8,58.8 421,58.3 418.9,57.5 416.8,57.6 414.9,56.6 412.2,55.4 409.5,56.6
            408.2,56.2 405.1,58.4 401.4,60.9 399.9,62.4 399.3,62.7 388.6,75.7 382,80.7 366.2,90.5 346.8,97.5 356.8,98.8 388.6,94 399.3,88
            399.3,92.8 449.2,89.6 466.7,70.9 524.7,72.6 539.5,58.3 539.5,34.2   " />
        </g>

        <!-- Land layer 7 -->
    <g>
    <polygon class="land layer7"
             fill="#808285" points="246.7,117.6 242.6,120.7 240.1,121.4 235.9,121.1 233.1,120.5 230.4,117.8 226.8,115.6 216,113.4
            211.8,114.1 209.3,112.8 201.8,110.7 192.2,106.8 180.3,98.6 175.5,96 165.5,95.2 162.6,96.2 156.4,100.1 151.9,101.3 147.9,101.3
            141.7,103.6 138.7,104.8 132.7,116.3 196.9,129.4 203.7,125.9 210.4,123.3 219.6,122.2 224,121.9 232.3,122 252.5,122 249.7,119.6
              " />
    <path class="land layer7"
          fill="#808285"
          d="M372.4,119.1l0.8-0.3C372.8,118,372.3,117.2,372.4,119.1z" />
    <path class="land layer7"
          fill="#808285"
          d="M373.6,119.9l-0.4-1.1l-0.1,0C373.4,119.4,373.6,119.9,373.6,119.9z" />
    <polygon class="land layer7"
             fill="#808285" points="449.9,72.3 446.1,70 439.2,73 435.4,75.6 432.2,80.1 425.6,82.5 421.3,85.6 419.7,86 418.3,85.6
            412.4,82 408.5,80.7 406.5,80.7 395.4,84 382.6,93.2 378.6,92.4 373.8,91.6 365.2,96.3 348.2,94.1 339.9,92.4 330.9,96.3
            321.9,102.3 315.3,110 315.2,110.1 310.2,116 305.3,120.4 307.1,121.6 309.8,122.3 320.6,123.2 324.5,125.5 325.9,127.8
            326.2,129.3 327.7,128.4 331.3,128.4 338,122.8 342,124.2 350.2,124.6 356.8,123.1 358.6,124.4 366.1,115.2 367.6,120.1
            372.1,115.2 373.3,118.8 402.4,107.2 402.6,110 425.6,97.7 426.5,98.8 458,75.7  " />
        </g>

        <!-- Land layer 8 -->
    <g>
    <polygon class="land layer8"
             fill="#6D6E71" points="198.3,131.4
            200.1,130.9 199.6,129.5 198.3,128.7 194.2,126.9 190.1,123.8 181.9,120.1
            175.7,114.4 165.9,113.1 155.1,113.7 144.9,117.1
            143.2,124.4 158.4,132.7 199.6,140.9 198.3,136.8 198.5,137.5 196.4,133.9
            196.2,132.3 196.9,131.7   " />
    <polygon class="land layer8"
             fill="#6D6E71"
             points="535.5,53.5 531.3,55.2 527.7,54.6
            520.2,56.2 511.2,59.3
            503.7,60 497.7,63.1 489.8,63.7
            483.4,61.1 478.8,59 475.3,58.4 462.4,70.7 457.5,71.6 444.3,82.6 441,81.6 436.5,83.2 434,82.3 423.2,90.5 416.1,91.7 410.8,96.6
            406.5,100.6 404.1,102.9 401.1,102.9 397.1,106.8 390.5,105.5 381.3,110.2 370.6,114.8 364.6,114.8 355.5,118.7 353.7,117.5
            347.2,118.9 340.5,123.1 336.5,121.8 329.8,126.9 326.1,126.9 322.4,128.9 325.1,133.1 328.4,135.5 329.8,139.3 328,148.5
            305.1,174.9 401.3,174.8 539.5,174.8 539.5,89.8 539.5,53.4   " />
        </g>

        <!-- Land layer 9 -->
    <path class="land layer9"
          fill="#58595B"
          d="M399.4,146.3l-9.4,0.3l-43.7-1.3l0.2-0.1l0.4-0.2l-1.4-4.5l-0.6,1.7l-0.5-1.7l-1.5,4.2l0.5,0.5l-5.6-0.2
          l0.5-0.5l0.4-0.2l-1.4-4.5l-0.4,1.2l-0.4-1.2l-1.5,4.2l0,0l-0.6,0.4l-1.1-3.3l-0.8,2.2l-0.7-2.2l-0.9,2.6l-0.5-1.7l-0.9,2.6l-0.3-1
          l-0.7,2l-0.6-1.8l-0.9,2.6l-0.5-1.7l-1,2.8l-0.3-0.9l-0.4,1.2l-0.5-1.4l-1,2.8l-0.3-0.9l-0.3,0.8l-0.4-1.1l-0.8,2.3l-0.5-1.4
          l-1.3,3.8l-0.3,0.2l-0.6-2l-0.5,1.5l-0.4-1.3l-0.5,1.4l-0.5-1.4l-0.3,0.9l-0.7-2.1l-0.8,2.3l-0.4-1.1l-0.4,1.1L314,151l-1.2,3.5
          l-0.9-2.7l-0.6,1.7l-0.2-0.8l-0.4,1.2l-0.5-1.6l-1.3,3.8l-0.9-2.9l-0.8,2.2l-0.5-1.5l-0.8,2.2l-0.4-1.4l-0.6,1.8l-0.4-1.2l-0.4,1
          l-0.3-1l-1.2,3.4l-1-3.2l-0.5,1.4l-0.6-1.8l-0.3,1l-0.2-0.6l-0.3,0.9l-0.6-1.9l-0.7,2.1l-0.6-1.9l-0.3,0.8l-0.3-1l-0.9,2.7l-0.3-1.1
          l-0.5,1.4l-1-3l-0.9,2.6l-0.4-1.2l-0.2,0.7l-0.7-2.1l-0.2,0.7l-0.3-1l-0.5,1.3l-0.6-1.8l-0.3,0.8l-0.1-0.3l-0.6,1.7l-0.9-2.7
          l-1.1,3.2l-0.3-1l-0.5,1.3l-0.6-1.7l-0.6,1.8l-0.8-2.5l-0.4,1.2l-0.1-0.4l-0.4,1.1l-0.5-1.5l-0.6,1.6l-0.8-2.5l-0.4,1.1l-0.8-2.5
          l-1.1,3.3l-0.5-1.7l-0.6,1.7l-0.5-1.4l-0.4,1.2l-0.7-2.3l-0.8,2.3l-0.7-2l-0.9,2.6l-0.4-1.2l-0.5,1.3l-0.6-1.9l-0.6,1.8l-0.3-0.9
          l-0.5,1.3L271,154l-0.9,2.5l-0.1-0.3l-0.2,0.6l-0.5-1.5l-0.9,2.5l-0.6-1.7l-0.4,1.1l-0.7-2.3l-0.4,1.1l-0.6-2l-1.2,3.6l-0.6-1.9
          l-0.5,1.5l-0.5-1.5l-0.9,2.7h-0.8l-0.9-2.7l-0.9,2.7h-0.1l-0.8-2.4l-0.7,2l-0.4-1.2l-0.3,0.9l-0.5-1.5l-0.9,2.6l-1.2-3.6l-0.7,1.9
          l-0.8-2.4l-1.4,3.9l-0.8-0.2l0,0l-1.4-4.5l-0.4,1.2l-0.5-1.5l-0.5,1.3l-0.6-1.9l-1.5,4.2l0.2,0.2l-1.3-0.2l-1.3-3.9l-0.4,1.1
          l-0.2-0.5l-0.9,2.5l-0.8-2.5l-0.3,0.9l-0.5-1.7l-0.6,1.8l-0.4-1.1l-0.5,1.5l-1.1-3.5l-1.5,4.2l0.3,0.3l-1.2-0.1l-1.3-4.1l-0.4,1.2
          l-0.8-2.4l-0.7,1.9l-0.6-1.9l-1.1,3.3l-0.7-0.4l0,0l0.4-0.2l-1.4-4.5l-1.3,3.6l-2.6-0.9l0.3-0.3l0.4-0.2l-1.4-4.5l-0.8,2.3l-0.6-2
          l-0.3,1l-0.7-2.2l-1.3,3.7l-2.7-1.7l0.2-0.2l0.4-0.2l-1.4-4.5l-0.3,0.9l-0.4-1.4l-1.3,3.8l-1.6-0.6l0.2-1.4l-0.5-0.2l0.1,0l-1.4-4.5
          l-1.2,3.4l-1-0.4l-1.3-4l-1,3l-4.9-2.1l-1.3-4l-0.8,2.2l-1.1-3.6l-0.9,2.5l-2.7-3.5l-3.3-3.9l-0.3-0.1l-1.3-4.1l-0.9,2.5l-0.6-1.8
          l-0.6,1.7l-5.4-2.6l-0.8-0.3l-0.4-1.1l-0.3,0.7L181,122l-0.4,1.1l-0.2-0.7l-0.5,1.5l-0.3-0.1l-0.6-1.9l-0.5,1.5l-4.2-1.6l-0.8-2.5
          l-0.7,2l-0.9-2.9l-0.4,1.2l-0.6-2l-0.8,2.4l-0.6-1.9l-0.8,2.2l-0.7-2.2l-0.5,1.4L167,118l-0.6,1.8l-0.3-1.1l-0.5,1.3l-0.4-1.1
          l-0.2,0.5l-0.5-1.5l-1,2.9l-0.4-1.3l-0.4,1l-0.4-1.4l-0.6,1.7l-0.6-1.9l-0.2,0.5l-0.2-0.7l-1,2.9l-0.4-1.4l-0.6,1.8l-0.8-2.5l-1,2.8
          l-0.3-1l-1.3,3.6l-0.3-1.1l-0.6,1.8l-0.4-1.4l-0.3,0.9l-0.8-2.4l-0.4,1l-0.8-2.5l-0.3,1l-0.5-0.7l-0.6-2.6l-1.2-2.8l-0.6-0.5
          l0.1-0.1l0.2-0.5l-0.9-2.8l-0.8,2.2l-1.9-1.7l-3.3-0.6l-0.7-1.1l0.1-0.5l-1.3-3.9l-1,2.9l-1.2-0.4l-0.2-0.3l0.6-0.6l0.2-0.7
          l-1.3-3.9l-0.8,2.3l-0.6-1.7l-0.9,2.5l-0.9-0.4l0.2-0.5l-1.3-3.9l-0.5,1.4v2.2L132,105l-1.5-4.4l-0.9,2.6l-0.7-2.2l-1.4,4.1h-0.7
          l-2.1-2.4l-1.5-4.4l-1.2,3.4l-0.8-0.3l-6,0.5h-8.9l-5.1-2.4h-5.1l-1,0.1l-1.1-3.3l-0.5,1.4l-0.5-1.4l-0.8,2.3l-0.8-2.5l-1.4,3.9
          l-0.6,0l-1.3-3.9l-1,2.9l-1.2-3.7l-1.3,3.8l-1.6-1.8l-7-3.7l-28.9-1.6L41,95.2l-3.9,1.5l-13,1.5l-6.8,3.1L0,114.2v60.7l539.5-0.1
          v-30.8L399.4,146.3z M309.7,158.3l-1.4,0.2l0.7-0.7l0.4-0.2l-0.3-0.8l1.1,1.1l0.3-0.3l0.1,0.1L309.7,158.3z M312.9,156.5l0.1-0.1
          l0.4-0.2l-0.1-0.4l0.3,0.3L312.9,156.5z" />

        <!-- Land layer 10 -->
    <polygon class="land layer10"
             fill="#414042"
             points="539.5,111.5 534,73.8 529.8,85.9 526.8,76.6 522.8,88.1 520.4,80.8 516.7,91.3 514,83 510.3,93.8
          507.7,85.8 502,102.2 497.6,88.7 493.3,100.9 489.9,90.5 488.4,94.6 486.5,88.7 482.9,99.1 481.1,93.8 480,97 477.9,90.5 473.9,102
          472.8,98.6 470.9,104 468.4,96.5 463.8,109.6 460,97.9 456.9,106.9 454.9,100.8 453,106.1 451,99.7 447.1,110.9 445.4,105.8
          444.4,108.8 442.3,102.5 440.2,108.6 439,105 436.7,111.8 434.5,105 431.4,113.9 430.1,110 427.6,117.2 426.4,113.4 425.5,115.9
          423.8,110.7 422.6,114 420.8,108.5 417,119.5 415.9,116.2 414.6,119.8 413.6,116.8 412.1,121.3 409.5,113.4 408.2,117 406.9,112.8
          403.9,121.2 402.8,117.6 399.7,126.6 398.4,122.7 398,124 394.3,112.8 389.2,127.5 387.7,123 386.4,126.9 385.5,124.1 382.7,132.2
          381.6,129 380.9,131 380.2,128.7 379.2,131.3 378.2,128 376.7,132.2 374.8,126.4 372.7,132.5 370.9,127.1 368.5,134.1 367.5,131
          365.9,135.5 364.1,130 363,133.3 361.2,128 358.7,135.4 357.6,132 355.7,137.4 353.9,131.7 353.1,133.9 352.5,132 350.8,137.1
          350.1,135.1 348,141.1 347.2,138.5 346.6,140.3 346.2,139.1 344.5,143.8 343.2,139.7 342.9,140.6 342.2,138.5 341,142.1
          339.4,137.5 337.3,143.6 335.5,138.1 332.7,146.3 331.9,143.8 329.2,151.3 327.3,146.9 323.8,155 321.9,150.8 321.2,152.5
          320.1,150.1 318.3,154.3 317.5,152.5 316,155.9 314.6,152.5 314,153.8 313,151.6 311,156.3 309.4,152.5 307.8,156.2 307.2,155
          304.8,160.6 302.6,155.6 300.5,160.5 299.3,157.8 298.2,160.3 297.6,158.9 295.7,163.2 294.8,161.1 292.7,166.1 289.5,158.9
          288.8,160.4 287.8,158 285.1,164.1 283.4,160.2 281.5,164.8 279.2,159.6 278.4,161.4 276.7,157.6 274.4,163 273.2,160.2
          271.1,165.2 267.3,156.7 265.1,162 261.4,153.7 260,157 259.4,155.6 257.4,160.2 255.6,156.2 254.1,159.8 250.7,152.1 248,158.5
          245.2,152.1 243.3,156.4 242.2,153.7 240.3,158 238.8,153.3 238.2,155 236,148.5 233.1,157.1 230.7,149.7 229.4,153.6 226.8,145.7
          226.2,147.5 225.4,144.9 222.8,152.3 219.3,141.6 217.2,147.6 213.9,137.5 211.5,144.5 209.8,139.4 207.9,144.7 207.5,143.3
          206.5,146 203.7,137.5 200.8,145.9 199.9,143.3 197.3,150.9 194.6,142.7 190.2,155.3 186.3,143.3 184.1,149.5 181.4,141.3
          177.2,153.5 176.1,150.1 175.1,152.8 170.7,139.4 166.8,150.5 164.1,142 162.9,145.4 160,136.5 159,139.5 156.8,132.7 154.6,139
          151.4,129.4 149.8,134.2 148.2,129.4 146.2,135.2 145.2,132.2 144.5,134.3 142.3,127.6 141.3,130.7 139.9,126.4 139.2,128.3
          137.5,122.8 135.9,127.5 134,121.9 134,121.9 133.9,121.6 132.7,125.1 132.7,125.7 132.4,126.6 129.6,117.9 125.3,130.2
          101.3,125.3 96.9,111.9 95.7,115.3 93.7,109.2 91.9,114.6 90.1,109.2 85.7,122.1 21.9,109 16.9,93.9 15.2,98.9 13.4,93.4 12.5,96
          11,91.2 9.6,95.3 8.9,93.4 7.3,98.2 6.3,95.1 5.7,96.5 4.2,91.8 2.8,96 0.7,89.7 0,91.6 0,114.2 0,118.7 0,174.8 539.6,174.8 " />

        <!-- Land layer 11 -->
    <g>
    <path class="land layer11"
          fill="#232323"
          d="M538.5,14.6c-1.4-0.8-2.8-1.4-3.1-1.3c-0.9,0.3-0.3,1.7,1,2.3l1.3,0.6l-1.2,0.1c-0.6,0.1-1.3,0.3-1.4,0.6
            c-0.2,0.5,0.9,1.1,1.5,0.7c0.2-0.1,0.4,0,0.4,0.2c0,0.2,0.3,0.4,0.8,0.4c0.6,0,0.6,0.1,0.2,0.2c-0.5,0.2-0.4,0.4,0.4,0.9l1,0.6
            l-1.8,0.3c-1.9,0.3-2.3,0.9-1.2,1.6c0.4,0.3,0.9,0.3,1.4,0.1c0.5-0.2,1.3-0.2,1.8-0.1v-6.8C539.2,15,538.9,14.8,538.5,14.6z" />
    <path class="land layer11"
          fill="#232323"
          d="M537,30.8c0,0.7,1.4,0.8,2.2,0.2c0.1-0.1,0.2-0.2,0.3-0.3V29c-0.4,0.3-0.9,0.7-1.6,0.9
            C537.4,30.2,537,30.6,537,30.8z" />
    <path class="land layer11"
          fill="#232323"
          d="M535.8,31.6c-0.8-0.1-0.7,0.6,0.2,1.5c0.7,0.7,0.7,0.7,0,0.3c-0.4-0.3-0.9-0.4-1.1-0.3
            c-0.2,0.1-0.9,0-1.6-0.3c-1.6-0.7-2.1-0.7-1.8,0.1c0.2,0.5,0,0.6-1.1,0.6c-0.7,0-1.4-0.1-1.6-0.2c-0.5-0.4-2,0.2-2,0.9
            c0,0.6,0.2,0.7,0.9,0.5c0.9-0.2,0.9-0.2,0.2,0.5c-0.8,0.7-0.7,0.8,1,0.7c0.8-0.1,0.9,0.1,0.7,0.6c-0.2,0.5-0.1,0.6,0.8,0.5
            c0.9-0.1,1.1-0.1,0.9,0.5c-0.2,0.8,0,0.8,1.1,0.3c1.1-0.5,2.4,1,1.6,1.7c-0.5,0.4-0.6,0.4-0.8,0c-0.1-0.3-0.9-0.5-1.8-0.6
            c-0.8,0-1.4,0.1-1.3,0.3s-0.1,0.2-0.6,0.1c-1.1-0.2-1.1,0.3-0.1,0.9c0.6,0.3,0.8,0.7,0.6,1.4c-0.3,1.2-0.3,1.2-2,0
            c-0.7-0.5-1.9-0.9-1.9-0.9s-0.8,0.2-0.2,1.1c0.5,0.7,0.2,0.7-3.2,0.2c-1.1-0.2-1.7-0.1-1.7,0.1c0,0.5,2.3,1.5,3.3,1.5
            c0.6,0,0.6,0.1,0.2,0.5c-0.4,0.4-0.4,0.6,0.1,0.8c0.4,0.1,0.8,0.2,1,0.1c0.9-0.1,1.5,0.1,1.4,0.5c-0.1,0.3,0.4,0.5,1.1,0.4
            c0.9,0,1.2,0.2,1.2,0.7c0,0.7,0,0.7,0.9-0.1c0.7-0.7,0.9-0.7,0.9-0.3c0,0.3,0.2,0.5,0.4,0.4c0.2-0.1,0.6,0.2,0.9,0.7
            c0.2,0.5,0.7,1,1.1,1.2c0.4,0.1,0.7,0.4,0.7,0.7s0.3,0.5,0.7,0.5s1,0.3,1.3,0.6c0.5,0.6,0.6,0.6,1.6-0.1l1-0.7l-0.8,0.8
            c-0.5,0.5-1.9,1-3.8,1.4c-3.9,0.8-4.8,0.8-6.4-0.1c-1.5-0.8-2.2-0.7-1.8,0.4c0.2,0.6,0.1,0.7-1,0.7c-0.7,0-1.5-0.2-1.7-0.4
            c-0.3-0.2-0.7-0.2-1.3,0.1c-0.8,0.5-0.8,0.5,0.6,1.2c1,0.5,1.4,0.9,1.2,1.3c-0.2,0.4,0,0.6,0.3,0.6c1.3-0.1,1.8,0,1.5,0.6
            c-0.4,0.9,1.2,1.4,2.4,0.7c0.8-0.5,0.9-0.5,0.5-0.1c-0.7,0.8,0,1.6,1.1,1.3c1.7-0.4,2.1,0.3,0.5,0.8c-2.1,0.6-4.2,0.6-5,0
            c-0.9-0.7-2.2-0.7-1.9,0c0.2,0.4-0.1,0.5-1.7,0.3c-2.4-0.3-2.7,0.3-0.5,1c1.1,0.3,1.4,0.6,1.3,1.1c-0.2,0.8,1.2,1.2,2.2,0.7
            c0.6-0.3,0.7-0.2,0.7,0.6c0,0.7,0.2,0.9,1,0.7c0.8-0.2,0.9-0.1,0.6,0.4c-0.2,0.5-0.1,0.6,0.6,0.5c0.5-0.1,0.9,0,0.9,0.1
            c0,0.6,0.9,0.3,2.1-0.7c1.4-1.3,2.3-1.5,3.3-1.1c1.2,0.5,0.9,0.9-0.6,0.8c-1.5-0.2-1.7,0.4-0.6,1.7c0.6,0.8,0.6,0.8-0.2,0.8
            c-0.5,0-1.2,0.2-1.5,0.6c-0.4,0.3-1,0.6-1.3,0.6c-0.4,0-0.8,0.2-0.9,0.3c-0.1,0.2-1,0.3-2,0.3c-0.9,0-2,0.1-2.3,0.3s-1.2,0.3-2,0.2
            c-1.2-0.1-1.4,0.1-1.6,0.8c-0.1,0.6-0.4,0.8-1.2,0.9c-0.6,0-1.3,0.1-1.5,0.1c-0.2,0.1-0.8,0.1-1.2,0c-0.4,0-0.7,0.1-0.8,0.2
            c0-0.1,0-0.2,0-0.3c0-0.3-0.2-0.6-0.4-0.8c-0.1-0.1-0.5,0.1-0.7,0.2c-0.1,0-0.2,0.1-0.3,0.2c0,0-0.1-0.1-0.1-0.1
            c0.2-0.2,0.3-0.4,0.5-0.5c0.3-0.1,0.7-0.1,1-0.2c0.3-0.1,0.8-0.4,0.8-0.5c-0.2-0.5-0.6-0.3-1-0.3c-0.1,0-0.3,0.1-0.4,0.2
            c-0.1,0-0.3,0-0.5,0.1c0.3-0.4,0.6-0.6,0.2-1.1c-0.7-0.8-0.7,0.6-1.2,0.4c-0.2-0.8,0-1.4,0.8-1.7c0.2-0.1,0.3-0.2,0.5-0.3
            c0.4-0.3,0.7-0.7,1-1.1c0.1-0.1,0.1-0.4,0.1-0.6c-0.2,0-0.5,0-0.7,0c-0.5,0.3-1,0.6-1.5,0.9c0.1-2.1,0.3-4.1-0.6-5.9
            c-0.6,1.9-0.6,3.8-0.7,5.7c-0.3-0.5-0.6-0.9-0.9-1.4c-0.1-0.1-0.3-0.2-0.5-0.2c-0.1,0.2-0.2,0.4-0.2,0.6c0.1,0.5,0.3,0.9,0.5,1.4
            c0.1,0.2,0.2,0.3,0.3,0.5l-0.2,0c-0.9-0.1-1.6-0.4-1.6-0.6c0-0.2-0.5-0.3-1.2-0.1c-1.1,0.2-1.2,0.2-0.7-0.3
            c0.9-0.9-0.4-1.1-1.7-0.4c-0.6,0.4-1.9,0.6-3.2,0.6c-1.7,0-2-0.1-1.2-0.3c0.9-0.3,0.9-0.6,0.6-2c0-0.1-0.7,0.2-1.5,0.6
            c-0.8,0.4-2.2,0.8-3,0.8c-2.7,0-7.5-1.5-10.5-3.4c-1.2-0.7-0.9-0.9,0.4-0.3c0.7,0.3,0.9,0.3,0.9-0.3c0-0.6,0-0.6,0.5,0
            c0.2,0.4,0.6,0.6,0.9,0.4s0.9,0.1,1.5,0.4c1.1,0.6,1.1,0.6,1.1-0.5c0-0.6,0.2-0.9,0.3-0.6c0.4,0.5,2.1,1.3,2.7,1.3
            c0.3,0,0.5-0.4,0.5-0.8c0-0.8,0.1-0.8,0.3,0.1c0.2,0.5,0.4,0.8,0.5,0.8c0.1-0.1,0.6,0,1.1,0.3c0.7,0.3,1,0.3,1.5-0.3
            c0.3-0.4,0.8-0.6,1-0.5c0.2,0.1,0.2-0.2,0.1-0.8c-0.3-0.9-0.2-0.9,0.9-0.6c1.4,0.5,1.9,0.2,1.1-0.6c-0.5-0.5-0.4-0.6,0.2-0.6
            c0.7,0,0.7,0,0-0.7c-0.4-0.4-0.6-0.8-0.3-0.9c0.2-0.1,0.8,0.1,1.2,0.5c0.7,0.6,1.1,0.7,2.8,0.4c0.1,0,0-0.2-0.3-0.5
            c-0.6-0.6-0.2-1,0.8-1c0.4,0,1.2-0.3,1.8-0.7l1-0.7l-1.3-0.1c-0.7,0-1.8,0-2.4,0c-0.9,0.1-1,0-0.5-0.5c1-1,0.3-1-1.4,0
            c-1.8,1.1-3,1.2-2.1,0.3c0.5-0.5,0.4-0.5-0.2-0.3c-0.8,0.3-1-0.2-0.2-0.9c1.1-0.9-0.1-0.8-1.5,0.2c-2.7,1.9-3.1,2-6.2,1.2
            c-3.2-0.8-5.4-1.8-6.1-2.9c-0.4-0.6-0.3-0.7,0.6-0.7c0.6,0,1.2,0.3,1.3,0.6c0.1,0.3,0.6,0.6,1.1,0.6c0.7,0,0.9-0.1,0.7-0.7
            c-0.2-0.7-0.1-0.7,0.8,0.2c0.6,0.5,1.5,1,2,1c0.9,0,1-0.1,0.7-1.1c-0.3-1.4,0.7-1.8,1.8-0.7c0.7,0.8,3.2,1.3,3.2,0.7
            c0-0.1-0.6-0.7-1.4-1.3c-1.1-0.8-1.2-1-0.6-1c0.4,0,0.9,0.2,1,0.5c0.1,0.3,0.4,0.5,0.6,0.4c0.2-0.1,0.5,0,0.6,0.2
            c0.2,0.2,0.8,0.4,1.4,0.4c1.1,0,1.1,0,0.3-0.5c-0.8-0.5-0.8-0.5,0.4-0.9c0.7-0.2,1.5-0.4,1.8-0.4c0.3,0,0-0.2-0.6-0.5
            c-1.1-0.5-1.1-0.5,0.6-0.4c1.1,0.1,1.9-0.1,2.3-0.4c1-0.8,0.3-1.3-1.9-1.3c-1.2,0-1.9-0.2-1.7-0.4c0.6-0.8-1.1-0.8-2.9,0
            c-2.2,0.9-2.7,1-2.3,0.2c0.2-0.3,0-0.6-0.4-0.6s-0.6-0.2-0.4-0.6c0.3-0.6,0.1-0.7-1.3-0.2c-0.9,0.3-1,0.3-0.9-0.4
            c0.2-0.7-0.5-1-1-0.3c-0.2,0.2-1.1,0.7-2.1,1.2c-1.6,0.7-2,0.7-3.6,0.3c-1.5-0.4-1.6-0.5-1-0.8c0.4-0.2,0.8-0.6,0.8-0.9
            c0-0.4-0.5-0.5-2-0.5c-1.5,0.1-2.2-0.1-2.8-0.6c-1-0.8-1.9-3.7-1.3-4.1c0.4-0.2,0.6,0.6,0.4,1.6c0,0.3,0.3,1,0.9,1.6
            c0.8,0.9,1.1,1,1.6,0.7c0.3-0.2,0.6-0.9,0.7-1.4c0-0.8,0.1-0.8,0.3-0.2c0.3,1.1,1.5,2,2.6,2c0.9,0,1-0.1,0.6-0.7
            c-0.6-0.9-0.6-1.2,0-0.9c0.2,0.1,0.4,0.1,0.4-0.2c0-0.2,0.2-0.4,0.4-0.4s0.4,0.2,0.4,0.5c0,0.7,2.6,2.5,3.1,2.2
            c0.2-0.1,0.4-0.5,0.4-0.9c0-0.4,0.2-0.7,0.5-0.7s0.3-0.2,0.2-0.5c-0.2-0.3,0.1-0.1,0.5,0.4c0.5,0.5,1,0.7,1.2,0.6
            c0.2-0.1,0.8-0.3,1.3-0.4c1.2-0.1,3-0.9,3-1.2c0-0.1-0.6-0.5-1.3-0.7c-0.7-0.2-1.3-0.6-1.2-0.9c0.1-0.2-0.5-0.4-1.3-0.5
            c-1.5,0-3.8-0.9-2.9-1.2c0.3-0.1,0.6-0.4,0.6-0.7c0-0.6-2.2-0.7-2.9-0.2c-0.7,0.5-2.4,0.9-2.4,0.5c0-0.2,0.5-0.5,1.1-0.6
            c0.9-0.2,1-0.3,0.6-0.8c-0.4-0.4-0.4-0.5,0.3-0.5c1,0,2.6-1,2.2-1.3c-0.2-0.1-1.2-0.3-2.3-0.4c-2.2-0.2-2.2-0.2-1.5-1.2
            c0.4-0.7,0.5-0.7,1.5-0.1c1,0.5,1.1,0.5,1.3-0.2c0.2-0.4,0.5-0.7,0.7-0.6c0.2,0.1,0.4,0,0.4-0.2c0-0.2,0.4-0.4,0.9-0.4
            s0.9-0.2,0.9-0.5c0-0.6-0.9-1-2.2-1c-1,0-1.1-0.7-0.2-1c0.4-0.1,0.6-0.3,0.5-0.5c-0.1-0.2,0.3-0.5,0.9-0.8c1.5-0.7,1.1-1.3-0.8-1.3
            h-1.6l1.1-1.2c0.9-1,1-1.3,0.6-1.7c-0.4-0.3-0.8-0.2-2,0.9c-1.3,1.2-1.5,1.3-2,0.6c-0.3-0.4-0.7-0.7-0.9-0.7
            c-0.5,0-1.9,2.1-2.2,3.3c-0.2,0.9-4.3,3.8-4.9,3.5C482,30,482,29,482,27.9c0.1-1.1-0.1-2-0.3-2c-0.2,0-0.3-0.6-0.2-1.4
            c0.1-1.1,0.3-1.4,1.4-1.6c1.1-0.2,1.2-0.2,1,0.4c-0.4,1.1,0.7,1.3,1.5,0.4c0.5-0.5,0.9-0.7,1-0.5c0.3,0.4,2.1,0.2,2.1-0.3
            c0-0.3-2.2-2.1-2.6-2c-0.2,0-0.6,0-1.1-0.1c-1.2-0.3-0.4-0.8,0.9-0.6c2.2,0.4,4.2,0.3,4.4-0.2c0.1-0.3-0.1-0.5-0.5-0.5
            c-0.4,0-0.9-0.3-1.2-0.6c-0.3-0.3-0.7-0.5-0.9-0.3s-0.4,0.1-0.4-0.1c0-0.2,0.6-0.6,1.3-1c1.3-0.7,1.7-1.3,0.9-1.3
            c-0.8,0-3.7,1.1-4.1,1.6c-0.2,0.3-0.3,0.1-0.1-0.4c0.1-0.4,0.1-0.9-0.2-1c-0.5-0.2-2.3,2.1-2.3,3c0,0.3-0.1,0.5-0.3,0.4
            c-0.2-0.1-0.6,0-0.9,0.4c-0.5,0.6-0.6,0.4-0.4-1.2c0.2-1.5,0.6-2.2,2.2-3.7c1.1-1.1,2-2.2,2-2.5c0-0.9-2.2-0.3-2.7,0.7
            c-0.7,1.6-1.5,1-1.4-0.9c0.1-1.5,0-2-0.8-2.7l-0.9-0.8l-0.1,0.9c0,0.5-0.1,2-0.1,3.3l-0.1,2.4l-1.6-1.4c-1.9-1.6-2.1-1.7-2.1-0.6
            c0,0.5,0.8,1.5,1.7,2.4c1.5,1.4,1.7,1.8,1.8,3.6c0.1,1.4-0.1,2-0.4,1.8c-0.3-0.1-0.5-0.5-0.5-0.8s-0.2-0.5-0.4-0.5
            s-0.4-1.4-0.4-1.4s-1.1-2.8-1.8-1.9c-0.2,0.3-0.3,0.7-0.2,1c0.2,0.5-1,0.2-1.9-0.5c-0.3-0.3-0.8-0.5-1.2-0.5c-1.2,0-1,1,0.5,2.4
            c1.7,1.7,1.8,2,0.7,2.2c-0.6,0.1-0.8,0.4-0.6,0.9c0.2,0.8,1.4,0.9,2.2,0.3c0.6-0.5,0.6-0.5,0.7,0.9c0.1,1.2,0,1.2-1.5,0.5
            c-1.5-0.7-1.8-0.7-1.8,0.1c0,0.4,0.6,1.1,1.4,1.6c1.1,0.7,1.2,0.9,0.5,0.7c-0.6-0.1-1,0-1.2,0.4c-0.4,0.8-0.7,0.8-3.6-0.8
            c-1.4-0.8-2.8-1.4-3.1-1.3c-0.9,0.3-0.3,1.7,1,2.3l1.3,0.6l-1.2,0.1c-0.6,0.1-1.3,0.3-1.4,0.6c-0.2,0.5,0.9,1.1,1.5,0.7
            c0.2-0.1,0.4,0,0.4,0.2c0,0.2,0.3,0.4,0.8,0.4c0.6,0,0.6,0.1,0.2,0.2c-0.5,0.2-0.4,0.4,0.4,0.9l1,0.6l-1.8,0.3
            c-1.9,0.3-2.3,0.9-1.2,1.6c0.4,0.3,0.9,0.3,1.4,0.1c0.8-0.4,2.4-0.2,2.4,0.3c0,0.2,0.4,0.3,0.9,0.3c0.5,0,0.9-0.2,0.9-0.4
            c0-0.2,0.4-0.4,1-0.4l1,0l-1.1,0.8c-0.8,0.6-1,0.8-0.5,1.1c0.7,0.3,1.8,0.1,2.4-0.5c0.2-0.2,0.3,0.1,0.1,0.6c-0.2,0.8-0.1,1,0.6,1
            c0.5,0,0.9-0.2,0.9-0.5c0-0.3,0.1-0.3,0.3,0.1c0.2,0.4,0.4,0.3,0.8-0.4l0.6-0.9l0.6,1c0.3,0.6,0.4,1.1,0.2,1.3
            c-0.2,0.1-1.8,0.3-3.5,0.4c-2.9,0.1-3.4,0-5.3-1c-1.9-1-3.3-1.2-3.3-0.4c0,0.2,0.5,0.6,1.2,0.9l1.2,0.6l-1.5-0.2
            c-1.5-0.2-4.1-1.3-5.2-2.3c-0.3-0.3-1-0.5-1.4-0.5c-0.9,0-1.1,0.7-0.4,1.3c0.3,0.2-0.4,0.4-1.8,0.5c-1.2,0.1-2.4,0.2-2.6,0.3
            c-1.4,0.8,2.1,2.1,4.7,1.8l1.8-0.2l-1.2,0.6c-0.8,0.4-1.2,0.8-1.1,1.2c0.2,0.9,2.1,0.6,3.3-0.5c0.6-0.5,1.3-0.9,1.8-0.8
            c0.6,0.1,0.5,0.2-0.4,0.6c-1.5,0.5-2,1.1-1,1.4c0.4,0.1,0.6,0.4,0.5,0.7c-0.1,0.3,0.1,0.6,0.4,0.7c0.3,0.1,0.6,0.1,0.6-0.1
            c0-0.3,1.4-0.8,2.5-0.9c0.3,0,0.9-0.4,1.4-0.7c0.5-0.4,0.9-0.6,0.9-0.4c0,0.4-1,1.1-2.1,1.6c-0.5,0.2-1,0.6-1,0.8
            c0,0.7,1.4,0.8,2.2,0.2c0.8-0.6,0.8-0.6,0.6,0.1c-0.3,1.1,0.6,1,1.5-0.2c0.6-0.7,0.8-0.8,1.1-0.5c0.3,0.4,0.4,0.4,0.7,0
            c0.2-0.3,0.8-0.5,1.2-0.4c1.8,0.2,4.1-1.1,4.2-2.4c0-0.7,0.1-0.7,0.4,0.2c0.3,0.8,0,1.1-1.3,2.1c-0.9,0.7-2.8,1.7-4.3,2.4l-2.7,1.2
            l-2.1-0.9c-1.2-0.5-2.4-0.9-2.7-1c-0.8-0.1-0.7,0.6,0.2,1.5c0.7,0.7,0.7,0.7,0,0.3c-0.4-0.3-0.9-0.4-1.1-0.3
            c-0.2,0.1-0.9,0-1.6-0.3c-1.6-0.7-2.1-0.7-1.8,0.1c0.2,0.5,0,0.6-1.1,0.6c-0.7,0-1.4-0.1-1.6-0.2c-0.5-0.4-2,0.2-2,0.9
            c0,0.6,0.2,0.7,0.9,0.5c0.9-0.2,0.9-0.2,0.2,0.5c-0.8,0.7-0.7,0.8,1,0.7c0.8-0.1,0.9,0.1,0.7,0.6c-0.2,0.5-0.1,0.6,0.8,0.5
            c0.9-0.1,1.1-0.1,0.9,0.5c-0.2,0.8,0,0.8,1.1,0.3c1.1-0.5,2.4,1,1.6,1.7c-0.5,0.4-0.6,0.4-0.8,0c-0.1-0.3-0.9-0.5-1.8-0.6
            c-0.8,0-1.4,0.1-1.3,0.3c0.1,0.2-0.1,0.2-0.6,0.1c-1.1-0.2-1.1,0.3-0.1,0.9c0.6,0.3,0.8,0.7,0.6,1.4c-0.3,1.2-0.3,1.2-2,0
            c-0.7-0.5-1.9-0.9-1.9-0.9s-0.8,0.2-0.2,1.1c0.5,0.7,0.2,0.7-3.2,0.2c-1.1-0.2-1.7-0.1-1.7,0.1c0,0.5,2.3,1.5,3.3,1.5
            c0.6,0,0.6,0.1,0.2,0.5c-0.4,0.4-0.4,0.6,0.1,0.8c0.4,0.1,0.8,0.2,1,0.1c0.9-0.1,1.5,0.1,1.4,0.5c-0.1,0.3,0.4,0.5,1.1,0.4
            c0.9,0,1.2,0.2,1.2,0.7c0,0.7,0,0.7,0.9-0.1c0.7-0.7,0.9-0.7,0.9-0.3c0,0.3,0.2,0.5,0.4,0.4c0.2-0.1,0.6,0.2,0.9,0.7
            c0.2,0.5,0.7,1,1.1,1.2c0.4,0.1,0.7,0.4,0.7,0.7c0,0.3,0.3,0.5,0.7,0.5s1,0.3,1.3,0.6c0.5,0.6,0.6,0.6,1.6-0.1l1-0.7l-0.8,0.8
            c-0.5,0.5-1.9,1-3.8,1.4c-3.9,0.8-4.8,0.8-6.4-0.1c-1.5-0.8-2.2-0.7-1.8,0.4c0.2,0.6,0.1,0.7-1,0.7c-0.7,0-1.5-0.2-1.7-0.4
            c-0.3-0.2-0.7-0.2-1.3,0.1c-0.8,0.5-0.8,0.5,0.6,1.2c1,0.5,1.4,0.9,1.2,1.3c-0.2,0.4,0,0.6,0.3,0.6c1.3-0.1,1.8,0,1.5,0.6
            c-0.4,0.9,1.2,1.4,2.4,0.7c0.8-0.5,0.9-0.5,0.5-0.1c-0.7,0.8,0,1.6,1.1,1.3c1.7-0.4,2.1,0.3,0.5,0.8c-2.1,0.6-4.2,0.6-5,0
            c-0.9-0.7-2.2-0.7-1.9,0c0.2,0.4-0.1,0.5-1.7,0.3c-2.4-0.3-2.7,0.3-0.5,1c1.1,0.3,1.4,0.6,1.3,1.1c-0.2,0.8,1.2,1.2,2.2,0.7
            c0.6-0.3,0.7-0.2,0.7,0.6c0,0.7,0.2,0.9,1,0.7c0.8-0.2,0.9-0.1,0.6,0.4c-0.2,0.5-0.1,0.6,0.6,0.5c0.5-0.1,0.9,0,0.9,0.1
            c0,0.6,0.9,0.3,2.1-0.7c1.4-1.3,2.3-1.5,3.3-1.1c1.2,0.5,0.9,0.9-0.6,0.8c-1.5-0.2-1.7,0.4-0.6,1.7c0.6,0.8,0.6,0.8-0.2,0.8
            c-0.5,0-1.2,0.2-1.5,0.6c-0.4,0.3-1,0.6-1.3,0.6s-0.8,0.2-0.9,0.3c-0.1,0.2-1,0.3-2,0.3c-0.9,0-2,0.1-2.3,0.3
            c-0.3,0.2-1.2,0.3-2,0.2c-1.2-0.1-1.4,0.1-1.6,0.8c-0.1,0.6-0.4,0.8-1.2,0.9c-0.6,0-1.3,0.1-1.5,0.1c-0.2,0.1-0.8,0.1-1.2,0
            c-0.4,0-0.8,0.1-0.8,0.3c0,0.5,2.4,1.6,3.5,1.6c1,0,1,0,0.2,0.7c-0.8,0.7-0.8,0.7,0.4,0.7c0.9,0,1.1,0.1,0.9,0.6
            c-0.2,0.5,0,0.5,1,0.3c0.7-0.1,1.4-0.2,1.5-0.2c1.4,0,1.7,0.1,1.5,0.6c-0.5,1,0.7,1,1.3,0c0.6-1,0.7-1,0.7-0.2
            c0,0.5,0.2,0.8,0.4,0.9c2.7,0.3,3.1,0.2,3.7-0.9l0.6-1.1l0.4,0.9l0.4,0.9l0.9-0.9c0.8-0.9,0.8-0.9,0.9-0.1c0,1.1,0.8,1.1,1.1-0.1
            c0.2-0.5,0.5-0.9,0.7-0.9s0.3,0.2,0.1,0.4c-0.2,0.3,0.1,0.3,1.1,0.2c1.1-0.2,1.4-0.2,1.3,0.2c-0.3,0.7-3,1.8-4.4,1.8
            c-0.6,0-1.3,0.2-1.4,0.5c-0.1,0.3-1,0.4-2.2,0.4c-1.1,0-2,0.1-2,0.3c0,0.7,1.5,1.5,2.7,1.4c0.7-0.1,1.3,0,1.4,0.2
            c0.1,0.6-2.5,1-8.7,1.2c-7.1,0.2-9.9,0.5-9.9,0.9c0,0.2-0.5,0.2-1.1,0.1c-0.6-0.1-1.1,0-1.1,0.2c0,0.5,1.4,1.2,2.6,1.2
            c0.5,0,0.9,0.2,0.9,0.4c0,0.2-0.2,0.4-0.5,0.4s-0.9,0.3-1.4,0.8l-1,0.8l1.4-0.2c0.9-0.1,1.4,0,1.4,0.3c0,0.3,0.4,0.4,0.9,0.3
            c0.5-0.1,0.9,0,0.9,0.2c0,0.6,1.1,0.5,1.8-0.1c0.3-0.3,0.7-0.6,1-0.6c0.2,0,0.1,0.3-0.3,0.7c-0.4,0.4-0.7,0.8-0.7,0.9
            c0,0.4,1.7,0.3,2-0.1c0.4-0.6,1-0.4,1.3,0.4c0.4,0.9,0.9,0.9,2.5,0l1.3-0.8l-0.3,1.1c-0.3,1.4,0.5,1.5,2.3,0.3
            c1.2-0.8,1.2-0.8,0.7,0c-0.5,0.9-0.3,1.3,0.6,1c0.3-0.1,0.9,0,1.3,0.3c0.5,0.3,0.7,0.3,0.7,0c0-0.2,0.3-0.4,0.7-0.4
            c0.4,0,0.7,0.2,0.7,0.5c0,0.4,0.4,0.5,1.2,0.4c4.6-0.4-1.3,1.8-6.7,2.5c-3.5,0.5-3.8,0.4-5-0.2c-0.7-0.4-1.5-0.7-1.8-0.7
            c-0.9,0-0.6,0.7,0.4,1.1c0.7,0.3,0.5,0.3-1,0.1c-1.1-0.1-2.5-0.2-3.1-0.2s-2.1-0.2-3.3-0.5c-0.2,0-0.4-0.1-0.5-0.1
            c-0.1-0.1-0.1-0.3-0.2-0.4c0.4-0.3,0.8-0.6,1.4-1c-2-0.8-3.4,0.6-5.1,0.6c0.8-0.6,1.5-1.2,2.3-1.8c-0.1-0.1-0.1-0.2-0.2-0.3
            c-0.2,0-0.5-0.1-0.7,0c-0.8,0.4-1.6,0.8-2.3,1.3c-0.8,0.5-1.6,1.1-2.4,1.7c0,0,0-0.1,0-0.1c0.3-0.4,0.5-0.8,0.8-1.2
            c-0.1-0.1-0.2-0.2-0.2-0.3c-1,0.4-2,0.7-3.1,1.1c-0.2-0.9,0.3-2.1-1-2.7c-0.1,0.6-0.2,1.1-0.3,1.5c-0.7,0.1-1.3,0.1-2,0.2
            c0.1-0.6,0.2-1.2,0.4-1.7c0.2-0.7,0.2-0.8-0.6-0.8c-0.2,0-0.4,0-0.6,0c0.4-1.3,1.3-0.3,2-0.6c0-0.2,0-0.4,0.1-0.8
            c0.2,0.1,0.3,0.2,0.4,0.2c0.2,0.1,0.5,0.1,0.8,0.2c-0.1-0.3-0.1-0.6-0.2-0.8c-0.2-0.3-0.5-0.5-0.8-0.8c1,0.2,1.9,0.4,2.8,0.5
            c0.3,0,0.6-0.2,0.9-0.3c-0.2-0.2-0.4-0.4-0.6-0.6c0.8-0.4,1.6-0.8,2.4-1.2c0.1,0,0.2-0.1,0.3,0c0.7,0.1,1-0.1,0.8-0.9
            c0.2,0.1,0.3,0.1,0.4,0.1c0.3,0,0.6,0.1,0.9,0.1c-0.2-0.3-0.3-0.7-0.5-0.9c-0.2-0.2-0.6-0.4-1.1-0.6c0.5-0.3,0.9-0.5,1.1-0.8
            c0.2-0.2,0.3-0.6,0.4-0.9c-0.3,0-0.6-0.2-0.9-0.1c-0.5,0.2-1,0.5-1.5,0.8c0-0.6,0.1-1.2,0.1-1.8c0-0.2-0.4-0.4-0.5-0.6
            c-0.1,0.2-0.3,0.4-0.4,0.6c-0.1,0.2-0.1,0.4-0.2,0.8c-0.3-0.5-0.5-0.8-0.6-1.2c-0.1,0-0.2,0-0.2,0c-0.1,0.4-0.1,0.8-0.2,1.5
            c-0.7-1.6-1.9-1.9-3.4-1.7c0.2-0.3,0.3-0.5,0.5-0.9c-1.3-0.5-2.4,0.3-3.7,0.4c0.3-0.4,0.5-0.7,0.7-1.1c0-0.1-0.1-0.1-0.1-0.2
            c-0.4,0.1-0.8,0.2-1.1,0.3c-0.1-0.3-0.2-0.6-0.4-0.6c-0.3,0-0.6,0.1-0.8,0.3c-0.3,0.2-0.5,0.5-0.8,0.7c-0.1-0.5-0.1-1-0.2-1.3
            c0.5-0.1,1.1-0.3,1.8-0.4c0-0.1,0-0.2,0.1-0.3c-1-0.4-1.6-1-1.6-2.2c0.4,0.4,0.7,0.7,1,0.9c0.2,0.1,0.4,0.1,0.7,0.1
            c0-0.2,0.1-0.5,0-0.7c-0.3-0.5-0.7-0.9-1.1-1.4c1.1-0.1,2.2,0.4,3.2,0c0-0.1,0-0.2,0.1-0.3c-0.7-0.2-1.5-0.4-2.2-0.7
            c0.8-0.5,1.4-0.1,2.1,0.1c0.9,0.4,1.1,0.3,1.1-0.7c0.7,0.1,1.3,0.3,2,0.4c0.2,0,0.4-0.2,0.6-0.2c-0.1-0.2-0.1-0.5-0.3-0.6
            c-0.1-0.2-0.4-0.3-0.6-0.3c-0.7-0.1-1.4-0.2-2.2-0.3c0.3-0.5,0.9-0.9,0.1-1.6c-1,0.8-1.9,1.6-2.9,2.4c0-0.1-0.1-0.1-0.1-0.2
            c0.3-0.4,0.6-0.8,0.9-1.2c-0.1-0.1-0.1-0.2-0.2-0.2c-0.4,0.1-0.7,0.2-1.1,0.3c-0.3,0-0.7-0.1-1-0.1c0-0.1,0-0.2,0-0.4
            c0.4,0,0.9,0,1.3,0c0.2,0,0.3-0.2,0.5-0.2c-0.1-0.2-0.2-0.4-0.3-0.5c-0.4-0.1-0.9-0.2-1.3-0.3c0.4-0.7,1-0.8,1.7-0.5
            c0.2,0.1,0.4-0.1,0.6-0.1c-0.1-0.2-0.2-0.4-0.3-0.5c-0.2-0.2-0.5-0.4-0.8-0.7c1.4-0.1,2.6-0.1,3.6-1.1c-0.5-0.1-0.9-0.2-1.6-0.3
            c1-0.7,1.9,0.7,2.8,0c-0.3-1.1-1.4-0.9-2.1-1.3c0.6-0.8,1.5-1.4,1.6-2.4c-0.1-0.1-0.2-0.2-0.2-0.2c-0.8,0.6-1.5,1.1-2.4,1.8
            c0.1-0.5,0.2-0.9,0.2-1.4c0-0.4-0.1-0.8-0.2-1.1c-0.3,0.3-0.6,0.5-0.9,0.8c-0.2,0.2-0.1,0.7-0.3,0.8c-0.6,0.5-1.3,0.8-2,1.2
            c-0.1,0-0.1-0.1-0.2-0.1c0.1-0.3,0.2-0.7,0.4-1c0.4-0.6,0.4-1.2-0.1-1.8c-0.3-0.3-0.6-0.5-1-0.8c1.2-1.3,1.3-2,0.2-2.4
            c0.5-0.4,1-0.8,1.6-1.1c0.3-0.2,0.6-0.4,0.9-0.5c0.6-0.2,1.3-0.2,2-0.4c-0.1-0.4-0.2-0.6-0.3-0.8c0.2,0,0.3,0,0.5,0
            c0.2,0,0.5-0.1,0.7-0.1c-0.2-0.2-0.3-0.5-0.5-0.6c-0.5-0.2-1.1-0.2-1.7-0.3c0.4-0.5,0.8-0.9,1.1-1.5c0.1-0.2,0-0.5,0-0.7
            c-0.2,0-0.5,0-0.7,0.1c-0.3,0.2-0.6,0.5-0.9,0.8c-0.2,0.3-0.4,0.6-0.6,0.8c-0.2-0.4-0.3-0.7-0.4-1.1c0.3-0.4,0.8-0.9,1.1-1.4
            c0.1-0.2,0-0.5,0-0.8c-0.2,0-0.5,0-0.6,0.1c-0.3,0.3-0.6,0.6-1,0.9c-0.2,0.1-0.5,0.3-0.6,0.2c-0.5-0.3-0.7,0.1-0.9,0.4
            c-0.2,0.3-0.3,0.7-0.4,1.1c-1.7-0.9-1.7-0.9-4.1,0.5c0.2-0.4,0.2-0.6,0.4-0.7c0.5-0.4,1.1-0.7,1.6-1.1c0.7-0.4,1.4-0.9,2.1-1.3
            c0.2-0.1,0.2-0.4,0.3-0.6c-0.2,0-0.4-0.1-0.6-0.1c-0.4,0.1-0.8,0.3-1.2,0.4c-0.3,0.1-0.5,0.2-0.7,0.3c0-0.4-0.1-0.7-0.1-1
            c-0.3,0.1-0.6,0.2-0.9,0.4c-0.2,0.1-0.4,0.3-0.6,0.5c-0.1-0.2,0-0.3,0-0.4c0.1-1.1,1.3-1.4,1.8-2.2c0.5-0.8,1.4-1.4,2.1-2.1
            c-0.9-0.8-1.7,0-2.5-0.1c0.1-0.6,0.3-1.2,0.3-1.7c0-0.4-0.3-0.9-0.6-1.2c-0.2-0.1-0.7,0.1-1,0.3c-0.1,0-0.3,0.2-0.4,0.3
            c-0.1-0.1-0.1-0.1-0.2-0.2c0.3-0.3,0.5-0.6,0.8-0.7c0.4-0.2,1-0.2,1.4-0.4c0.4-0.2,1.2-0.6,1.1-0.7c-0.3-0.7-0.9-0.5-1.5-0.4
            c-0.2,0-0.4,0.2-0.6,0.2c-0.2,0.1-0.4,0.1-0.8,0.1c0.4-0.6,0.9-0.9,0.3-1.5c-1.1-1.1-1,0.8-1.7,0.6c-0.2-1.1,0-2,1.1-2.5
            c0.2-0.1,0.5-0.3,0.7-0.4c0.5-0.5,1-1,1.5-1.6c0.2-0.2,0.1-0.6,0.1-0.9c-0.3,0-0.7-0.1-1,0.1c-0.7,0.4-1.4,0.8-2.2,1.3
            c0.2-3,0.5-5.9-0.9-8.7c-0.9,2.7-0.9,5.5-1.1,8.4c-0.5-0.7-0.9-1.4-1.3-2c-0.1-0.2-0.5-0.2-0.7-0.3c-0.1,0.3-0.3,0.6-0.3,0.8
            c0.2,0.7,0.5,1.3,0.8,2c0.5,1.2,1.9,1.9,1.6,3.6c-0.2-0.2-0.4-0.5-0.6-0.7c-0.6-0.5-1.1-1-1.7-1.4c-0.1-0.1-0.5-0.1-0.6,0
            c-0.1,0.2-0.2,0.5-0.1,0.7c0.1,0.3,0.4,0.6,0.6,0.8c0.4,0.4,0.8,0.7,1.3,1.1c-0.8,0.1-1,0.4-0.4,1c0.2,0.2,0.3,0.5,0.4,0.9
            c-0.6-0.3-1-0.6-1.5-0.8c-0.2-0.1-0.6,0-0.8,0.1c0.1,0.3,0.1,0.7,0.3,0.9c0.5,0.5,1.2,1,1.9,1.5c-0.6,0.1-1.2,0.1-1.6,0.3
            c-0.2,0-0.4,0.4-0.3,0.6c0.1,0.3,0.4,0.5,0.5,0.8c0.2,0.3,0.3,0.7,0.4,1c-0.6-0.1-0.9-0.3-1.3-0.6c-0.3-0.2-0.6-0.4-0.8-0.7
            c0,0.4-0.1,0.8-0.1,1.1c0,0.1,0,0.1-0.1,0.2c-0.4-0.1-0.9-0.1-1.4-0.2c0.1,0.3,0.1,0.6,0.2,0.8c-0.7-0.3-1.4-0.6-2-0.9
            c-0.2-0.1-0.6,0.1-0.9,0.1c0.2,0.3,0.3,0.6,0.5,0.8c0.5,0.3,1,0.5,1.6,0.7c-0.4,0.6-0.4,0.8,0.2,1c0.7,0.2,1.5,0.5,2.3,0.9
            c-0.7,0.4-1.3,0.7-1.9,1c0,0.1,0.1,0.3,0.1,0.4c0.8,0.1,1.6,0.2,2.4,0.2c0,0.1,0,0.2,0,0.3c-0.5,0.1-1,0.2-1.5,0.3
            c0,0.1,0,0.2-0.1,0.3c0.6,0.3,1.3,0.6,1.9,1c0,0.1-0.1,0.1-0.1,0.2c-0.4-0.1-0.9-0.3-1.3-0.4c-0.3-0.1-0.5,0-0.8,0.1
            c0.1,0.3,0.2,0.6,0.4,0.8c0.3,0.3,0.6,0.5,1,0.7c-0.2,0.2-0.4,0.3-0.6,0.5c-0.8-0.7-1.1-1.9-2.1-2.4c-0.1,0-0.2,0.1-0.3,0.1
            c0.2,0.6,0.4,1.1,0.7,1.8c-1.2-0.7-2.3-1.5-3.7-1.3c-0.1,0.1-0.2,0.2-0.3,0.4c0.4,0.2,0.8,0.5,1.2,0.7c-0.6,0.7-0.5,0.9,0,1.3
            c0.5,0.3,0.9,0.7,1.4,1.1c-0.7,0.3-1.2,0.6-1.9,0.9c1,1,1.9,0.3,2.8,0.4c-0.1,0.2-0.2,0.4-0.2,0.6c0.8,0.7,1.2-0.4,1.7-0.4
            c0.6,0.4,1.1,0.8,1.6,1.2c-0.5,0.5-1.6,0.4-1.2,1.6c-0.2-0.2-0.4-0.3-0.6-0.4c-0.2-0.2-0.4-0.4-0.6-0.6c-0.7-0.7-0.9-0.7-1.4,0.1
            c-0.3-0.2-0.6-0.4-1-0.6c-0.3-0.1-0.6,0-0.9,0c0.1,0.3,0.1,0.7,0.3,0.9c0.4,0.4,0.9,0.7,1.4,1.1c-0.2,0.2-0.3,0.3-0.5,0.5
            c-0.3,0.3-0.8,0.6-0.4,1.1c0.1,0.1,0.7-0.1,1.1-0.1c0.2,0,0.4-0.1,0.6-0.2c0.8,0,1.6,0,2.3-0.1c0.2,0,0.4-0.1,0.5-0.1
            c0,0.6-0.1,1.1-0.1,1.7c-0.4,0.2-1.3-0.1-1.7,0.7c0.3,0.1,0.5,0.3,0.7,0.4c-0.7,0.6-1.4,0.5-1.9-0.2c-0.1-0.2-0.3-0.3-0.5-0.5
            c-0.7-0.6-0.9-0.5-1.1,0.5c-0.5-0.9-0.9-1.6-1.3-2.4c-0.1,0-0.2,0-0.3,0c-0.1,0.4-0.3,0.8-0.5,1.3c-0.2-0.5-0.4-0.9-0.6-1.2
            c-0.1-0.2-0.3-0.3-0.5-0.4c-0.1,0.2-0.2,0.4-0.2,0.7c0,0.4,0.2,0.7,0.3,1.2c-0.4-0.2-0.7-0.4-1-0.4c-0.3,0-0.7,0.1-1,0.1
            c0.2,0.3,0.2,0.7,0.5,0.9c0.4,0.3,0.9,0.5,1.4,0.8c-0.5,0.2-1,0.4-1.4,0.7c-0.2,0.1-0.2,0.4-0.3,0.6c0.2,0.1,0.4,0.2,0.7,0.2
            c0.3,0,0.5-0.1,0.9-0.2c-0.3,0.6-0.6,1-0.8,1.4c0.1,0.1,0.1,0.1,0.2,0.2c0.4-0.2,0.7-0.3,1.2-0.5c0,0.6,0.3,0.9,0.8,0.4
            c0.4-0.3,0.6-0.7,0.8-0.8c0.4,0,0.7,0.1,0.9,0c0.8-0.3,1-0.3,1.6,0.3c-1.2,0.1-2.4,0.3-2.7,1.7c-1,0.2-2-0.2-3,0.3
            c0,0.1,0,0.2,0,0.3c0.7,0.1,1.5,0.3,2.2,0.4c-0.6,1.2-2.4,1.3-2.9,2.7c0,0.1,0.1,0.2,0.1,0.3c0.8-0.3,1.6-0.6,2.5-0.9
            c0,0.1,0.2,0.4,0.2,0.4c0.7-0.3,1.3-0.5,2-0.8c0,0.2,0,0.5,0.1,0.6c0.1,0.3,0.4,0.5,0.6,0.8c0.1-0.3,0.4-0.6,0.4-0.9
            c-0.1-1,0.5-1.2,1.3-1.5c-0.1,0.3-0.2,0.5-0.2,0.5c0.4,0.7-0.1,0.9-0.5,1.3c-0.3,0.3-0.6,0.8-0.9,1.2c0.1,0.1,0.2,0.2,0.2,0.3
            c0.6-0.3,1.2-0.5,1.9-0.8c0.1,0.7,0.3,1.4,0.4,2.1c-0.6-0.1-1.3-0.2-2-0.3c-0.5,0-1,0-1,0.8c0,0.6-0.2,1.2-0.4,1.8
            c-2-1.2-2.2-1.2-2.5-0.3c-0.9-0.4-1.7-1-2.8-0.7c0.2,1.4,2,1.2,2.1,2.8c-1-0.6-1.7-1-2.7-1.5c-0.1,0.5-0.1,0.9-0.2,1.2
            c-0.6-0.1-1.2-0.3-1.8-0.4c-0.3-0.1-0.6-0.2-1-0.4c-0.2-0.1-0.4-0.2-0.5-0.3c0,0.2-0.1,0.4-0.1,0.7c0,0.1,0,0.2,0,0.4
            c-2.4-0.1-2.6-0.1-2.9,1.1c0.7,0.1,1.3,0.2,1.9,0.3c-0.1,0.3-0.2,0.5-0.3,0.8c0.3,0.1,0.6,0.2,0.8,0.2c0.3,0,0.6-0.1,0.9-0.2
            c0.5-0.1,1.1-0.3,1.6-0.4c-0.3,0.4-0.6,0.6-0.9,0.9c-0.1,0.1-0.2,0.4-0.3,0.6c0.2,0,0.5,0.2,0.7,0.1c0.5-0.3,0.9-0.7,1.3-1.1
            c0.2-0.2,0.4-0.4,0.6-0.6c0.1,0,0.1,0.1,0.2,0.1c-0.3,0.5-0.6,0.9-0.8,1.4c-0.3,0.8,0.3,1,1,1c-0.4,0.3-0.7,0.6-1,1
            c1,1,1.9,0.1,2.8-0.1c0,0.2,0,0.4,0.1,0.5c0.2,0.4,0.5,1.1,0.7,1.1c0.7-0.1,0.4-0.8,0.5-1.2c0.1-0.4,0.1-0.7,0.2-0.9
            c0.4,0.3,0.6,0.6,0.9,0.8c-0.7,1,0.6,0.9,0.8,1.3c-0.7,0.4-1.4,0.9-2,1.3c0,0.1,0,0.3,0,0.4c1.4-0.1,2.5,1.1,4,0.9
            c-0.4,0.4-1,0.8-1.2,0.7c-1.9-0.9-4-0.9-6.1-1.2c0,0.3-0.1,0.6-0.1,1c-0.3-0.4-0.5-0.7-0.8-1c-0.1-0.1-0.4-0.1-0.5-0.2
            c-0.1,0.2-0.2,0.4-0.1,0.6c0,0.3,0.2,0.5,0.3,0.8c-1.6-0.5-2.9-1.4-4.5-1.1c-0.1,0.1-0.1,0.2-0.2,0.4c1,0.6,2,1.2,3,1.8
            c0.1,0.3,0.2,0.7,0.3,1c-0.4,0.3-0.8,0.5-1.2,0.8c-0.5,0.3-0.8,0.8-0.4,1.3c0.1,0.2,0.8,0,1.2-0.1c0.2-0.1,0.4-0.3,0.6-0.4
            c0.4-0.2,0.9-0.4,1.3-0.6c0,0.6,0,1,0,1.5c0.1,0,0.2,0.1,0.3,0.1c0.3-0.3,0.6-0.7,1-1.1c0.2,0.7-0.2,1-0.6,1.3
            c-0.4,0.3-0.7,0.8-1.2,1.3c1.8,1.2,2.7-0.3,3.8-1c0.3,0.9,0.5,1.7,1.3,2.2c0.8,0.6,1,0.7,1.7,0c0.4-0.4,0.7-0.8,1.1-1.2
            c0.2,0.3,0.3,0.6,0.4,0.9c-0.4,0.4-0.8,0.7-1.1,1.2c-0.2,0.4-0.5,0.9-0.4,1.3c0.1,0.7,0.7,1,1.3,1c0.3,0,0.7,0.1,1.2,0.2
            c-0.5,0.6-0.9,1-1.3,1.5c-1.2-1-2.3-1.9-3.8-1c-0.8-0.5-1.3-1.4-2.5-1.5c0.4,1.4,1.5,2,2.4,3c-0.7-0.3-1.3-0.8-1.9-0.2
            c0,0-0.2-0.1-0.3-0.1c-0.9-0.2-1.6-0.6-1.9-1.5c-0.1-0.4-0.4-0.7-0.6-1c-0.2-0.2-0.5-0.5-0.6-0.4c-0.2,0.1-0.4,0.4-0.5,0.7
            c-0.1,0.1,0,0.3-0.1,0.6c-0.7-0.6-1.4-1.2-2.1-1.7c-0.1,0.1-0.2,0.2-0.3,0.3c0.2,0.5,0.5,0.9,0.7,1.4c0.1,0.2,0.1,0.5,0.2,0.8
            c-0.3,0.1-0.6,0.2-0.9,0.2c-0.5-0.1-0.9-0.4-1.4-0.4c-0.6-0.1-1.2,0-2,0c0.9,1.2,1.9,1.5,3,1.8c-0.1,0.2-0.2,0.4-0.3,0.6
            c0.3,0.2,0.5,0.4,0.7,0.6c-0.5,0-0.9-0.2-1.3-0.2c-0.9,0-0.4,0.6-0.3,1c-0.3,0.1-0.5,0.2-0.7,0.3c-0.6,0.3-1.3,0.6-1.9,1
            c-0.3,0.2-0.3,0.7-0.4,1.1c0.3,0.1,0.6,0.3,0.9,0.2c0.5-0.1,0.9-0.3,1.3-0.4c0.6-0.2,1.2-0.3,2-0.6c-0.4,0.6-0.7,0.9-0.8,1.2
            c-0.1,0.2-0.1,0.6-0.1,0.6c0.2,0.1,0.6,0.2,0.7,0.1c0.5-0.3,0.9-0.7,1.4-1.1c0.4-0.3,0.8-0.7,1.2-1.1c0.1,0.1,0.1,0.1,0.2,0.2
            c-0.1,0.3-0.3,0.7-0.4,1.1c-0.1,0.3,0,0.6,0,0.9c0.3-0.1,0.6-0.2,0.8-0.4c0.1-0.1,0.2-0.3,0.3-0.4c0.5-1.1,0.5-1.1,1.6-0.7
            c-0.4,0.2-0.9,0.5-1.3,0.7c0,0.1,0,0.2,0.1,0.3c0.6,0.1,1.2,0.2,1.9,0.3c-0.4,0.4-0.8,0.7-1.1,1.1c-0.2,0.3-0.3,0.7-0.5,1.1
            c0.4,0,0.7-0.1,1.1-0.1c-0.3,0.8-0.6,1.5-0.8,2.3c-0.1,0.5,0.2,0.7,0.7,0.5c0.3-0.2,0.6-0.4,0.9-0.7c0.5-0.6,0.9-1.2,1.3-1.8
            c0.3,1.1,0.3,1.1,1.2,0.7c-0.1,0.3-0.1,0.6-0.2,0.9c-0.1,0.4-0.3,0.8,0.2,1c0.3,0.1,0.9,0,1.1-0.3c0.6-0.6,1.3-1.2,1.4-2.1
            c0-0.1,0.2-0.3,0.4-0.5c0.4,1.2,0.8,2.3,1.2,3.5c0,0.1-0.3,0.5-0.5,0.5c-1.1,0.1-2.3,0.7-3.3-0.4c-0.1-0.1-0.3-0.1-0.4-0.1
            c-0.8,0.8,0.2,1.3,0.4,1.8c-0.7,0.1-1.4,0.1-2,0.3c-0.5,0.2-1,0.6-1.4,1c-0.1,0.1,0.4,0.6,0.6,1c-0.1,0-0.4,0-0.4-0.1
            c-0.3-0.4-0.6-0.8-1-1.1c-0.2-0.2-0.5-0.4-0.8-0.6c-0.1,0.3-0.1,0.7-0.1,1c0,0.1,0.1,0.2,0.1,0.3c-1.5-0.7-1.5-0.7-2.1,0.4
            c-0.7-0.3-1.5-0.6-2.2-1c-0.8-0.4-1.5-1-2.3-1.4c-0.2-0.1-0.6-0.1-0.8-0.1c0.1,0.3,0.1,0.6,0.3,0.7c0.7,0.6,1.4,1,2,1.5
            c-1-0.1-2-0.1-3-0.2c-1-0.1-2-0.4-3,0.2c1,1,2.3,1.1,3.4,1.5c0,0.2,0,0.4,0,0.7c0.3,0.1,0.6,0.1,0.8,0.2c-0.6,0.5-1.3,1-1.9,1.4
            c0.1,0.1,0.1,0.3,0.2,0.4c0.5,0,0.9,0,1.4-0.1c0.4,0,0.9-0.3,1.1-0.1c0.6,0.6,1.2,0.6,1.9,0.4c0.7-0.2,1.4-0.3,1.9-0.5
            c0.3,0.4,0.7,0.8,1,1.2c-0.1,0-0.2,0-0.4,0.1c-1,0.2-2,0.4-3,0.7c-0.3,0.1-0.5,0.6-0.7,0.9c0.3,0.2,0.6,0.5,0.9,0.5
            c0.6,0,1.3-0.1,2-0.2c0.8-0.2,1.5-0.5,2.5-0.8c-0.4,0.5-0.7,0.9-1.1,1.4c1.5,0.5,2.1-0.7,3.1-1.3c0.4,1.2,0.7,2.3,1.1,3.5
            c-0.2,0.1-0.3,0.1-0.4,0.1c-0.5-0.1-0.9-0.3-1.4-0.4c-0.3-0.1-0.7,0-1,0c0,0.3,0.1,0.7,0.1,1c0,0,0,0.1,0,0.1
            c-2.2,0.2-2.2,0.2-2.7,0.7c-0.3-0.3-0.7-0.6-1-0.8c-0.2-0.1-0.4-0.1-0.6-0.2c0,0.3-0.1,0.5,0,0.8c0.1,0.3,0.3,0.5,0.5,0.8
            c-0.1,0.1-0.1,0.2-0.2,0.2c-0.9-0.4-1.7-0.7-2.6-1.1c-1.5-0.6-2.2-0.7-3,0.5c-0.8-0.6-1.6-1.2-2.4-1.7c-0.2-0.2-0.6-0.2-0.9-0.2
            c0.1,0.3,0,0.7,0.2,0.9c0.6,0.7,1.3,1.2,1.9,1.8c-0.8,0.1-1.7,0.2-2.6,0.2c-0.9,0-1.8-0.1-2.7,0.6c0.9,1,2.2,0.9,3.3,1.1
            c-0.2,0.4-0.3,0.7-0.4,1c-0.6,0.1-1.3,0.2-1.8,0.5c-0.3,0.1-0.5,0.5-0.7,0.7c0.3,0.2,0.7,0.7,1,0.7c0.7,0,1.5-0.1,2.2-0.3
            c0.7-0.2,1.3-0.6,2-0.9c0,0.7-0.8,1.4,0.2,2.2c0.4-0.6,0.8-1.1,1.1-1.6c-0.2,0.8,0.4,1.3,1.2,1c1-0.4,2-1,2.9-1.5
            c-0.2,0.5-0.2,1.3-1.2,1.5c-0.3,0.1-0.6,0.5-0.8,0.8c0.4,0.1,0.8,0.2,1.2,0.3c0.1,0,0.1,0.1,0.1,0c-0.4,0.6-0.9,1.1-1.3,1.7
            c-0.1,0.1-0.1,0.2-0.1,0.3l-2.8,0.1l-33.9,10.7l-35.5,4.6l-19.4,4.1l-11.1,3.3l-7,1.6l-27.5-4.8l-18.4-5.9l-29.2-3.1l-27.8-8.1
            l-37.2-2.2l-1.3-0.3c0.2,0,0.7,0,1.6,0c1.9,0.1,2,0.1,1.5-0.3c-0.3-0.2-0.9-0.4-1.2-0.4c-0.3,0-0.7-0.1-0.8-0.3
            c-0.1-0.2,0.1-0.3,0.5-0.2c1.3,0.1,2.2,0,2.2-0.2c0-0.1-1-0.3-2.3-0.4c-1.2-0.1-2.2-0.3-2.1-0.4c0.1-0.1,1-0.4,2.1-0.6
            c2-0.4,3.2-0.9,2.8-1.2c-0.2-0.2-2,0.1-4.4,0.6c-0.7,0.2-0.7,0.1,0.3-0.6c1.7-1.2,0.7-1.3-1.7-0.2c-2.4,1.1-3.8,1.2-6.4,0.4
            c-3-0.9-7.9-2.9-8.3-3.5c-0.5-0.7-0.2-0.7,0.6,0.1c0.4,0.3,0.7,0.5,0.7,0.4c0-0.1,0.2-0.1,0.5,0.1c0.4,0.3,0.5,0.3,0.5-0.2
            c0-0.4,0.2-0.4,1,0.3l1,0.8l-0.2-0.9c-0.2-0.9-0.2-0.9,0.7-0.6c0.5,0.2,1.1,0.5,1.4,0.6c1.2,0.8,1.4,0.8,1.2-0.2
            c-0.2-0.7-0.1-0.8,0.2-0.6c0.6,0.5,1.9,0.4,1.9-0.1c0-0.5,0.5-0.5,0.9,0c0.1,0.2,0.7,0.6,1.1,0.8c0.7,0.4,0.9,0.4,0.9,0.1
            c0-0.2-0.3-0.6-0.6-0.9c-0.4-0.3-0.6-0.6-0.6-0.8c0-0.1,0.1-0.2,0.2-0.1c0.1,0.1,0.4,0,0.7-0.3c0.3-0.3,0.9-0.4,1.7-0.3
            c0.8,0.1,1.3,0,1.4-0.2c0.1-0.3,0.4-0.3,1.2-0.1c2.8,0.7,3.4-0.1,0.6-0.9c-1.8-0.6-2.1-0.8-0.4-0.4c2.2,0.5,5.1,0.1,3.8-0.5
            c-0.3-0.1-1.1-0.3-1.9-0.3c-1.2,0-1.3-0.1-0.5-0.2c0.5-0.1,1-0.3,1.1-0.5c0.1-0.3-0.4-0.4-3.1-0.2c-3.2,0.2-3.3,0.2-2.9-0.3
            c0.6-0.8,0.2-0.9-1.4-0.5c-0.9,0.2-2,0.3-2.8,0.3c-1.9-0.2-8-1.9-8.7-2.4c-0.8-0.6-0.7-0.9,0.1-0.7c0.4,0.1,0.6,0,0.6-0.1
            c0-0.3,0.5-0.2,2.1,0.4c0.5,0.2,1.7,0.4,2.6,0.4c0.9,0,1.8,0,1.9,0.1c0.8,0.1,0.8-0.1,0.3-0.6c-0.4-0.4-0.3-0.4,0.4,0.1
            c1.1,0.8,1.4,0.9,1.4,0.3c0-0.4,0.1-0.4,0.8,0c0.5,0.3,0.9,0.3,1,0.2c0.1-0.1,0.6-0.4,1.2-0.6c0.9-0.3,0.9-0.4,0.3-0.7
            c-0.7-0.4-0.5-0.5,0.6-0.1c0.6,0.2,0.8,0.2,0.8-0.1c0-0.2,0.8-0.5,2.1-0.7c1.1-0.2,2.1-0.5,2.1-0.6c0-0.1,0.1-0.2,0.3-0.1
            c0.2,0.1,0.6,0,0.9-0.1c0.5-0.2,0.4-0.3-0.3-0.5c-0.7-0.1-0.8-0.3-0.7-0.7c0.1-0.4,0-0.5-0.6-0.6c-0.5-0.1-0.2-0.3,1.3-0.6
            c2.2-0.6,2.7-1.1,0.8-0.8c-1.8,0.3-6.2,0.4-6.2,0.1c0-0.1,0.1-0.2,0.3-0.2c0.2,0,0.3-0.1,0.3-0.3s-0.7-0.3-1.5-0.2
            c-2.1,0-5.5-0.6-5.7-1c-0.1-0.3,0.1-0.4,0.6-0.4c0.4,0,0.8-0.1,0.8-0.3c0-0.1,0.2-0.2,0.5-0.1c0.3,0.1,0.5,0,0.5-0.2
            c0-0.2,0.2-0.2,0.7,0.1c0.4,0.2,1.1,0.4,1.5,0.4l0.8,0l-0.7-0.5l-0.7-0.5l1.5-0.1l1.5-0.1l-1.1-0.5l-1.1-0.5l1,0
            c0.6,0,1.3-0.3,1.7-0.7c0.4-0.4,0.9-0.7,1.1-0.7c0.2,0,0.5-0.2,0.8-0.5c0.6-0.8-0.2-0.9-2-0.4c-2,0.6-2.4,0.6-2.2-0.1
            c0.2-0.7,0.1-0.7-1.9-0.1c-1.5,0.4-1.7,0.4-4.1-0.2c-3.3-0.8-4.2-1.5-1.6-1.4c0.3,0,0.6-0.1,0.7-0.3c0.2-0.2,0.4-0.2,0.9,0.2
            c0.5,0.4,0.9,0.4,1.9,0.3c1.5-0.2,1.6-0.3,0.7-0.9c-0.6-0.4-0.4-0.4,1,0.1c0.5,0.2,0.6,0.1,0.4-0.2c-0.2-0.3,0-0.4,0.5-0.4
            c0.4,0,0.6-0.1,0.5-0.4c-0.1-0.2,0-0.4,0.2-0.5c0.3-0.1,0.2-0.2-0.1-0.5c-0.5-0.3-0.5-0.4,0.2-1c1.2-0.9,0.9-1.1-0.8-0.7
            c-4.2,1.1-5.8,1.2-6.8,0.3c-0.6-0.5-0.6-0.7-0.2-0.8c0.3-0.1,0.9,0,1.4,0.2c1.4,0.4,1.7,0,0.5-0.8c-0.8-0.5-0.9-0.6-0.3-0.6
            c1.1,0.1,1.8,0,1.8-0.3c0-0.1-0.3-0.3-0.6-0.3c-0.5,0-0.4-0.1,0.1-0.3c0.4-0.1,0.8-0.4,0.9-0.7c0.2-0.4,0.1-0.4-0.5-0.1
            c-1.1,0.5-7.8,0.4-9.2-0.1c-1-0.4-1-0.4-0.4-0.5c0.6,0,0.7-0.1,0.6-0.6c-0.2-0.5-0.1-0.5,0.4-0.2c0.7,0.5,1.7,0.8,1.7,0.5
            c0-0.1,0.3-0.2,0.6-0.1c0.4,0.1,0.6,0,0.6-0.2c0-0.2,0.4-0.3,0.8-0.3c1.1,0,1-0.3-0.2-1.1l-1-0.7l1.7,0.2c1.8,0.2,2.4,0.1,2.1-0.3
            c-0.3-0.4,0.5-1,1.5-1c1.1,0,1.2-0.4,0.2-0.6c-0.4-0.1-0.2-0.1,0.4-0.1c0.7,0,1.1-0.1,1-0.3c0-0.2,0.1-0.3,0.3-0.3
            c0.2,0,0.2-0.1,0-0.4c-0.3-0.3-0.7-0.4-1.2-0.3c-0.5,0.1-0.6,0.1-0.4,0c0.7-0.3,0.4-0.7-0.4-0.5c-0.7,0.1-0.8,0.1-0.6-0.3
            c0.2-0.3,0.1-0.4-0.2-0.2c-0.2,0.1-0.8,0.2-1.3,0.3c-0.5,0-1.2,0.1-1.6,0.2l-0.8,0.2l0.9-0.6c1-0.7,1.2-1.2,0.3-0.8
            c-0.9,0.4-1.6,0.4-1.1-0.1c0.7-0.6,0.4-1.1-0.3-0.5c-0.4,0.3-1.1,0.7-1.7,0.9c-2,0.8-7.3-0.3-7.3-1.5c0-0.2-0.2-0.6-0.4-0.7
            c-0.3-0.2-0.3-0.3,0-0.3c0.2,0,0.4,0.2,0.5,0.4c0.1,0.3,0.6,0.4,1.2,0.4c0.6,0,1.4,0.1,1.8,0.2c0.6,0.2,0.7,0.1,0.7-0.4v-0.6
            l1.1,0.5c0.8,0.4,1.2,0.5,1.3,0.2c0.1-0.2,0-0.4-0.2-0.6c-0.4-0.2,1.5-0.2,2.8,0c0.2,0,0.6,0,1.1-0.1c0.7-0.2,0.7-0.2,0.2-0.7
            c-0.5-0.4-0.4-0.5,0.3-0.6c0.9-0.2,1.1-0.7,0.3-0.7c-0.4,0-0.2-0.1,0.4-0.4c0.5-0.2,1.4-0.7,1.9-1l0.9-0.7l-1.2-0.2
            c-0.7-0.1-1.2-0.3-1.2-0.4c0-0.2-0.4-0.2-0.9-0.1c-0.8,0.2-0.8,0.1-0.5-0.2c0.6-0.6-0.3-0.8-1.3-0.3c-0.4,0.3-1.4,0.5-2.3,0.5
            c-1.3,0-1.4,0-0.9-0.2c0.6-0.2,0.7-0.5,0.4-1.5c0,0-0.5,0.2-1.1,0.5c-0.6,0.3-1.6,0.6-2.2,0.6c-2,0-5.5-1.1-7.6-2.5
            c-0.8-0.5-0.7-0.6,0.3-0.2c0.5,0.2,0.6,0.2,0.6-0.2c0-0.5,0-0.5,0.3,0c0.2,0.3,0.5,0.4,0.6,0.3c0.2-0.1,0.7,0,1.1,0.3
            c0.8,0.4,0.8,0.4,0.8-0.3c0-0.4,0.1-0.6,0.2-0.5c0.3,0.4,1.5,0.9,2,0.9c0.2,0,0.4-0.3,0.4-0.6c0-0.6,0-0.6,0.3,0.1
            c0.1,0.4,0.3,0.6,0.4,0.6c0.1-0.1,0.4,0,0.8,0.2c0.5,0.2,0.7,0.2,1.1-0.2c0.2-0.3,0.6-0.4,0.7-0.4c0.2,0.1,0.2-0.2,0.1-0.6
            c-0.2-0.7-0.2-0.7,0.7-0.4c1,0.3,1.4,0.2,0.8-0.4c-0.3-0.3-0.3-0.4,0.2-0.4c0.5,0,0.5,0,0-0.5c-0.3-0.3-0.4-0.6-0.3-0.7
            c0.2-0.1,0.6,0.1,0.9,0.4c0.5,0.5,0.8,0.5,2,0.3c0.1,0,0-0.2-0.2-0.4c-0.4-0.4-0.2-0.7,0.6-0.7c0.3,0,0.9-0.2,1.3-0.5l0.8-0.5
            l-1-0.1c-0.5,0-1.3,0-1.7,0c-0.7,0.1-0.7,0-0.4-0.4c0.7-0.7,0.2-0.7-1,0c-1.3,0.8-2.2,0.9-1.5,0.3c0.3-0.3,0.3-0.4-0.1-0.2
            c-0.6,0.2-0.7-0.2-0.2-0.6c0.8-0.7,0-0.6-1.1,0.1c-2,1.4-2.2,1.4-4.5,0.9c-2.4-0.6-4-1.3-4.4-2.1c-0.3-0.5-0.2-0.5,0.5-0.5
            c0.4,0,0.9,0.2,1,0.5s0.5,0.4,0.8,0.5c0.5,0,0.6-0.1,0.5-0.5c-0.2-0.5-0.1-0.5,0.6,0.2c0.4,0.4,1.1,0.7,1.5,0.7
            c0.6,0,0.7-0.1,0.5-0.8c-0.2-1,0.5-1.3,1.3-0.5c0.5,0.6,2.3,1,2.4,0.5c0-0.1-0.5-0.5-1-0.9c-0.8-0.6-0.9-0.7-0.5-0.7
            c0.3,0,0.7,0.2,0.8,0.4s0.3,0.3,0.5,0.3c0.1-0.1,0.4,0,0.5,0.1c0.1,0.2,0.6,0.3,1.1,0.3c0.8,0,0.8,0,0.2-0.4
            c-0.6-0.4-0.6-0.4,0.3-0.7c0.5-0.2,1.1-0.3,1.3-0.3c0.2,0,0-0.2-0.4-0.4c-0.8-0.4-0.8-0.4,0.4-0.3c0.8,0.1,1.4,0,1.7-0.3
            c0.7-0.6,0.2-0.9-1.4-0.9c-0.9,0-1.4-0.1-1.2-0.3c0.4-0.5-0.8-0.6-2.1,0c-1.6,0.7-1.9,0.7-1.7,0.2c0.1-0.3,0-0.4-0.3-0.4
            c-0.3,0-0.4-0.2-0.3-0.4c0.2-0.5,0.1-0.5-1-0.2c-0.7,0.2-0.8,0.2-0.6-0.3c0.2-0.5-0.4-0.7-0.7-0.3c-0.1,0.2-0.8,0.5-1.5,0.8
            c-1.2,0.5-1.5,0.5-2.6,0.2c-1.1-0.3-1.2-0.4-0.8-0.6c0.3-0.1,0.6-0.4,0.6-0.7c0-0.3-0.3-0.4-1.5-0.3c-1.1,0.1-1.6-0.1-2.1-0.5
            c-0.7-0.6-1.4-2.7-0.9-3c0.3-0.1,0.4,0.4,0.3,1.2c0,0.2,0.3,0.7,0.6,1.2c0.6,0.6,0.8,0.7,1.1,0.5c0.2-0.2,0.5-0.6,0.5-1
            c0-0.6,0.1-0.6,0.2-0.2c0.2,0.8,1.1,1.5,1.9,1.5c0.7,0,0.7-0.1,0.4-0.5c-0.4-0.7-0.4-0.9,0-0.7c0.2,0.1,0.3,0,0.3-0.1
            c0-0.2,0.1-0.3,0.3-0.3s0.3,0.2,0.3,0.4c0,0.5,1.9,1.8,2.3,1.6c0.2-0.1,0.3-0.4,0.3-0.7c0-0.3,0.1-0.5,0.3-0.5
            c0.2,0,0.3-0.2,0.1-0.3c-0.1-0.2,0.1-0.1,0.4,0.3s0.7,0.5,0.8,0.4c0.1-0.1,0.6-0.2,0.9-0.3c0.9-0.1,2.2-0.6,2.2-0.9
            c0-0.1-0.4-0.3-1-0.5c-0.5-0.2-0.9-0.5-0.9-0.6c0-0.2-0.4-0.3-0.9-0.3c-1.1,0-2.8-0.7-2.1-0.8c0.2-0.1,0.4-0.3,0.4-0.5
            c0-0.4-1.6-0.5-2.1-0.1c-0.5,0.4-1.7,0.6-1.7,0.3c0-0.1,0.4-0.3,0.8-0.4c0.7-0.1,0.8-0.2,0.4-0.6c-0.3-0.3-0.3-0.4,0.2-0.4
            c0.7,0,1.9-0.7,1.6-1c-0.1-0.1-0.9-0.2-1.7-0.3c-1.6-0.2-1.6-0.1-1.1-0.9c0.3-0.5,0.4-0.5,1.1-0.1c0.7,0.4,0.8,0.4,1-0.1
            c0.1-0.3,0.3-0.5,0.5-0.4c0.2,0.1,0.3,0,0.3-0.1c0-0.2,0.3-0.3,0.6-0.3s0.6-0.2,0.6-0.4c0-0.4-0.7-0.7-1.6-0.7
            c-0.7,0-0.8-0.5-0.1-0.7c0.3-0.1,0.4-0.2,0.3-0.4c-0.1-0.1,0.2-0.4,0.7-0.6c1.1-0.5,0.8-0.9-0.6-0.9h-1.1l0.8-0.9
            c0.6-0.7,0.7-1,0.4-1.2c-0.3-0.3-0.6-0.1-1.4,0.6c-1,0.9-1.1,0.9-1.4,0.5c-0.2-0.3-0.5-0.5-0.7-0.5c-0.4,0-1.4,1.5-1.6,2.4
            c-0.2,0.7-3.1,2.8-3.6,2.6c-0.1-0.1-0.2-0.8-0.2-1.6c0-0.8-0.1-1.5-0.2-1.5c-0.2,0-0.2-0.4-0.2-1c0.1-0.8,0.2-1,1-1.2
            c0.8-0.2,0.9-0.1,0.7,0.3c-0.3,0.8,0.5,1,1.1,0.3c0.3-0.4,0.6-0.5,0.8-0.3c0.2,0.3,1.5,0.1,1.5-0.2c0-0.3-1.6-1.5-1.9-1.5
            c-0.1,0-0.5,0-0.8-0.1c-0.9-0.2-0.3-0.6,0.6-0.4c1.6,0.3,3.1,0.2,3.2-0.1c0.1-0.2-0.1-0.3-0.3-0.3s-0.6-0.2-0.9-0.4
            c-0.2-0.2-0.5-0.3-0.7-0.3c-0.2,0.1-0.3,0.1-0.3-0.1c0-0.1,0.4-0.5,1-0.8c1-0.5,1.2-0.9,0.6-0.9c-0.6,0-2.7,0.8-3,1.2
            c-0.2,0.2-0.2,0.1-0.1-0.3c0.1-0.3,0.1-0.7-0.1-0.7c-0.4-0.2-1.6,1.6-1.6,2.2c0,0.2-0.1,0.4-0.2,0.3c-0.1-0.1-0.4,0-0.7,0.3
            c-0.4,0.4-0.4,0.3-0.3-0.8c0.1-1.1,0.4-1.6,1.6-2.7c0.8-0.8,1.5-1.6,1.5-1.8c0-0.6-1.6-0.2-1.9,0.5c-0.5,1.2-1.1,0.8-1-0.7
            c0.1-1.1,0-1.5-0.6-1.9l-0.7-0.6l0,0.7c0,0.4-0.1,1.4-0.1,2.4l0,1.8l-1.2-1c-1.4-1.2-1.6-1.2-1.5-0.4c0,0.3,0.6,1.1,1.2,1.7
            c1.1,1,1.2,1.3,1.3,2.6c0,1,0,1.5-0.3,1.3c-0.2-0.1-0.3-0.4-0.3-0.6c0-0.2-0.1-0.4-0.3-0.4s-0.3-0.5-0.3-1c0-1.2-0.8-2-1.3-1.4
            c-0.2,0.2-0.2,0.5-0.2,0.7c0.2,0.4-0.8,0.1-1.4-0.4c-0.2-0.2-0.6-0.3-0.8-0.3c-0.9,0-0.7,0.8,0.3,1.8c1.3,1.2,1.3,1.4,0.5,1.6
            c-0.4,0.1-0.6,0.3-0.4,0.6c0.2,0.6,1,0.7,1.6,0.2c0.4-0.4,0.4-0.3,0.5,0.7c0.1,0.8,0,0.9-1.1,0.3c-1.1-0.5-1.3-0.5-1.3,0.1
            c0,0.3,0.5,0.8,1,1.2c0.8,0.5,0.9,0.6,0.4,0.5c-0.4-0.1-0.7,0-0.9,0.3c-0.3,0.6-0.5,0.6-2.6-0.6c-1.1-0.6-2.1-1-2.3-0.9
            c-0.7,0.2-0.2,1.2,0.7,1.7l0.9,0.4l-0.9,0.1c-0.5,0-0.9,0.3-1,0.5c-0.2,0.4,0.6,0.8,1.1,0.5c0.2-0.1,0.3,0,0.3,0.1s0.3,0.3,0.6,0.3
            c0.4,0,0.4,0.1,0.1,0.2c-0.3,0.1-0.3,0.3,0.3,0.6l0.8,0.5l-1.3,0.2c-1.4,0.2-1.7,0.6-0.9,1.2c0.3,0.2,0.6,0.2,1,0.1
            c0.6-0.3,1.7-0.1,1.7,0.2c0,0.1,0.3,0.2,0.6,0.2c0.4,0,0.6-0.1,0.6-0.3c0-0.1,0.3-0.3,0.7-0.3l0.7,0l-0.8,0.5
            c-0.6,0.4-0.7,0.6-0.4,0.8c0.5,0.2,1.3,0.1,1.7-0.4c0.1-0.2,0.2,0,0.1,0.5c-0.2,0.6-0.1,0.7,0.5,0.7c0.4,0,0.7-0.2,0.7-0.3
            c0-0.2,0.1-0.2,0.2,0c0.1,0.3,0.3,0.2,0.6-0.3l0.4-0.6l0.4,0.7c0.2,0.4,0.3,0.8,0.2,0.9c-0.1,0.1-1.3,0.2-2.6,0.3
            c-2.1,0.1-2.5,0-3.9-0.7c-1.4-0.7-2.4-0.9-2.4-0.3c0,0.1,0.4,0.4,0.9,0.7l0.9,0.4l-1.1-0.2c-1.1-0.2-3-1-3.8-1.6
            c-0.2-0.2-0.7-0.3-1-0.3c-0.7,0-0.8,0.5-0.3,1c0.2,0.2-0.3,0.3-1.3,0.3c-0.9,0-1.8,0.1-1.9,0.2c-1.1,0.5,1.5,1.5,3.4,1.3l1.3-0.2
            l-0.9,0.4c-0.5,0.3-0.9,0.6-0.8,0.9c0.2,0.7,1.5,0.4,2.4-0.4c0.4-0.4,1-0.6,1.3-0.6c0.4,0.1,0.4,0.2-0.3,0.4
            c-1.1,0.4-1.4,0.8-0.8,1c0.3,0.1,0.4,0.3,0.4,0.5c-0.1,0.2,0.1,0.4,0.3,0.5c0.3,0.1,0.5,0,0.5-0.1c0-0.2,1-0.6,1.8-0.7
            c0.2,0,0.7-0.3,1-0.5c0.4-0.3,0.7-0.4,0.7-0.3c0,0.3-0.7,0.8-1.5,1.2c-0.4,0.2-0.7,0.4-0.7,0.6c0,0.5,1,0.6,1.6,0.1
            c0.6-0.4,0.6-0.4,0.4,0.1c-0.2,0.8,0.4,0.7,1.1-0.1c0.4-0.5,0.6-0.6,0.8-0.3c0.2,0.3,0.3,0.3,0.5,0c0.2-0.2,0.6-0.3,0.9-0.3
            c1.3,0.1,3-0.8,3.1-1.7c0-0.5,0.1-0.5,0.3,0.1c0.2,0.6,0,0.8-0.9,1.5c-0.6,0.5-2,1.3-3.1,1.7l-2,0.9l-1.5-0.6
            C99,79,98.2,78.7,98,78.7c-0.6-0.1-0.5,0.4,0.2,1.1c0.5,0.5,0.5,0.5,0,0.2c-0.3-0.2-0.7-0.3-0.8-0.2c-0.2,0.1-0.7,0-1.2-0.2
            c-1.2-0.5-1.6-0.5-1.3,0.1c0.1,0.4,0,0.5-0.8,0.4c-0.5,0-1-0.1-1.1-0.2c-0.4-0.3-1.4,0.2-1.4,0.7c0,0.2,0.1,0.4,0.2,0.4
            c0,0.3-0.1,0.7-0.2,1.2c-0.7-1.6-1.9-1.9-3.4-1.7c0.2-0.3,0.3-0.5,0.5-0.9c-1.3-0.5-2.4,0.3-3.7,0.4c0.3-0.4,0.5-0.7,0.7-1.1
            c0-0.1-0.1-0.1-0.1-0.2c-0.4,0.1-0.8,0.2-1.1,0.3c-0.1-0.3-0.2-0.6-0.4-0.6c-0.3,0-0.6,0.1-0.8,0.3c-0.3,0.2-0.5,0.5-0.8,0.7
            c-0.1-0.5-0.1-1-0.2-1.3c0.5-0.1,1.1-0.3,1.8-0.4c0-0.1,0-0.2,0.1-0.3c-1-0.4-1.6-1-1.6-2.2c0.4,0.4,0.7,0.7,1,0.9
            c0.2,0.1,0.4,0.1,0.7,0.1c0-0.2,0.1-0.5,0-0.7c-0.3-0.5-0.7-0.9-1.1-1.4c1.1-0.1,2.2,0.4,3.2,0c0-0.1,0-0.2,0.1-0.3
            c-0.7-0.2-1.5-0.4-2.2-0.7c0.8-0.5,1.4-0.1,2.1,0.1c0.9,0.4,1.1,0.3,1.1-0.7c0.7,0.1,1.3,0.3,2,0.4c0.2,0,0.4-0.2,0.6-0.2
            c-0.1-0.2-0.1-0.5-0.3-0.6c-0.1-0.2-0.4-0.3-0.6-0.3c-0.7-0.1-1.4-0.2-2.2-0.3c0.3-0.5,0.9-0.9,0.1-1.6c-1,0.8-1.9,1.6-2.9,2.4
            c0-0.1-0.1-0.1-0.1-0.2c0.3-0.4,0.6-0.8,0.9-1.2c-0.1-0.1-0.1-0.2-0.2-0.2c-0.4,0.1-0.7,0.2-1.1,0.3c-0.3,0-0.7-0.1-1-0.1
            c0-0.1,0-0.2,0-0.4c0.4,0,0.9,0,1.3,0c0.2,0,0.3-0.2,0.5-0.2c-0.1-0.2-0.2-0.4-0.3-0.5c-0.4-0.1-0.9-0.2-1.3-0.3
            c0.4-0.7,1-0.8,1.7-0.5c0.2,0.1,0.4-0.1,0.6-0.1c-0.1-0.2-0.2-0.4-0.3-0.5c-0.2-0.2-0.5-0.4-0.8-0.7c1.4-0.1,2.6-0.1,3.6-1.1
            c-0.5-0.1-0.9-0.2-1.6-0.3c1-0.7,1.9,0.7,2.8,0c-0.3-1.1-1.4-0.9-2.1-1.3c0.6-0.8,1.5-1.4,1.6-2.4c-0.1-0.1-0.2-0.2-0.2-0.2
            c-0.8,0.6-1.5,1.1-2.4,1.8c0.1-0.5,0.2-0.9,0.2-1.4c0-0.4-0.1-0.8-0.2-1.1c-0.3,0.3-0.6,0.5-0.9,0.8c-0.2,0.2-0.1,0.7-0.3,0.8
            c-0.6,0.5-1.3,0.8-2,1.2c-0.1,0-0.1-0.1-0.2-0.1c0.1-0.3,0.2-0.7,0.4-1c0.4-0.6,0.4-1.2-0.1-1.8c-0.3-0.3-0.6-0.5-1-0.8
            c1.2-1.3,1.3-2,0.2-2.4c0.5-0.4,1-0.8,1.6-1.1c0.3-0.2,0.6-0.4,0.9-0.5c0.6-0.2,1.3-0.2,2-0.4c-0.1-0.4-0.2-0.6-0.3-0.8
            c0.2,0,0.3,0,0.5,0c0.2,0,0.5-0.1,0.7-0.2c-0.2-0.2-0.3-0.5-0.5-0.6c-0.5-0.2-1.1-0.2-1.7-0.3c0.4-0.5,0.8-0.9,1.1-1.5
            c0.1-0.2,0-0.5,0-0.7c-0.2,0-0.5,0-0.7,0.1c-0.3,0.2-0.6,0.5-0.9,0.8c-0.2,0.3-0.4,0.6-0.6,0.8c-0.2-0.4-0.3-0.7-0.4-1.1
            c0.3-0.4,0.8-0.9,1.1-1.4c0.1-0.2,0-0.5,0-0.8c-0.2,0-0.5,0-0.6,0.1c-0.3,0.3-0.6,0.6-1,0.9c-0.2,0.1-0.5,0.3-0.6,0.2
            c-0.5-0.3-0.7,0.1-0.9,0.4c-0.2,0.3-0.3,0.7-0.4,1.1c-1.7-0.9-1.7-0.9-4.1,0.5c0.2-0.4,0.2-0.6,0.4-0.7c0.5-0.4,1.1-0.7,1.6-1.1
            c0.7-0.4,1.4-0.9,2.1-1.3c0.2-0.1,0.2-0.4,0.3-0.6c-0.2,0-0.4-0.1-0.6-0.1c-0.4,0.1-0.8,0.3-1.2,0.4c-0.3,0.1-0.5,0.2-0.7,0.3
            c0-0.4-0.1-0.7-0.1-1c-0.3,0.1-0.6,0.2-0.9,0.4c-0.2,0.1-0.4,0.3-0.6,0.5c-0.1-0.2,0-0.3,0-0.4c0.1-1.1,1.3-1.4,1.8-2.2
            c0.5-0.8,1.4-1.4,2.1-2.1c-0.9-0.8-1.7,0-2.5-0.1c0.1-0.6,0.3-1.2,0.3-1.7c0-0.4-0.3-0.9-0.6-1.2c-0.2-0.1-0.7,0.1-1,0.3
            c-0.1,0-0.3,0.2-0.4,0.3c-0.1-0.1-0.1-0.1-0.2-0.2c0.3-0.3,0.5-0.6,0.8-0.7c0.4-0.2,1-0.2,1.4-0.4c0.4-0.2,1.2-0.6,1.1-0.7
            c-0.3-0.7-0.9-0.5-1.5-0.4c-0.2,0-0.4,0.2-0.6,0.2c-0.2,0.1-0.4,0.1-0.8,0.1c0.4-0.6,0.9-0.9,0.3-1.5c-1.1-1.1-1,0.8-1.7,0.6
            c-0.2-1.1,0-2,1.1-2.5c0.2-0.1,0.5-0.3,0.7-0.4c0.5-0.5,1-1,1.5-1.6c0.2-0.2,0.1-0.6,0.1-0.9c-0.3,0-0.7-0.1-1,0.1
            c-0.7,0.4-1.4,0.8-2.2,1.3c0.2-3,0.5-5.9-0.9-8.7c-0.9,2.7-0.9,5.5-1.1,8.4c-0.5-0.7-0.9-1.4-1.3-2c-0.1-0.2-0.5-0.2-0.7-0.3
            c-0.1,0.3-0.3,0.6-0.3,0.8c0.2,0.7,0.5,1.3,0.8,2c0.5,1.2,1.9,1.9,1.6,3.6c-0.2-0.2-0.4-0.5-0.6-0.7c-0.6-0.5-1.1-1-1.7-1.4
            c-0.1-0.1-0.5-0.1-0.6,0c-0.1,0.2-0.2,0.5-0.1,0.7c0.1,0.3,0.4,0.6,0.6,0.8c0.4,0.4,0.8,0.7,1.3,1.1c-0.8,0.1-1,0.4-0.4,1
            c0.2,0.2,0.3,0.5,0.4,0.9c-0.6-0.3-1-0.6-1.5-0.8c-0.2-0.1-0.6,0-0.8,0.1c0.1,0.3,0.1,0.7,0.3,0.9c0.5,0.5,1.2,1,1.9,1.5
            c-0.6,0.1-1.2,0.1-1.6,0.3c-0.2,0-0.4,0.4-0.3,0.6c0.1,0.3,0.4,0.5,0.5,0.8c0.2,0.3,0.3,0.7,0.4,1c-0.6-0.1-0.9-0.3-1.3-0.6
            c-0.3-0.2-0.6-0.4-0.8-0.7c0,0.4-0.1,0.7-0.1,1.1l-0.8,0c-0.8,0-1.9,0-2.5,0c-1,0.1-1,0-0.5-0.5c1-1,0.3-1-1.5,0
            c-1.9,1.1-3.1,1.3-2.2,0.4c0.5-0.5,0.5-0.6-0.2-0.3c-0.9,0.3-1-0.2-0.2-0.9c1.2-1-0.1-0.8-1.5,0.2c-2.9,2-3.2,2.1-6.4,1.3
            c-3.4-0.9-5.7-1.9-6.3-3c-0.4-0.7-0.3-0.7,0.7-0.7c0.6,0,1.2,0.3,1.4,0.7c0.1,0.3,0.7,0.6,1.2,0.7c0.8,0,0.9-0.1,0.7-0.8
            c-0.2-0.7-0.1-0.7,0.8,0.2c0.6,0.6,1.5,1,2.1,1c0.9,0,1-0.1,0.8-1.1c-0.3-1.5,0.7-1.9,1.9-0.7c0.8,0.8,3.4,1.4,3.4,0.7
            c0-0.2-0.7-0.7-1.5-1.3c-1.1-0.8-1.3-1.1-0.7-1.1c0.5,0,0.9,0.2,1.1,0.6c0.1,0.3,0.4,0.5,0.6,0.4c0.2-0.1,0.5,0,0.7,0.2
            c0.2,0.2,0.8,0.4,1.5,0.4c1.2,0,1.2,0,0.3-0.6c-0.9-0.5-0.8-0.6,0.4-1c0.7-0.2,1.5-0.4,1.8-0.4c0.3,0,0-0.3-0.6-0.6
            c-1.1-0.5-1.1-0.5,0.6-0.4c1.1,0.1,2-0.1,2.4-0.4c1-0.8,0.3-1.3-2-1.3c-1.3,0-2-0.2-1.8-0.4c0.6-0.8-1.1-0.8-3,0
            c-2.3,1-2.8,1-2.4,0.2c0.2-0.4,0-0.6-0.5-0.6c-0.5,0-0.6-0.2-0.5-0.6c0.3-0.7,0.2-0.7-1.4-0.2c-1,0.3-1.1,0.3-0.9-0.4
            c0.2-0.8-0.5-1-1-0.4c-0.2,0.2-1.1,0.8-2.2,1.2c-1.7,0.7-2.1,0.7-3.7,0.3c-1.5-0.4-1.7-0.5-1.1-0.8c0.4-0.2,0.8-0.6,0.8-1
            c0-0.5-0.5-0.6-2.1-0.5c-1.6,0.1-2.3-0.1-3-0.7c-1-0.9-2-3.9-1.4-4.2c0.4-0.2,0.6,0.6,0.4,1.7c0,0.3,0.4,1,0.9,1.7
            c0.8,0.9,1.1,1.1,1.6,0.7c0.4-0.2,0.7-0.9,0.7-1.5c0-0.8,0.1-0.9,0.3-0.2c0.3,1.2,1.5,2.1,2.7,2.1c0.9,0,1-0.1,0.6-0.7
            c-0.6-0.9-0.6-1.3,0-1c0.3,0.1,0.5,0.1,0.5-0.2c0-0.2,0.2-0.4,0.5-0.4s0.5,0.2,0.5,0.5c0,0.7,2.7,2.6,3.3,2.3
            c0.2-0.1,0.4-0.6,0.4-1c0-0.4,0.2-0.7,0.5-0.7s0.4-0.2,0.2-0.5c-0.2-0.3,0.1-0.1,0.6,0.4c0.5,0.5,1,0.8,1.2,0.6
            c0.2-0.2,0.8-0.3,1.4-0.4c1.2-0.1,3.1-0.9,3.1-1.3c0-0.2-0.6-0.5-1.4-0.7c-0.8-0.3-1.3-0.7-1.3-0.9c0.1-0.2-0.5-0.5-1.3-0.5
            c-1.6,0-4-1-3.1-1.2c0.3-0.1,0.6-0.4,0.6-0.7c0-0.6-2.3-0.8-3-0.2c-0.7,0.5-2.5,0.9-2.5,0.5c0-0.2,0.5-0.5,1.2-0.6
            c1-0.2,1.1-0.4,0.6-0.8c-0.5-0.5-0.4-0.6,0.3-0.6c1,0,2.8-1,2.3-1.4c-0.2-0.1-1.2-0.3-2.4-0.4c-2.3-0.2-2.3-0.2-1.6-1.3
            c0.4-0.7,0.6-0.7,1.6-0.1c1,0.6,1.1,0.5,1.4-0.2c0.2-0.4,0.5-0.7,0.7-0.6c0.2,0.1,0.4,0,0.4-0.2c0-0.2,0.4-0.4,0.9-0.4
            c0.5,0,0.9-0.2,0.9-0.5c0-0.6-1-1-2.3-1c-1,0-1.2-0.7-0.2-1c0.4-0.1,0.6-0.3,0.5-0.5c-0.1-0.2,0.3-0.5,0.9-0.8
            c1.6-0.7,1.2-1.3-0.8-1.3H51l1.2-1.3c0.9-1,1-1.4,0.6-1.7c-0.4-0.4-0.9-0.2-2.1,0.9c-1.4,1.3-1.6,1.3-2,0.7c-0.3-0.4-0.7-0.7-1-0.7
            c-0.5,0-2,2.2-2.3,3.4c-0.2,1-4.5,4-5.1,3.7c-0.2-0.1-0.3-1.1-0.2-2.3c0.1-1.2-0.1-2.1-0.3-2.1s-0.3-0.6-0.3-1.4
            c0.1-1.2,0.4-1.5,1.4-1.7c1.1-0.2,1.3-0.2,1,0.4c-0.4,1.1,0.7,1.4,1.6,0.4c0.5-0.5,0.9-0.7,1.1-0.5c0.3,0.4,2.1,0.2,2.1-0.3
            c0-0.4-2.3-2.2-2.7-2.1c-0.2,0-0.7,0-1.1-0.1c-1.3-0.3-0.5-0.8,0.9-0.6c2.3,0.4,4.4,0.3,4.6-0.2c0.1-0.3-0.1-0.5-0.5-0.5
            s-0.9-0.3-1.2-0.6s-0.8-0.5-1-0.4c-0.2,0.1-0.4,0.1-0.4-0.1c0-0.2,0.6-0.7,1.4-1.1c1.4-0.8,1.8-1.4,0.9-1.4c-0.8,0-3.9,1.2-4.3,1.7
            c-0.2,0.3-0.3,0.1-0.1-0.4c0.2-0.5,0.1-0.9-0.2-1.1c-0.5-0.3-2.4,2.2-2.4,3.1c0,0.3-0.1,0.5-0.3,0.4s-0.6,0-0.9,0.4
            c-0.5,0.6-0.6,0.4-0.4-1.2c0.2-1.5,0.6-2.3,2.3-3.9c1.1-1.1,2.1-2.3,2.1-2.6c0-0.9-2.3-0.3-2.8,0.7c-0.8,1.7-1.6,1.1-1.4-1
            c0.1-1.5,0-2.1-0.8-2.8l-1-0.9l-0.1,0.9c0,0.5-0.1,2.1-0.1,3.5l-0.1,2.5l-1.7-1.5c-2-1.7-2.2-1.8-2.2-0.6c0,0.5,0.8,1.6,1.8,2.5
            c1.5,1.4,1.8,1.9,1.9,3.8c0.1,1.4-0.1,2.1-0.4,1.9c-0.3-0.1-0.5-0.5-0.5-0.8c0-0.3-0.2-0.6-0.5-0.6s-0.5-0.7-0.5-1.5
            c0-1.7-1.2-2.9-1.9-2c-0.2,0.3-0.3,0.8-0.2,1c0.2,0.6-1.1,0.2-2-0.5c-0.3-0.3-0.9-0.5-1.2-0.5c-1.2,0-1,1.1,0.5,2.5
            c1.8,1.7,1.9,2.1,0.7,2.3c-0.6,0.1-0.8,0.4-0.6,0.9c0.3,0.8,1.5,1,2.3,0.3c0.6-0.5,0.6-0.5,0.7,1c0.1,1.2,0,1.2-1.6,0.5
            c-1.5-0.7-1.8-0.7-1.8,0.2c0,0.4,0.7,1.2,1.5,1.7c1.1,0.7,1.2,0.9,0.5,0.8c-0.6-0.1-1.1,0-1.3,0.4c-0.4,0.9-0.7,0.8-3.8-0.9
            c-1.5-0.8-3-1.4-3.2-1.3c-1,0.3-0.4,1.8,1,2.4l1.4,0.6L25,19.7c-0.7,0.1-1.3,0.4-1.5,0.7c-0.3,0.6,0.9,1.1,1.6,0.8
            c0.2-0.1,0.4,0,0.4,0.2s0.4,0.4,0.8,0.4c0.6,0,0.6,0.1,0.2,0.2c-0.5,0.2-0.4,0.4,0.4,0.9l1.1,0.7L26,23.9c-2,0.3-2.4,0.9-1.3,1.7
            c0.4,0.3,0.9,0.3,1.4,0.1c0.9-0.4,2.5-0.2,2.5,0.3c0,0.2,0.4,0.3,0.9,0.3c0.5,0,0.9-0.2,0.9-0.4c0-0.2,0.5-0.4,1-0.4l1,0l-1.1,0.8
            c-0.9,0.6-1,0.9-0.5,1.1c0.7,0.4,1.9,0.1,2.5-0.5c0.2-0.2,0.3,0.1,0.1,0.7c-0.2,0.9-0.1,1.1,0.6,1.1c0.5,0,0.9-0.2,1-0.5
            c0-0.3,0.1-0.3,0.3,0.1c0.2,0.4,0.4,0.3,0.8-0.4l0.6-0.9l0.6,1.1c0.3,0.6,0.4,1.2,0.2,1.3c-0.2,0.2-1.8,0.3-3.7,0.4
            c-3.1,0.1-3.5,0.1-5.5-1c-2-1.1-3.5-1.3-3.5-0.4c0,0.2,0.6,0.6,1.3,0.9l1.3,0.6L26,29.6c-1.6-0.2-4.3-1.4-5.5-2.4
            c-0.3-0.3-1-0.5-1.5-0.5c-0.9,0-1.2,0.7-0.4,1.4c0.3,0.2-0.4,0.4-1.9,0.5c-1.3,0.1-2.5,0.2-2.7,0.3c-1.5,0.8,2.2,2.2,4.9,1.9
            l1.9-0.2l-1.3,0.6c-0.8,0.4-1.2,0.9-1.2,1.3c0.2,0.9,2.2,0.6,3.5-0.6c0.6-0.5,1.4-0.9,1.8-0.8c0.6,0.1,0.6,0.3-0.4,0.6
            c-1.6,0.5-2,1.2-1.1,1.5c0.4,0.1,0.6,0.5,0.5,0.7c-0.1,0.3,0.1,0.6,0.4,0.7c0.4,0.1,0.7,0.1,0.7-0.1c0-0.3,1.5-0.9,2.6-1
            c0.3,0,1-0.4,1.5-0.8s1-0.6,1-0.4c0,0.4-1,1.2-2.2,1.7c-0.6,0.3-1,0.6-1,0.8c0,0.7,1.4,0.8,2.3,0.2c0.8-0.6,0.9-0.6,0.6,0.1
            c-0.4,1.1,0.6,1,1.5-0.2c0.6-0.7,0.9-0.9,1.2-0.5c0.3,0.4,0.5,0.4,0.8,0c0.2-0.3,0.8-0.5,1.3-0.4c1.9,0.2,4.3-1.2,4.4-2.5
            c0-0.7,0.1-0.7,0.4,0.2c0.3,0.8,0,1.2-1.3,2.2c-0.9,0.7-2.9,1.8-4.5,2.5l-2.8,1.3L27,36.8c-1.2-0.5-2.5-1-2.8-1
            c-0.8-0.1-0.7,0.6,0.2,1.5c0.7,0.7,0.7,0.7,0,0.3c-0.4-0.3-1-0.4-1.2-0.3c-0.2,0.1-1,0-1.7-0.3c-1.7-0.7-2.2-0.7-1.9,0.1
            c0.2,0.5,0,0.7-1.1,0.6c-0.8,0-1.5-0.1-1.6-0.3c-0.6-0.5-2,0.2-2,1c0,0.6,0.2,0.7,1,0.6c0.9-0.2,0.9-0.2,0.2,0.5
            c-0.8,0.8-0.7,0.9,1.1,0.8c0.8-0.1,1,0.1,0.7,0.6c-0.2,0.5-0.1,0.6,0.9,0.5c1-0.2,1.1-0.1,0.9,0.5c-0.2,0.8,0,0.9,1.2,0.4
            c1.1-0.5,2.6,1.1,1.6,1.8c-0.5,0.4-0.7,0.4-0.9,0c-0.1-0.3-1-0.6-1.9-0.6c-0.9,0-1.5,0.1-1.4,0.3c0.1,0.2-0.2,0.2-0.7,0.1
            c-1.2-0.3-1.2,0.3-0.1,0.9c0.6,0.3,0.8,0.7,0.6,1.4c-0.3,1.2-0.3,1.2-2,0c-0.8-0.5-1.7-1-2-1c-0.8,0-0.8,0.2-0.2,1.1
            c0.5,0.8,0.2,0.8-3.3,0.2c-1.1-0.2-1.7-0.1-1.7,0.1c0,0.5,2.4,1.6,3.5,1.6c0.6,0,0.7,0.1,0.2,0.6c-0.5,0.5-0.4,0.6,0.1,0.8
            c0.4,0.1,0.9,0.2,1.1,0.1c1-0.2,1.6,0.1,1.5,0.5c-0.1,0.3,0.4,0.5,1.2,0.5c1,0,1.3,0.2,1.3,0.8c0,0.8,0.1,0.8,0.9-0.1
            c0.7-0.7,0.9-0.8,0.9-0.3c0,0.4,0.2,0.5,0.5,0.4c0.3-0.1,0.7,0.2,0.9,0.8c0.2,0.5,0.8,1.1,1.2,1.2s0.7,0.5,0.7,0.8
            c0,0.3,0.3,0.5,0.7,0.5s1,0.3,1.3,0.7c0.6,0.6,0.7,0.6,1.7-0.1l1.1-0.8l-0.8,0.8c-0.5,0.5-2,1.1-4,1.4c-4.1,0.8-5,0.8-6.7-0.1
            c-1.5-0.8-2.3-0.7-1.9,0.4c0.2,0.6,0.1,0.7-1,0.7c-0.7,0-1.5-0.2-1.8-0.4c-0.3-0.3-0.8-0.2-1.4,0.2c-0.9,0.5-0.8,0.6,0.6,1.3
            c1.1,0.5,1.4,0.9,1.2,1.4c-0.2,0.5,0,0.7,0.4,0.6c1.3-0.2,1.9,0,1.6,0.6c-0.4,1,1.2,1.4,2.5,0.7c0.8-0.5,1-0.5,0.5-0.1
            c-0.8,0.8,0,1.7,1.2,1.3c1.7-0.5,2.2,0.3,0.5,0.8c-2.2,0.7-4.4,0.7-5.2,0c-0.9-0.8-2.3-0.8-2,0c0.2,0.5-0.1,0.5-1.8,0.3
            c-2.5-0.3-2.8,0.4-0.5,1c1.1,0.3,1.5,0.7,1.4,1.1c-0.2,0.8,1.2,1.2,2.3,0.7c0.6-0.3,0.8-0.2,0.8,0.6c0,0.8,0.2,0.9,1,0.7
            c0.8-0.2,0.9-0.1,0.7,0.5c-0.3,0.5-0.1,0.7,0.6,0.5c0.5-0.1,0.9,0,0.9,0.1c0,0.7,1,0.3,2.2-0.8c1.5-1.3,2.4-1.6,3.4-1.1
            c1.3,0.5,0.9,1-0.6,0.8c-1.6-0.2-1.8,0.4-0.7,1.8c0.7,0.8,0.7,0.9-0.2,0.9c-0.5,0-1.2,0.3-1.6,0.6s-1,0.6-1.4,0.6
            c-0.4,0-0.8,0.2-1,0.4c-0.1,0.2-1.1,0.3-2.1,0.3c-1,0-2.1,0.1-2.4,0.3c-0.3,0.2-1.3,0.3-2.1,0.2C9.2,73.8,9,74,8.8,74.7
            c-0.1,0.6-0.5,0.9-1.3,0.9c-0.6,0-1.4,0.1-1.6,0.1c-0.3,0.1-0.8,0.1-1.3,0c-0.4,0-0.8,0.1-0.8,0.3c0,0.5,2.5,1.7,3.7,1.7
            c1,0,1,0,0.2,0.8C7,79.2,7,79.2,8.2,79.2c0.9,0,1.1,0.1,0.9,0.6c-0.2,0.5,0,0.6,1.1,0.3c0.7-0.1,1.4-0.3,1.6-0.3
            c1.4,0,1.8,0.2,1.6,0.6c-0.5,1.1,0.7,1,1.4,0c0.7-1,0.7-1,0.7-0.2c0,0.5,0.2,0.9,0.4,0.9c2.8,0.3,3.3,0.2,3.8-0.9l0.6-1.2l0.4,0.9
            L21,81l0.9-1c0.9-1,0.9-1,0.9-0.1c0,1.2,0.8,1.1,1.2-0.1c0.2-0.5,0.5-1,0.7-1s0.3,0.2,0.1,0.4c-0.2,0.3,0.1,0.3,1.2,0.2
            c1.1-0.2,1.5-0.2,1.3,0.2c-0.3,0.7-3.2,1.9-4.6,1.9c-0.7,0-1.3,0.2-1.4,0.5c-0.1,0.3-1,0.5-2.3,0.4c-1.2,0-2.1,0.1-2.1,0.3
            c0,0.7,1.6,1.5,2.9,1.4c0.8-0.1,1.4,0,1.4,0.2c0.1,0.6-2.6,1-9.1,1.2c-7.4,0.2-10.4,0.5-10.4,0.9c0,0.2-0.5,0.2-1.2,0.1
            c-0.1,0-0.3,0-0.4,0v1c0.5,0.3,1.3,0.5,2,0.5c0.5,0,1,0.2,1,0.4c0,0.2-0.2,0.4-0.5,0.4c-0.3,0-0.9,0.4-1.5,0.8l-1,0.8v0l1.5-0.2
            c1-0.1,1.5,0,1.5,0.3c0,0.3,0.4,0.4,0.9,0.3c0.5-0.1,0.9,0,0.9,0.2c0,0.6,1.2,0.5,1.8-0.1c0.3-0.3,0.8-0.6,1-0.6
            c0.3,0,0.1,0.3-0.3,0.7s-0.8,0.8-0.8,1c0,0.4,1.8,0.3,2.1-0.1c0.5-0.6,1.1-0.4,1.4,0.4c0.4,1,0.9,1,2.6,0l1.3-0.8l-0.3,1.2
            c-0.3,1.5,0.5,1.6,2.4,0.3c1.2-0.8,1.3-0.8,0.8,0c-0.6,0.9-0.3,1.3,0.7,1c0.4-0.1,1,0,1.3,0.3c0.5,0.3,0.7,0.3,0.7,0
            c0-0.2,0.3-0.4,0.7-0.4s0.7,0.2,0.7,0.5c0,0.4,0.4,0.5,1.3,0.4c4.8-0.5-1.4,1.9-7,2.6c-3.6,0.5-4,0.5-5.2-0.2
            c-0.7-0.4-1.5-0.7-1.9-0.7c-1,0-0.6,0.8,0.5,1.2c0.8,0.3,0.5,0.3-1,0.1c-1.1-0.1-2.6-0.2-3.2-0.2c-0.6,0-2.2-0.2-3.4-0.5
            C0.6,97.1,0.3,97,0,96.9V98c0.8,0.4,1.9,0.8,2.6,0.9l2,0.3l-1.7,0c-1.2,0-1.7,0.2-1.7,0.6c0,0.3,0.4,0.6,0.8,0.6
            c0.4,0,1,0.1,1.3,0.1c0.3,0,0.8,0.1,1.1,0.1c0.5,0,0.4,0.2-0.2,0.6c-1.1,0.7-0.6,1.2,0.7,0.6c0.8-0.4,1-0.3,1,0.2
            c0,0.5,0.3,0.6,1.5,0.5c0.8-0.1,1.9-0.3,2.4-0.5c0.9-0.3,0.9-0.3,0,0.3c-0.9,0.6-0.7,0.8,0.8,0.6c0.5,0,0.8,0.2,0.8,0.5
            c0,0.8,0.4,0.8,1.5-0.3l0.9-0.9l-0.7,1c-0.4,0.6-0.7,1.2-0.7,1.4c0,0.6,2.3,0.2,3.3-0.7c0.9-0.7,0.9-0.7,0.6,0.3
            c-0.5,1.3-1.1,1.6-5.3,2.7c-3.5,0.9-3.7,0.9-5.6,0.3c-2.1-0.7-4.9-0.9-4.9-0.3c0,0.2,0.2,0.5,0.5,0.8c0.3,0.2,0,0.3-0.7,0.1v7.7
            c0,0,0.1-0.1,0.2-0.1c0.5-0.3,0.9-0.6,0.9-0.8c0-0.2,0.4,0,0.8,0.4c0.9,0.7,1.1,1.6,0.4,1.6c-0.2,0-0.3,0.2-0.1,0.4
            c0.2,0.3-0.1,0.4-1.1,0.2c-0.5-0.1-0.9-0.1-1.2-0.1v2l1.3-0.1L0,120v1.6c0.2-0.1,0.5-0.1,0.6-0.1c0.4-0.1,0.4,0,0.1,0.1
            c-1.2,0.3-0.6,1,0.7,0.7c0.9-0.2,1.1-0.1,0.6,0.1c-1.2,0.7-0.1,0.9,1.3,0.2c0.8-0.3,1.4-0.5,1.4-0.3c0,0.2-0.3,0.4-0.6,0.5
            s-0.4,0.3-0.2,0.5c0.2,0.2,1,0.1,1.7-0.1c1.1-0.3,1.3-0.3,1.1,0.1c-0.2,0.4,0,0.5,0.6,0.3c0.7-0.2,0.8-0.2,0.3,0.3
            c-0.5,0.4-2.1,0.5-7.3,0.5c-0.1,0-0.3,0-0.4,0v7c0.1,0.2,0.2,0.3,0.3,0.4c0.4,0.3,3.1-1,3.1-1.5c0-0.2,0.2-0.2,0.4-0.1
            c0.3,0.1,0.3,0.6,0,1.2c-0.2,0.5-0.4,1.1-0.4,1.4c0,0.5,2.2-0.8,4.4-2.6c1.6-1.4,1.9-1.1,0.3,0.3c-0.4,0.4-0.5,1-0.4,1.3
            c0.3,0.6,0.4,0.5,1.5-0.3l1.2-0.9l-0.2,1c-0.1,0.9-0.5,1-3.8,1.5c-2.4,0.3-3.9,0.4-4.4,0.1c-0.5-0.3-1.3-0.5-2-0.6v7.6
            c0.1,0,0.1,0.1,0,0.2v0.7c0,0,0,0,0,0v33.7l539.5-0.1v-38.2v-7.7v-88c-0.3,0-0.6,0.1-0.9,0.1c-2.2,0.2-2.6,0.1-3-0.6
            c-0.3-0.4-0.5-0.9-0.5-1.1c0-0.3,0.2-0.4,0.5-0.4c0.3,0,0.7,0.2,1,0.5c0.8,0.8,2,1,2.8,0.5v-6.9l-1.1-0.4
            C537.3,32.1,536.1,31.7,535.8,31.6z M494,38c0.4,0,0.6,0.2,0.4,0.4c-0.4,0.5-1.1,0.5-1.1,0C493.3,38.2,493.6,38,494,38z M478,29.9
            c-0.4-0.4-1-0.8-1.3-0.8c-0.5,0-1.7-1.4-1.4-1.6c0.1,0,0.2-0.1,0.3,0c0.8,0.1,2.9,1.2,3.2,1.9C479.3,30.7,479,30.9,478,29.9z
             M479,26.6c-0.2,0-0.8-1.1-1-2c-0.1-0.4-0.5-1-0.8-1.3c-0.4-0.3-0.6-0.8-0.6-1.1c0-0.1,0-0.1,0.1-0.1c0.2,0,0.7,0.3,1.2,0.8
            c0.9,0.9,1.3,1.6,1.3,2.5C479.2,26,479.1,26.6,479,26.6z M428.8,72.1c0.1,0.5,0.3,0.8,0.4,1.3c-0.5-0.2-0.8-0.4-1.3-0.6
            C428.2,72.6,428.4,72.4,428.8,72.1z M422.1,52.2c-0.1,0.6-0.2,1.1-0.3,1.7C421.1,53.1,421.1,52.8,422.1,52.2z M407.4,93.8
            c0.2-0.3,0.5-0.7,0.6-1c0.2-0.3,0.2-0.7,0.4-1.1c0.8,0.7,0.7,0.9-0.1,1.4c0.2,0.3,0.5,0.5,0.8,0.9
            C408.4,93.9,407.9,93.9,407.4,93.8z M406.8,105.1c-0.3-0.8-0.5-1.5,0.3-2c0.5-0.3,0.8-0.8,1.3-1.2c0.4,0.9-1.1,0.8-0.9,1.7
            c0.3,0,0.6-0.1,1.1-0.1C408,104.1,407.4,104.5,406.8,105.1z M405.1,119.4c0.1-0.3,0.1-0.7,0.2-1c0.1-0.2,0.3-0.4,0.4-0.6
            c0.1,0.1,0.2,0.2,0.3,0.2C405.7,118.5,405.4,119,405.1,119.4z M391.3,141.7c0.4-1.1,0.6-1.3,1.8-1.2
            C392.5,140.9,391.9,141.3,391.3,141.7z M135.6,121.1C135.6,121.1,135.6,121.1,135.6,121.1c0.2,0,0.6,0.1,0.9,0.3
            c0.3,0.1,0.3,0.3,0.2,0.3c-0.2,0-0.5-0.1-0.8-0.3C135.6,121.2,135.5,121.1,135.6,121.1z M135.2,114.5c0.1,0,0.1-0.1,0.3-0.1
            c0.1,0,0.2,0,0.4,0.1c0.3,0.1,0.2,0.1-0.2,0.2C135.3,114.6,135.1,114.6,135.2,114.5z M128.3,112.9c0.4,0,0.7,0,0.9,0.1
            c0.4,0.1,0.2,0.2-0.7,0.2c-0.8,0-1.4,0-1.4-0.1C127.1,113,127.7,112.9,128.3,112.9z M127.4,98.2c0.2,0,0.3,0.1,0.3,0.3
            c0,0.3-0.2,0.3-0.5,0C127.2,98.3,127.2,98.2,127.4,98.2z M117.6,74.8c0.3,0,0.4,0.1,0.3,0.3c-0.3,0.3-0.8,0.3-0.8,0
            C117.2,74.9,117.4,74.8,117.6,74.8z M106,68.9c-0.3-0.3-0.8-0.6-1-0.6c-0.4,0-1.2-1-1-1.2c0,0,0.1,0,0.2,0c0.6,0,2.1,0.9,2.3,1.4
            C107,69.4,106.7,69.6,106,68.9z M106.7,66.4c-0.2,0-0.6-0.8-0.7-1.5c-0.1-0.3-0.3-0.7-0.6-1c-0.3-0.2-0.5-0.6-0.5-0.8
            c0,0,0-0.1,0.1-0.1c0.1,0,0.5,0.2,0.9,0.6c0.7,0.6,1,1.2,1,1.8C106.9,66,106.8,66.4,106.7,66.4z M84.5,64c0.1,0.5,0.3,0.8,0.4,1.3
            c-0.5-0.2-0.8-0.4-1.3-0.6C83.9,64.5,84.2,64.3,84.5,64z M77.8,44.1c-0.1,0.6-0.2,1.1-0.3,1.7C76.8,45,76.8,44.7,77.8,44.1z
             M52.5,30.2c0.4,0,0.6,0.2,0.4,0.4c-0.4,0.5-1.2,0.5-1.2,0C51.8,30.4,52.1,30.2,52.5,30.2z M35.8,21.8c-0.5-0.4-1.1-0.8-1.4-0.8
            c-0.5,0-1.8-1.5-1.5-1.7c0.1,0,0.2-0.1,0.3,0c0.9,0.1,3,1.3,3.3,2C37.2,22.6,36.8,22.8,35.8,21.8z M36.8,18.3
            c-0.2,0-0.8-1.2-1.1-2.1c-0.1-0.4-0.5-1-0.8-1.4c-0.4-0.3-0.7-0.9-0.7-1.2c0-0.1,0-0.1,0.1-0.1c0.2,0,0.7,0.3,1.3,0.9
            c0.9,0.9,1.4,1.7,1.4,2.6C37,17.7,36.9,18.3,36.8,18.3z M11.2,132.5c-0.6,0-0.6-0.3,0-0.6c0.1,0,0.1-0.1,0.2-0.1
            c0.2,0,0.3,0.1,0.3,0.2C11.7,132.3,11.5,132.5,11.2,132.5z M13.3,117.3c-0.9,0.4-2.1,0.5-3.3,0.4c-1.1-0.1-1.8,0-1.7,0.2
            c0.4,0.5-0.3,0.4-1.7-0.2c-0.7-0.3-1.3-0.4-1.4-0.2c-0.1,0.2-0.5,0.3-1,0.1c-0.8-0.2-0.7-0.3,0.2-1.2l1-0.9l1.1,0.9l1,0.9l0.8-1
            c0.7-0.9,0.8-0.9,1.2-0.3c0.3,0.5,0.6,0.6,0.8,0.2c0.3-0.3,0.4-0.2,0.7,0.3c0.3,0.8,1.2,1.2,1.2,0.4c0-0.2,0.6-0.4,1.3-0.4h1.3
            L13.3,117.3z M15.9,116.4c-0.8,0.2-0.9,0.1-0.6-0.2c0.2-0.2,0.5-0.3,0.8-0.3c0.1,0,0.2,0,0.3,0C16.7,116.1,16.5,116.2,15.9,116.4z
             M26.8,69.2c-1.7,0.8-2.6,1-2.6,0.6c0-0.2,3.2-1.4,3.8-1.4C28.3,68.4,27.7,68.8,26.8,69.2z M31.2,44.9c-0.7,0.2-2.5,0.5-3.9,0.6
            c-2.3,0.2-2.7,0.1-3.1-0.6c-0.3-0.4-0.5-1-0.5-1.2c0-0.3,0.2-0.4,0.5-0.4c0.3,0,0.7,0.2,1,0.5c0.9,1,2.5,1.1,3.3,0.3
            c0.8-0.7,1.8-0.8,1.3,0c-0.1,0.2,0.1,0.4,0.4,0.4s0.8-0.2,1-0.4c0.4-0.5,1.2-0.5,1.2,0C32.4,44.3,31.9,44.7,31.2,44.9z M33.8,43.9
            c-0.3,0.1-0.5,0.1-0.5-0.2c0-0.2,0.2-0.4,0.5-0.4c0.3,0,0.5,0.1,0.5,0.2C34.3,43.6,34.1,43.8,33.8,43.9z M36.1,43.2
            c-0.3,0.1-0.5,0.1-0.5-0.2c0-0.2,0.2-0.4,0.5-0.4c0.3,0,0.5,0.1,0.5,0.2C36.6,42.8,36.4,43,36.1,43.2z M37.9,42.2
            c-0.6,0-0.6-0.3,0-0.6c0.1,0,0.1-0.1,0.2-0.1c0.2,0,0.3,0.1,0.3,0.2C38.4,42,38.2,42.2,37.9,42.2z M46.7,29.1
            c0-0.3,0.2-0.3,0.5-0.2c0.4,0.2,0.3,0.4-0.3,0.8c-1.2,0.7-1.6,0.6-1.6-0.3c0-0.4,0-0.6,0.2-0.6c0.1,0,0.3,0.1,0.5,0.3
            C46.5,29.4,46.7,29.4,46.7,29.1z M40.3,25.1c0.1-0.8,0.4-0.9,1.9-0.7c1.3,0.1,1.7,0,1.7-0.5c0-0.3,0.3-0.6,0.7-0.6
            c0.4,0,0.7-0.2,0.7-0.5c0-0.3,0.2-0.4,0.5-0.4c0.1,0,0.2,0,0.4,0c0.8,0.2,0.6,0.4-1.2,1.5c-1.2,0.7-2.5,1.4-3,1.4
            c-0.5,0-0.9,0.2-0.9,0.3S40.9,26,40.7,26C40.4,26,40.2,25.6,40.3,25.1z M41.6,28.3c0.6,0.2,1.6,0.3,2.2,0.2
            c0.6-0.1,1.1-0.1,1.1,0.2c0,0.2-0.2,0.4-0.4,0.4c-0.2,0-0.7,0.1-1.1,0.2c-0.4,0.1-1.1-0.2-1.8-0.6l-1.1-0.8L41.6,28.3z M42,43.6
            c-0.1,0.4-0.2,0.2-0.2-0.5c0-0.5,0-0.8,0.1-0.8c0,0,0.1,0,0.1,0.1C42.1,42.7,42.1,43.3,42,43.6z M41.5,40c-0.5-0.4-0.3-3.6,0.2-3.6
            c0.3,0,0.5,0.9,0.5,1.9C42.1,40.3,42,40.5,41.5,40z M53.1,66.1c0-0.3-0.3-0.8-0.6-1.1c-0.4-0.3-0.4-0.5,0-0.5
            c0.3,0,0.6,0.3,0.8,0.6c0.2,0.4,0.8,0.6,1.8,0.5c0.8,0,2,0.1,2.5,0.2c0.9,0.2,1,0.1,1-0.5v-0.8l1.5,0.7c0.1,0.1,0.1,0.2,0.2,0.3
            c0.4,0.3,0.9,0.5,1.4,0.8c-0.5,0.2-1,0.4-1.4,0.7c-0.2,0.1-0.2,0.4-0.3,0.6c0.2,0.1,0.4,0.2,0.7,0.2c0.3,0,0.5-0.1,0.9-0.2
            c-0.2,0.4-0.4,0.7-0.5,0.9C57.8,68.7,53.1,67.4,53.1,66.1z M61.8,64.8c0,0,0,0.1,0,0.1c0,0,0,0,0,0C61.7,64.9,61.8,64.8,61.8,64.8z
             M63.6,111c-0.1-0.1-0.2-0.2-0.3-0.2c0.1-0.1,0.2-0.2,0.3-0.3c0.1,0.2,0.2,0.5,0.2,0.7C63.8,111.1,63.7,111,63.6,111z M64.7,79
            c-2-1.2-2.2-1.2-2.5-0.3c-0.3-0.1-0.6-0.3-0.9-0.4c0.1-0.1,0.1-0.3,0-0.6c-0.2-0.7-0.2-0.8,0.5-0.3c1,0.7,2.4,1.1,2.4,0.7
            c0-0.2,0.4-0.2,0.8-0.2C64.9,78.3,64.8,78.7,64.7,79z M62.9,64.7c0.1,0,0.1,0,0.2,0c0,0.1-0.1,0.2-0.1,0.2
            C62.9,64.8,62.9,64.8,62.9,64.7z M65.1,65.9c-0.2-0.4-0.4-0.8-0.7-1.2c0.5,0,1,0.1,1.4,0.2c0.3,0,0.9,0,1.5-0.2c1-0.3,1-0.3,0.3-1
            c-0.1-0.1-0.2-0.2-0.3-0.3c0.6,0,1.2,0,1.8-0.1c0.2,0,0.4-0.1,0.5-0.1c0,0.6-0.1,1.1-0.1,1.7c-0.4,0.2-1.3-0.1-1.7,0.7
            c0.3,0.1,0.5,0.3,0.7,0.4c-0.7,0.6-1.4,0.5-1.9-0.2c-0.1-0.2-0.3-0.3-0.5-0.5C65.5,64.9,65.3,64.9,65.1,65.9z M66.5,63.8
            c0.3,0,0.5,0.2,0.5,0.4c0,0.5-0.3,0.5-0.7,0C66.1,64,66.2,63.8,66.5,63.8z M68.6,61.5c0.1,0,0.1-0.1,0.2-0.1c0,0.1,0,0.2,0.1,0.3
            C68.8,61.6,68.7,61.5,68.6,61.5z M70,68.5c-0.1,0-0.2,0.1-0.3,0.1c-0.2-0.3-0.4-0.7-0.7-1.1c0.3-0.1,0.5-0.2,0.7-0.3
            C69.8,67.6,69.9,68.1,70,68.5z M68,76.6c-0.2-0.2-0.6-0.5-1.2-0.9l-0.6-0.4c0.3-0.1,0.5-0.2,0.8-0.4l0.6,0.1
            C67.8,75.6,67.9,76.1,68,76.6z M65.7,74.9l-0.3-0.2l0.4,0.1C65.8,74.8,65.8,74.9,65.7,74.9z M67.1,78.1c-1-0.1-0.8,0.5-0.7,1.1
            c0,0.2,0.1,0.4,0.2,0.6c-0.2,0-0.3,0-0.5,0c-0.2-0.3-0.2-1-0.1-1.9c0,0,0-0.1,0-0.1c0,0,0-0.1,0-0.1c0.5,0,0.9,0,1.4,0
            c0,0.1,0.1,0.1,0.1,0.2C67.4,77.9,67.2,78.1,67.1,78.1z M68.5,79.4c-0.1-0.2-0.4-0.4-0.6-0.7c0-0.1,0-0.2,0-0.3
            c0.7,0,1.4-0.1,2.2-0.1c0,0.1,0,0.2,0.1,0.3C69.6,78.9,69.1,79.1,68.5,79.4z M70.6,54c-0.4-0.1-0.9-0.3-1.3-0.4
            c-0.3-0.1-0.5,0-0.8,0.1c0.1,0.3,0.2,0.6,0.4,0.8c0.3,0.3,0.6,0.5,1,0.7c-0.2,0.2-0.4,0.3-0.6,0.5c-0.8-0.7-1.1-1.9-2.1-2.4
            c-0.1,0-0.2,0.1-0.3,0.1c0.2,0.6,0.4,1.1,0.7,1.8c-1.2-0.7-2.3-1.5-3.7-1.3c-0.1,0.1-0.2,0.2-0.3,0.4c0.4,0.2,0.8,0.5,1.2,0.7
            c-0.6,0.7-0.5,0.9,0,1.3c0.4,0.3,0.8,0.6,1.1,0.9c-0.7,0.4-2,0.6-3.3,0.6c-1.8,0-2.1-0.1-1.3-0.3c0.9-0.3,1-0.6,0.6-2.1
            c0-0.1-0.7,0.2-1.6,0.7c-0.9,0.4-2.3,0.8-3.1,0.8c-2.9,0-7.8-1.6-11-3.6c-1.2-0.7-1-0.9,0.4-0.3c0.7,0.3,0.9,0.3,0.9-0.3
            c0-0.7,0-0.7,0.5,0c0.3,0.4,0.7,0.6,0.9,0.5c0.2-0.1,0.9,0.1,1.6,0.4c1.2,0.6,1.2,0.6,1.2-0.5c0-0.6,0.2-0.9,0.3-0.7
            c0.4,0.5,2.1,1.3,2.8,1.3c0.3,0,0.5-0.4,0.5-0.9c0-0.8,0.1-0.8,0.4,0.1c0.2,0.5,0.4,0.9,0.5,0.8c0.1-0.1,0.6,0,1.2,0.3
            c0.8,0.3,1.1,0.3,1.6-0.3c0.3-0.4,0.8-0.6,1-0.5c0.2,0.1,0.3-0.2,0.1-0.8c-0.3-1-0.2-1,1-0.6c1.5,0.5,2,0.2,1.2-0.6
            c-0.5-0.5-0.4-0.6,0.2-0.6c0.8,0,0.8,0,0-0.7c-0.4-0.4-0.6-0.8-0.4-1c0.2-0.1,0.8,0.1,1.2,0.5c0.7,0.6,1.2,0.7,2.9,0.4
            c0.1,0,0-0.3-0.3-0.5c-0.6-0.6-0.2-1,0.9-1c0,0,0,0,0.1,0c0.1,0,0.2,0.1,0.3,0.1c-0.4,0.6-0.4,0.8,0.2,1c0.7,0.2,1.5,0.5,2.3,0.9
            c-0.7,0.4-1.3,0.7-1.9,1c0,0.1,0.1,0.3,0.1,0.4c0.8,0.1,1.6,0.2,2.4,0.2c0,0.1,0,0.2,0,0.3c-0.5,0.1-1,0.2-1.5,0.3
            c0,0.1,0,0.2-0.1,0.3c0.6,0.3,1.3,0.6,1.9,1C70.7,53.9,70.7,54,70.6,54z M71.8,69.1c0,0,0-0.1,0.1-0.2c0.2-0.5,0.1-0.6-0.3-0.3
            c0.1-0.1,0.2-0.2,0.3-0.3c0.1,0.1,0.1,0.2,0.2,0.3C72.1,68.8,71.9,69,71.8,69.1z M81.2,55.6c0.1,0.1,0.2,0.1,0.3,0.2
            c-0.3,0.4-0.7,0.9-1,1.3c-0.1-0.1-0.2-0.1-0.3-0.2C80.6,56.5,80.9,56,81.2,55.6z M76.7,77c-0.1-0.7-0.3-1.2-0.4-1.8
            C77.2,75.7,77.2,76,76.7,77z M78.7,54.6c0-0.5,0-0.8,0-1.1c0.1,0,0.1-0.1,0.2-0.1c0.2,0.3,0.3,0.6,0.5,0.8
            C79.1,54.4,78.9,54.5,78.7,54.6z M80.1,62.2c-0.2,0-0.5,0-0.6-0.2c-0.1-0.1-0.1-0.5,0-0.6c0.1-0.1,0.5-0.2,0.7-0.1
            c0.4,0.1,0.7,0.4,1.2,0.7C80.8,62.1,80.4,62.2,80.1,62.2z M97.4,92c0.2,0,0.6,0.2,0.8,0.4c-0.8,0.3-1.6,0.6-2.4,0.6
            c0.5-0.4,0.9-0.7,1.3-1C97.2,92,97.3,92,97.4,92z M95.3,83.3c0.1,0,0.2-0.1,0.3-0.1c0.8-0.4,1.8,0.8,1.1,1.3
            c-0.4,0.3-0.5,0.3-0.6,0c-0.1-0.2-0.5-0.3-1-0.4c-0.2-0.1-0.4-0.2-0.6-0.3C94.8,83.6,95,83.4,95.3,83.3z M93.6,82.6
            c0.1,0,0.2,0,0.4,0c-0.1,0.1-0.3,0.2-0.4,0.2C93.6,82.7,93.6,82.7,93.6,82.6z M93.7,86C93.7,86,93.7,86,93.7,86
            c-0.1,0.6-0.1,0.8-0.8,0.4C93.2,86.2,93.4,86.1,93.7,86z M92.3,81.2c-0.1-0.1-0.1-0.2-0.2-0.3C92.7,80.8,92.8,80.8,92.3,81.2z
             M91.7,88.9c0,0.2,0.3,0.3,0.8,0.3c0.7,0,0.9,0.1,0.9,0.5c0,0.5,0,0.5,0.6-0.1c0.5-0.5,0.6-0.5,0.6-0.2c0,0.2,0.1,0.4,0.3,0.3
            c0.2-0.1,0.5,0.1,0.6,0.5c0.2,0.4,0.5,0.8,0.8,0.8c0.1,0,0.1,0.1,0.2,0.1c-0.6,0.3-1.1,0.6-1.7,1c-0.7,0.5-1.4,1-2.1,1.5
            c-0.1,0-0.1-0.1-0.2-0.1c0.2-0.3,0.5-0.7,0.7-1c-0.1-0.1-0.2-0.2-0.2-0.3c-1,0.4-2,0.7-3.1,1.1c-0.2-0.9,0.3-2.1-1-2.7
            c-0.1,0.6-0.2,1.1-0.3,1.5c-0.7,0.1-1.3,0.1-2,0.2c0.1-0.6,0.2-1.2,0.4-1.7c0.2-0.7,0.2-0.8-0.6-0.8c-0.2,0-0.4,0-0.6,0
            c0.4-1.3,1.3-0.3,2-0.6c0-0.2,0-0.4,0.1-0.8c0.2,0.1,0.3,0.2,0.4,0.2c0.2,0.1,0.5,0.1,0.8,0.2c-0.1-0.3-0.1-0.6-0.2-0.8
            c-0.2-0.3-0.5-0.5-0.8-0.8c0.6,0.1,1.2,0.2,1.7,0.3c0,0,0,0,0,0c-0.3,0.3-0.3,0.4,0.1,0.6c0.3,0.1,0.6,0.1,0.8,0.1
            C91.3,88.4,91.8,88.5,91.7,88.9z M92,110.4c0.2,0,0.5,0.1,0.7,0.1c0.3,0.3,0.6,0.6,0.9,0.8c-0.5,0-0.9,0.1-0.9,0.2
            c0,0.5,1.1,1.1,2,1c0.5,0,1,0,1,0.2c0.1,0.3-0.7,0.5-2.5,0.6c-0.3-0.6-0.6-1.2-1-1.7c-0.3-0.4-0.7-0.7-1.1-1c0-0.1,0-0.2,0-0.2
            C91.5,110.5,91.8,110.5,92,110.4z M91.5,98c0.4,0.2,0.8,0.3,1.1,0.5c0.3,0.1,0.5,0.2,0.8,0.3c-0.5,0.1-1,0.2-1.5,0.2
            C91.8,98.7,91.7,98.4,91.5,98z M94.3,98.5c-0.1-0.2-0.1-0.4-0.3-0.5c0,0,0,0-0.1,0C94.8,97.9,95,98.2,94.3,98.5z M89,98.6
            c0.1,0.2,0.1,0.3-0.1,0.3c-0.1-0.3-0.2-0.6-0.4-0.9c-0.1-0.1-0.1-0.3-0.2-0.4c0.1-0.1,0.2-0.1,0.3-0.2c0.2,0.3,0.3,0.6,0.5,0.9
            C88.9,98.4,88.9,98.5,89,98.6z M84.2,85.2c-0.2-0.1-0.5-0.4-0.5-0.6c0-0.6,0.1-1.3,0.1-1.9c0.5,0.3,0.9,0.5,1.4,0.7
            c0.2,0.1,0.6,0.1,0.7,0c0.1-0.2,0.1-0.5,0.1-0.7c0-0.4-0.1-0.7-0.1-1.2c0.8,0.3,1.4,0.6,2,0.9c0-0.1,0.1-0.2,0.1-0.3
            c-0.1-0.2-0.2-0.4-0.3-0.7c0.9,0.1,1.8,0.3,2.8,0.4c0.2,0.8,0.7,1.7-0.3,2.4c-0.3,0-0.5,0.1-1,0.2c0.3-0.5,0.6-0.9,0.8-1.3
            c0.1-0.2,0.1-0.5,0.1-0.8c-0.3,0-0.6,0-0.8,0.1c-0.5,0.4-0.9,0.9-1.5,1.5c0-0.2,0-0.4,0-0.5c-0.1-0.2-0.2-0.5-0.3-0.7
            c-0.2,0.2-0.4,0.3-0.6,0.5c-0.4,0.4-0.8,0.9-1.3,1.2c-0.3,0.2-0.6,0.4-0.9,0.6C84.7,85,84.4,85.2,84.2,85.2z M85.2,95
            C85.2,95,85.2,95.1,85.2,95c0,0.1-0.1,0.1-0.2,0.2C85.1,95.1,85.1,95.1,85.2,95z M86.3,100.6c-0.5-0.3-0.8-0.5-1.3-0.8
            c0.5-0.2,1-0.3,1.6-0.5c0.1,0,0.1,0.1,0.2,0.1C86.6,99.8,86.5,100.2,86.3,100.6z M87.3,102.4c0.1-0.8,0.2-1.5,0.2-2.2
            c0.1,0,0.2,0,0.3,0c0.1,0.4,0.1,0.9,0.2,1.3c0.1,0.3,0.4,0.5,0.5,0.7c0.2-0.2,0.4-0.5,0.4-0.7c0-0.2,0-0.3,0-0.5
            c0.3,0,0.6,0,0.9-0.2c0,0,0,0,0.1,0c0.2,0.5,0.4,1.1,0.7,1.6c-1.2,0.1-2.5,0.2-3.7,0.2C87.2,102.5,87.3,102.5,87.3,102.4z
             M89.1,135.8c0-0.1,0.1-0.1,0.1-0.2c0.2,0.1,0.3,0,0.3-0.2c0-0.1,0.1-0.1,0.3-0.2c0.1,0.2,0.2,0.3,0.3,0.5
            C89.8,135.7,89.4,135.8,89.1,135.8z M89.6,113.4c-0.3-0.2-0.7-0.4-1-0.6c0-0.3,0.1-0.6,0.1-0.9c0.6,0.3,1.2,1.1,1.9,0.3
            c0.3,0.4,0.6,0.7,0.9,1.1C90.9,113.4,90.3,113.4,89.6,113.4z M93.1,121c-0.6,0.3-1,0-1.3-0.4c0.3-0.2,0.8-0.4,0.8-0.5
            c0-0.5,0.2-0.7,0.5-0.8c0.1,0,0.1,0,0.2,0c0.2-0.1,0.7,0,0.9,0.2c0.3,0.2,0.5,0.2,0.5,0c0-0.2,0.2-0.3,0.5-0.3s0.5,0.2,0.5,0.4
            c0,0.2,0.1,0.3,0.4,0.3C95,120.3,94.1,120.6,93.1,121z M96.9,110.6c-0.5,0-0.9,0.2-1,0.3c0,0.1-0.2,0.2-0.5,0.2
            c-0.3-0.4-0.6-0.7-0.9-1.1c0.1-0.1,0.2-0.2,0.2-0.4l0.3-0.5c0.1,0,0.1,0,0.2,0l0.2,0.4l0.3,0.6l0.6-0.7c0.1-0.1,0.2-0.2,0.3-0.3
            c0.1,0,0.2,0.1,0.3,0.1c0,0,0,0.1,0,0.1c0,0.8,0.5,0.8,0.8,0.1c0.5,0.1,1,0.2,1.5,0.3c0,0,0.1,0,0.1,0
            C98.5,110.2,97.5,110.6,96.9,110.6z M100,92.1C100,92.1,100,92.1,100,92.1l0.2-0.2L100,92.1z M102.8,85c-0.5,0.2-1.7,0.3-2.7,0.4
            c-1.6,0.1-1.9,0.1-2.2-0.4c-0.2-0.3-0.3-0.7-0.3-0.8c0-0.2,0.2-0.3,0.4-0.3s0.5,0.1,0.7,0.4c0.7,0.7,1.7,0.8,2.3,0.2
            c0.5-0.5,1.3-0.5,0.9,0c-0.1,0.1,0,0.3,0.3,0.3c0.3,0,0.6-0.1,0.7-0.3c0.3-0.4,0.8-0.4,0.8,0C103.7,84.6,103.3,84.9,102.8,85z
             M104.6,84.3c-0.2,0.1-0.3,0-0.3-0.1c0-0.2,0.1-0.3,0.3-0.3s0.3,0.1,0.3,0.1C104.9,84.1,104.8,84.3,104.6,84.3z M106.2,83.8
            c-0.2,0.1-0.3,0-0.3-0.1s0.1-0.3,0.3-0.3c0.2,0,0.3,0.1,0.3,0.1C106.5,83.6,106.4,83.7,106.2,83.8z M107.5,83.1
            c-0.4,0-0.4-0.2,0-0.4c0,0,0.1,0,0.1,0c0.1,0,0.2,0,0.2,0.2C107.8,83,107.7,83.1,107.5,83.1z M113.6,74c0-0.2,0.2-0.2,0.4-0.1
            c0.3,0.1,0.2,0.3-0.2,0.6c-0.8,0.5-1.1,0.5-1.1-0.2c0-0.3,0-0.4,0.2-0.4c0.1,0,0.2,0.1,0.3,0.2C113.5,74.2,113.6,74.2,113.6,74z
             M109.2,71.2c0.1-0.5,0.3-0.6,1.3-0.5c0.9,0.1,1.2,0,1.2-0.3c0-0.2,0.2-0.4,0.5-0.4s0.5-0.2,0.5-0.4c0-0.2,0.1-0.3,0.4-0.3
            c0.1,0,0.2,0,0.3,0c0.5,0.1,0.4,0.3-0.8,1.1c-0.8,0.5-1.7,1-2.1,1c-0.3,0-0.6,0.1-0.6,0.2c0,0.1-0.2,0.2-0.4,0.2
            S109.1,71.6,109.2,71.2z M110,73.5c0.4,0.2,1.1,0.2,1.5,0.1c0.4-0.1,0.8,0,0.8,0.1c0,0.2-0.1,0.3-0.3,0.3c-0.2,0-0.5,0.1-0.8,0.1
            s-0.8-0.1-1.2-0.4l-0.8-0.6L110,73.5z M110.3,84.1c-0.1,0.3-0.2,0.1-0.2-0.3c0-0.3,0-0.5,0.1-0.5c0,0,0,0,0.1,0.1
            C110.4,83.5,110.4,83.9,110.3,84.1z M394.8,146.4c0.5-0.4,1.1-0.8,1.6-1.2c0.1,1.1,0.1,1.1,1.2,1c0.1,0,0.1,0,0.2,0c0,0,0,0,0,0
            L394.8,146.4z M399.5,146.3l-0.7,0c0.1-0.2,0.3-0.4,0.4-0.5c0.3-0.4,0.6-0.9,0.9-1.5c0.3,0.7,0.5,1.3,0.8,1.8L399.5,146.3z
             M404,145.2c0,0.1-0.3,0.4-0.5,0.5c-0.2,0.1-0.4,0-0.6,0c-0.1,0.1-0.3,0.1-0.4,0.2l-0.7,0.1c-0.1-0.5-0.3-1-0.5-1.4
            c0.4,0.2,0.8,0.4,1.1,0.5c0.1-0.3,0.3-0.7,0.3-1c0-0.3-0.1-0.6-0.2-0.8c0-0.2,0-0.4,0.1-0.6c0-0.1,0.3,0,0.5,0
            c0.5,0.1,1,0.2,1.5,0.3C404.2,143.5,403.4,144.1,404,145.2z M413.9,75.2c0.1,0.5,0.3,0.9,0.4,1.4c-0.1,0-0.2,0.1-0.3,0.1
            c-0.2-0.3-0.4-0.7-0.7-1.1C413.5,75.4,413.7,75.3,413.9,75.2z M411.4,86.2c-1-0.1-0.8,0.5-0.7,1.1c0.1,0.3,0.2,0.6,0.3,0.8
            c-0.7,0.2-0.9-0.7-0.6-2.4c0.5,0,1,0,1.5,0c0,0.1,0.1,0.1,0.1,0.2C411.7,86,411.5,86.2,411.4,86.2z M412.8,87.5
            c-0.1-0.2-0.4-0.4-0.6-0.7c0-0.1,0-0.2,0-0.3c0.7,0,1.4-0.1,2.2-0.1c0,0.1,0,0.2,0.1,0.3C413.9,86.9,413.4,87.2,412.8,87.5z
             M415.1,77.7c-0.1-0.1-0.1-0.2-0.2-0.2c0.4-0.4,0.9-0.7,1.3-1.1c0.1,0.1,0.1,0.2,0.2,0.3C416.2,77.3,415.6,77.6,415.1,77.7z
             M425.5,63.7c0.1,0.1,0.2,0.1,0.3,0.2c-0.3,0.4-0.7,0.9-1,1.3c-0.1-0.1-0.2-0.1-0.3-0.2C424.9,64.6,425.2,64.1,425.5,63.7z
             M421,85.1c-0.1-0.7-0.3-1.2-0.4-1.8C421.4,83.8,421.5,84.1,421,85.1z M422.9,62.7c0-0.5,0-0.8,0-1.1c0.1,0,0.1-0.1,0.2-0.1
            c0.2,0.3,0.3,0.6,0.5,0.8C423.4,62.5,423.2,62.6,422.9,62.7z M424.4,70.3c-0.2,0-0.5,0-0.6-0.2c-0.1-0.1-0.1-0.5,0-0.6
            c0.1-0.1,0.5-0.2,0.7-0.1c0.4,0.1,0.7,0.4,1.2,0.7C425.1,70.2,424.7,70.3,424.4,70.3z M435.1,107.3c0.2,0.3,0.4,0.6,0.7,0.8
            c0.1,0.1,0.4,0.1,0.6,0.1c0-0.2,0.1-0.4,0-0.5c-0.2-0.5-0.4-0.9-0.7-1.6c0.4,0.2,0.8,0.3,1.1,0.5c0.3,0.1,0.7,0.3,1,0.3
            c0.2,0,0.5-0.1,0.7-0.2c-0.1-0.2-0.2-0.5-0.3-0.6c-0.1-0.1-0.4-0.1-0.6-0.2c0.1,0,0.2-0.1,0.3-0.1c1-0.1,1.9-0.3,2.9-0.4
            c0.3,0,0.6,0.2,1,0.2c0.2,0,0.5-0.1,0.7-0.2c0.1-0.1,0-0.4-0.1-0.6c-0.3-0.4-0.7-0.8-1.1-1.3c0.6-0.2,1.3-0.5,2-0.7
            c0.1,0,0.2-0.1,0.3-0.1c0.8,0.4,1.9,0.9,2.7,1l1.9,0.3l-1.7,0c-1.2,0-1.7,0.2-1.7,0.6c0,0.3,0.3,0.6,0.8,0.6c0.4,0,1,0.1,1.2,0.1
            c0.2,0,0.7,0.1,1.1,0.1c0.5,0,0.4,0.2-0.2,0.6c-1.1,0.7-0.6,1.1,0.6,0.6c0.8-0.3,0.9-0.3,0.9,0.2c0,0.5,0.3,0.6,1.4,0.4
            c0.8-0.1,1.8-0.3,2.3-0.4c0.9-0.3,0.9-0.3,0,0.3c-0.9,0.6-0.7,0.7,0.8,0.6c0.4,0,0.8,0.2,0.8,0.5c0,0.8,0.4,0.7,1.4-0.3l0.9-0.8
            l-0.7,1c-0.4,0.6-0.7,1.2-0.7,1.4c0,0.6,2.2,0.1,3.2-0.6c0.9-0.6,0.9-0.6,0.5,0.3c-0.5,1.3-1,1.5-5.1,2.5c-3.4,0.8-3.6,0.9-5.4,0.3
            c-0.4-0.1-0.8-0.2-1.2-0.3c0.3-0.1,0.2-0.4-0.1-0.9c0.6-0.2,1.2-0.4,1.9-0.6c-0.6-1.1-0.9-1.1-3.1-0.8c0-0.4,0-0.7,0-1.1
            c-0.5,0.2-1,0.3-1.4,0.5c-0.5,0.2-0.9,0.4-1.4,0.7c-0.2-0.4-0.4-0.8-0.5-1.1c0.2-0.4,0.4-0.7,0.7-1.3c-1.3,0.1-2.2,0.7-3.1,1.4
            c0.1-1-0.4-0.7-0.8-0.5c-0.5,0.3-1,0.7-1.5,1.1c-0.2-0.7-0.1-1.5-1.1-1.8c-0.1,0.4-0.2,0.7-0.2,0.9c0,0.6,0.1,1.2,0.2,1.7
            c0.1,0.5-0.2,0.7-0.6,0.7c0-0.4,0.1-0.7,0-1c-0.1-0.3-0.3-0.6-0.4-0.9c-0.3-0.5-0.7-1-1.1-1.4C435,107.4,435.1,107.4,435.1,107.3z
             M445.9,121.5c0.2,0.3-0.1,0.3-1.1,0.2c-0.9-0.2-1.4-0.1-1.4,0.1c0,0.2-0.9,0.4-2,0.4c-1.8,0-2.3,0.2-1.7,0.8
            c-0.3-0.1-0.7-0.1-1-0.2c-0.2-0.1-0.5-0.2-0.6-0.4c-0.6-0.9-1-1.9-1.6-2.8c-0.3-0.4-0.7-0.7-1.1-1c0-0.1,0-0.2,0-0.2
            c0.6,0.3,1,0.1,1.1-0.3c0.8,0.7,1.5,1.4,2.3,2.1c0.3,0.2,0.7,0.3,1.1,0.4c0-0.4,0.1-0.8-0.1-1c-0.6-0.8-1.3-1.6-1.9-2.4
            c-0.2-0.3-0.5-0.6-0.7-0.9c0.4,0.2,0.8,0.6,1.2,0.8c-0.2,0.5,0.1,0.8,0.9,0.6c0.4-0.1,0.6,0.1,0.6,0.7c0,0.7,0.2,0.9,0.8,0.9
            c0.5,0,1.2,0.3,1.5,0.6c0.6,0.5,0.8,0.5,1.6,0.1c0.5-0.3,0.9-0.6,0.9-0.7c0-0.2,0.3,0,0.8,0.4c0.8,0.7,1.1,1.6,0.4,1.6
            C445.8,121.1,445.8,121.3,445.9,121.5z M444.4,112.5c0.2,0.1,0.1,0.2-0.1,0.2c-0.2-0.5-0.7-0.9-1.1-1.5c0.4,0.1,0.6,0.1,0.8,0.1
            c0.2,0,0.5,0.1,0.7,0.1c-0.5,0-0.8,0.1-0.8,0.3C443.9,111.9,444.2,112.3,444.4,112.5z M428,92.6c0-0.6,0.1-1.3,0.1-1.9
            c0.5,0.3,0.9,0.5,1.4,0.7c0.2,0.1,0.6,0.1,0.7,0c0.1-0.2,0.1-0.5,0.1-0.7c0-0.4-0.1-0.7-0.1-1.2c0.8,0.3,1.4,0.6,2,0.9
            c0-0.1,0.1-0.2,0.1-0.3c-0.1-0.2-0.2-0.4-0.3-0.7c0.9,0.1,1.8,0.3,2.8,0.4c0.2,0.8,0.7,1.7-0.3,2.4c-0.3,0-0.5,0.1-1,0.2
            c0.3-0.5,0.6-0.9,0.8-1.3c0.1-0.2,0.1-0.5,0.1-0.8c-0.3,0-0.6,0-0.8,0.1c-0.5,0.4-0.9,0.9-1.5,1.5c0-0.2,0-0.4,0-0.5
            c-0.1-0.2-0.2-0.5-0.3-0.7c-0.2,0.2-0.4,0.3-0.6,0.5c-0.4,0.4-0.8,0.9-1.3,1.2c-0.3,0.2-0.6,0.4-0.9,0.6c-0.2,0.1-0.5,0.4-0.7,0.3
            C428.3,93.2,428,92.9,428,92.6z M428.7,101.7c0.1,0,0.2-0.1,0.3-0.1c0.2,0.5,0.4,1,0.5,1.5c0,0-0.4,0.2-0.6,0.2
            C428.9,102.7,428.8,102.2,428.7,101.7z M429.4,107.9c0.6-0.2,1.1-0.4,1.8-0.6c-0.2,0.5-0.4,0.9-0.5,1.4
            C430.2,108.4,429.8,108.2,429.4,107.9z M431,110.7c0.3-0.1,0.5-0.2,0.6-0.2c0.1-0.8,0.2-1.5,0.2-2.2c0.1,0,0.2,0,0.3,0
            c0.1,0.4,0.1,0.9,0.2,1.3c0.1,0.3,0.4,0.5,0.5,0.7c0.2-0.2,0.4-0.5,0.4-0.7c0.1-1.2,0-2.4-0.6-3.5c-0.1-0.1-0.1-0.3-0.2-0.4
            c0.1-0.1,0.2-0.1,0.3-0.2c1,1.7,1.4,3.7,2.4,5.5c-1.2,0.5-2.4-0.6-3.5,0.4C431.6,111.2,431.3,111,431,110.7z M432.9,120.9
            c0-0.3,0.1-0.6,0.1-0.9c0.6,0.3,1.2,1.1,1.9,0.3c0.6,0.7,1.2,1.4,1.8,2.2c-0.3,0.2-1,0.6-1.6,1C434.9,122,433.9,121.5,432.9,120.9z
             M440.3,137.8c-0.1,0-0.3-0.1-0.4-0.1c0.1-0.1,0.3-0.2,0.4-0.2C440.4,137.6,440.4,137.7,440.3,137.8z M440.4,136
            c-0.6,0-1.2,0-1.8,0c0-0.1,0-0.2,0-0.4c0.6,0,1.2,0.1,1.8,0.1C440.5,135.8,440.5,135.9,440.4,136z M440.6,127.8
            c-0.4,0.1-0.7,0.3-1.1,0.4c-1.2,0-1.8,0.1-1.8,0.2c0,0.1,0.2,0.3,0.4,0.3c-0.2,0.1-0.5,0.2-0.7,0.3c-0.6,0.3-1,0-1.3-0.4
            c0.3-0.2,0.8-0.4,0.8-0.5c0-0.8,0.7-0.8,1.1-1.2c0.7-0.8,1.2-0.5,1.9-0.2c1.2,0.5,2,0.1,2.5-0.9c-1.3-0.4-2.5-0.8-3.9-1.3
            c0.5-0.2,0.8-0.3,0.9-0.5c0.2-0.3,0.4-0.7,0.6-1.1c0.1,0.1,0.2,0.2,0.3,0.3c0.4,0.3,1.4,0.4,2.8,0.2l2.1-0.2l-1.6,0.7
            c-1.1,0.5-1.6,0.9-1.4,1.3c0.2,0.4,0.5,0.5,1,0.3c0.4-0.1,1-0.3,1.4-0.3c0.4,0,0.4,0,0.1,0.1c-1.1,0.3-0.5,0.9,0.7,0.7
            c0.9-0.2,1-0.1,0.6,0.1c-1.2,0.6-0.1,0.8,1.3,0.2c0.8-0.3,1.4-0.4,1.4-0.2c0,0.2-0.2,0.4-0.6,0.5c-0.3,0.1-0.4,0.3-0.2,0.5
            c0.2,0.2,0.9,0.1,1.6-0.1c1-0.3,1.2-0.3,1,0.1c-0.2,0.4,0,0.4,0.6,0.3c0.7-0.2,0.7-0.2,0.2,0.3c-0.4,0.4-1.6,0.5-5.3,0.5
            c0,0,0,0,0-0.1c-0.1-0.2-0.8,0-1.2,0c-0.1-0.6-0.6-0.6-1.1-0.6c-0.8,0-1.5,0.1-2.3,0.2C440.9,127.7,440.8,127.8,440.6,127.8z
             M447.6,134.3c0,0.2-0.1,0.4-0.2,0.7c0,0,0,0,0,0c-0.2-0.3-0.3-0.6-0.5-0.8C447.2,134.2,447.4,134.2,447.6,134.3z M442.1,136.7
            c0.1-0.2,0-0.5,0-0.9c0.1,0.1,0.1,0.1,0.1,0.2c-0.1,0-0.1,0.1-0.1,0.1c0,0.2,0.2,0.4,0.6,0.5c0,0,0.1,0.1,0.1,0.1
            C442.7,136.8,442.4,136.8,442.1,136.7z M453.5,135.1c-0.1,0.8-0.4,1-3.7,1.4c-2.3,0.3-3.8,0.4-4.2,0.1c-0.3-0.2-0.7-0.3-1.1-0.4
            c-0.6-0.6-1.2-1.1-1.8-1.6c0.1-0.1,0.1-0.2,0.2-0.2c0.3,0.3,0.7,0.5,1,0.8c0,0.1,0.1,0.1,0.1,0.2c0,0,0.1,0,0.1,0c0,0,0,0,0,0
            c0.3,0.2,0.5,0.4,0.8,0.7c0.2-0.2,0.3-0.5,0.5-0.8c0.5,0.3,0.9,0.8,1.5,1.1c0,0,0.1,0,0.1,0c0.3,0.1,0.7,0.2,1.2,0.1
            c-0.1-0.2-0.2-0.3-0.3-0.5c0.8-0.4,2-1.3,3.2-2.3c1.6-1.3,1.8-1.1,0.3,0.3c-0.4,0.3-0.5,0.9-0.4,1.3c0.3,0.6,0.4,0.5,1.4-0.3
            l1.1-0.9L453.5,135.1z M454.5,135.9c-0.6,0-0.6-0.3,0-0.6c0.1,0,0.1-0.1,0.2-0.1c0.2,0,0.3,0.1,0.3,0.2
            C454.9,135.7,454.7,135.9,454.5,135.9z M456.5,121.3c-0.9,0.4-2,0.5-3.2,0.4c-1-0.1-1.8,0-1.6,0.2c0.3,0.5-0.3,0.4-1.7-0.2
            c-0.7-0.3-1.2-0.4-1.3-0.2c-0.1,0.2-0.5,0.2-0.9,0.1c-0.7-0.2-0.7-0.3,0.2-1.1l1-0.9l1,0.9l1,0.9l0.8-1c0.7-0.9,0.8-0.9,1.2-0.3
            c0.3,0.5,0.5,0.5,0.8,0.2c0.2-0.3,0.4-0.2,0.6,0.3c0.3,0.8,1.1,1.1,1.1,0.4c0-0.2,0.5-0.4,1.2-0.4h1.2L456.5,121.3z M458.9,120.4
            c-0.7,0.2-0.9,0.1-0.6-0.2c0.2-0.2,0.5-0.3,0.8-0.3c0.1,0,0.2,0,0.3,0C459.7,120.1,459.5,120.3,458.9,120.4z M469.4,75.3
            c-1.6,0.7-2.5,0.9-2.5,0.6c0-0.2,3-1.3,3.7-1.3C470.8,74.6,470.3,74.9,469.4,75.3z M473.6,52.1c-0.7,0.2-2.3,0.5-3.7,0.6
            c-2.2,0.2-2.6,0.1-3-0.6c-0.3-0.4-0.5-0.9-0.5-1.1c0-0.3,0.2-0.4,0.5-0.4c0.3,0,0.7,0.2,1,0.5c0.9,0.9,2.4,1.1,3.2,0.3
            c0.7-0.7,1.8-0.7,1.2,0c-0.1,0.2,0,0.3,0.4,0.3c0.4,0,0.8-0.2,0.9-0.4c0.4-0.5,1.1-0.5,1.1,0C474.8,51.5,474.2,51.9,473.6,52.1z
             M476.1,51.1c-0.2,0.1-0.4,0.1-0.4-0.2c0-0.2,0.2-0.4,0.4-0.4c0.2,0,0.4,0.1,0.4,0.2C476.5,50.8,476.3,51,476.1,51.1z M478.3,50.4
            c-0.2,0.1-0.4,0.1-0.4-0.2c0-0.2,0.2-0.4,0.4-0.4c0.2,0,0.4,0.1,0.4,0.2C478.7,50.1,478.5,50.3,478.3,50.4z M480.1,49.5
            c-0.6,0-0.6-0.3,0-0.6c0.1,0,0.1-0.1,0.2-0.1c0.2,0,0.3,0.1,0.3,0.2C480.5,49.3,480.3,49.5,480.1,49.5z M488.4,36.9
            c0-0.2,0.2-0.3,0.5-0.2c0.4,0.2,0.3,0.4-0.3,0.8c-1.1,0.7-1.5,0.6-1.5-0.3c0-0.4,0-0.6,0.2-0.6c0.1,0,0.2,0.1,0.5,0.2
            C488.3,37.2,488.4,37.3,488.4,36.9z M482.3,33.1c0.1-0.7,0.4-0.8,1.8-0.7c1.3,0.1,1.7,0,1.7-0.5c0-0.3,0.3-0.6,0.7-0.6
            c0.4,0,0.7-0.2,0.7-0.5c0-0.2,0.2-0.4,0.5-0.4c0.1,0,0.2,0,0.4,0c0.7,0.2,0.6,0.4-1.1,1.5c-1.1,0.7-2.4,1.3-2.9,1.3
            c-0.5,0-0.8,0.2-0.8,0.3c0,0.2-0.2,0.3-0.5,0.3S482.3,33.6,482.3,33.1z M483.5,36.2c0.6,0.2,1.5,0.3,2.1,0.2
            c0.6-0.1,1.1-0.1,1.1,0.1c0,0.2-0.2,0.4-0.4,0.4c-0.2,0-0.7,0.1-1,0.2c-0.3,0.1-1.1-0.2-1.7-0.6l-1.1-0.8L483.5,36.2z M483.9,50.8
            c-0.1,0.4-0.2,0.2-0.2-0.4c0-0.5,0-0.7,0.1-0.8c0,0,0.1,0,0.1,0.1C484,50,484,50.5,483.9,50.8z M507.4,70.1c0.3,0,0.5,0.2,0.5,0.4
            c0,0.5-0.3,0.5-0.7,0C507,70.3,507.1,70.1,507.4,70.1z M504.4,115.1c-0.1-0.1-0.2-0.1-0.2-0.2c0.1-0.1,0.2-0.2,0.2-0.3
            c0.1,0.1,0.1,0.1,0.2,0.2C504.6,114.9,504.5,115,504.4,115.1z M503.7,84.5c0.3,0.2,0.6,0.3,1,0.5c-0.2,0.1-0.3,0.1-0.5,0.2
            c-0.9-0.1-1.7-0.2-2.1-0.4c-1.4-0.5-1.4-0.6-0.5-0.6c0.8,0,1-0.2,0.8-0.8c-0.2-0.7-0.2-0.7,0.5-0.2c0.6,0.4,1.3,0.7,1.8,0.8
            c0,0.1,0,0.1,0,0.2c-0.3-0.1-0.5-0.3-0.7-0.3c-0.2,0-0.5,0-0.7,0.1C503.5,84.1,503.5,84.4,503.7,84.5z M505.3,83.7
            c0.1,0,0.2,0,0.3,0c0,0.1-0.1,0.2-0.1,0.4C505.4,83.9,505.4,83.8,505.3,83.7z M505.6,115.7c0-0.1,0.1-0.2,0.1-0.3
            c0-0.1,0.1-0.2,0.3-0.3c0.1,0.3,0.2,0.6,0.3,0.9C506,115.9,505.8,115.8,505.6,115.7z M507.4,90.7c-0.3,0-0.5-0.1-0.5-0.1
            c0,0,0-0.1,0.1-0.1c0,0,0,0.1,0.1,0.1c0,0,0-0.1,0.1-0.1c0.1,0,0.3-0.1,0.5-0.1C507.6,90.5,507.5,90.6,507.4,90.7z M508.4,90.8
            c0.1,0,0.2-0.1,0.3-0.1c0,0,0,0.1,0,0.1C508.6,90.8,508.5,90.8,508.4,90.8z M510,84c-0.3,0.2-0.9-0.1-1.2,0.5
            c0.2,0.1,0.3,0.2,0.5,0.3c-0.5,0.4-0.9,0.4-1.3-0.1c-0.1-0.1-0.2-0.2-0.3-0.3c-0.5-0.4-0.6-0.3-0.8,0.4c-0.2-0.4-0.4-0.7-0.6-1
            c0.4,0,0.6-0.1,0.6-0.3c0-0.1,0.1-0.1,0.1-0.2c0.2,0,0.4-0.1,0.6-0.1c0.1,0,0.2-0.1,0.3-0.1c0.2,0,0.4,0,0.5,0c0.4,0,0.7,0,1.1,0
            c0.1,0,0.3-0.1,0.4-0.1C510,83.3,510,83.6,510,84z M506.3,80.6l1.8,0.2c-0.1,0.1-0.2,0.2-0.3,0.4c-0.2-0.1-0.4-0.3-0.7-0.4
            c-0.1,0-0.3,0-0.4,0L506.3,80.6z M509.5,81.8c-0.2-0.1-0.3-0.2-0.4-0.3c-0.1-0.1-0.3-0.3-0.4-0.4c-0.1-0.1-0.2-0.2-0.3-0.3l0.2,0
            c0.5,0.1,0.9,0.1,1.2,0.1C509.6,81.1,509.4,81.3,509.5,81.8z M508.3,75.5l-1.1,0.3l1.2-0.9c0.6-0.5,1-0.8,1.1-1
            c0.2,0.1,0.4,0.2,0.6,0.2c-0.5,0.3-0.9,0.5-1.3,0.7c0,0.1,0,0.2,0.1,0.3c0.5,0,0.9,0.1,1.4,0.1C509.7,75.2,508.8,75.3,508.3,75.5z
             M512,68.2c0.1,0.1,0.2,0.3,0.3,0.6c-0.4-0.2-0.7-0.4-1-0.5c-0.2-0.1-0.4,0-0.6,0c0.1,0.2,0.1,0.5,0.2,0.6c0.4,0.4,0.8,0.7,1.3,1
            c-0.4,0.1-0.8,0.1-1.1,0.2c-0.1,0-0.3,0.3-0.2,0.4c0.1,0.2,0.2,0.4,0.3,0.6c0.1,0.2,0.2,0.5,0.3,0.7c-0.4-0.1-0.6-0.2-0.9-0.4
            c-0.2-0.1-0.4-0.3-0.6-0.5c0,0.3-0.1,0.5-0.1,0.8c0,0,0,0.1,0,0.2c-0.3,0-0.6-0.1-0.9-0.2c0.1,0.2,0.1,0.4,0.1,0.6
            c-0.5-0.2-0.9-0.4-1.4-0.6c-0.2-0.1-0.4,0.1-0.6,0.1c0.1,0.2,0.2,0.4,0.3,0.5c0.3,0.2,0.7,0.3,1.1,0.5c-0.3,0.4-0.3,0.5,0.1,0.7
            c0.2,0.1,0.4,0.1,0.6,0.2c-0.1,0-0.2,0.1-0.4,0.2c-1.2,0.6-2.1,0.5-1.4-0.1c1-0.8,0.6-1.5-0.4-0.7c-0.5,0.4-1.6,1-2.3,1.3
            c-2.7,1.1-10-0.4-10-2c0-0.3-0.2-0.8-0.5-1c-0.4-0.3-0.4-0.4,0-0.4c0.3,0,0.6,0.2,0.7,0.6c0.2,0.4,0.8,0.5,1.7,0.5
            c0.8,0,1.9,0.1,2.4,0.2c0.8,0.2,1,0.1,1-0.5v-0.8l1.5,0.7c1.1,0.5,1.6,0.6,1.8,0.3c0.2-0.2,0-0.6-0.3-0.8c-0.5-0.3,2-0.3,3.8,0.1
            c0.2,0,0.9,0,1.4-0.2c0.9-0.3,0.9-0.3,0.3-0.9c-0.6-0.6-0.6-0.7,0.4-0.9c1.3-0.3,1.5-1,0.4-1c-0.5,0-0.3-0.2,0.6-0.5
            c0.5-0.2,1.1-0.5,1.8-0.9c0.2,0.2,0.5,0.4,0.8,0.6C511.8,67.6,511.6,67.8,512,68.2z M513.1,67.2c-0.2-0.2-0.3-0.3-0.4-0.4
            c-0.1-0.1-0.2-0.2-0.4-0.3c0,0,0.1-0.1,0.1-0.1l0.4-0.3C513,66.4,513.1,66.7,513.1,67.2z M516.3,70.2c0,0.2,0.3,0.4,0.8,0.7
            c-0.3,0-0.6,0.2-1,0.2C516.2,70.7,516.3,70.5,516.3,70.2z M515.6,69.8c-0.1,0.4-0.1,0.8-0.2,1.2C514.9,70.4,514.9,70.2,515.6,69.8z
             M516.4,76.9c0-0.1-0.1-0.2-0.2-0.3c0-0.1,0-0.2,0-0.3c0,0,0.1,0,0.1-0.1c0.1,0.2,0.2,0.4,0.3,0.6
            C516.6,76.8,516.5,76.8,516.4,76.9z M517.5,78.7c-0.1,0-0.1-0.1-0.2-0.1c0.2-0.3,0.4-0.6,0.7-0.9c0.1,0.1,0.1,0.1,0.2,0.2
            C517.9,78.1,517.7,78.4,517.5,78.7z M521.9,96.4c-0.3,0.3-0.5,0.6-0.8,0.8c-0.3,0.1-0.8,0.2-1.4,0.4c0-0.1-0.1-0.1-0.1-0.2
            c0-0.4,0.1-0.9,0.1-1.3c0.3,0.2,0.6,0.4,1,0.5c0.1,0.1,0.4,0.1,0.4,0c0.1-0.1,0-0.3,0-0.5c0-0.2,0-0.5-0.1-0.7c0,0,0.1,0,0.1,0
            c0.2,0.1,0.4,0.2,0.5,0.2c-0.7,0.5-0.5,0.6,0.6,0.6C522.2,96.2,522,96.3,521.9,96.4z M519.9,89.5C519.9,89.5,519.9,89.5,519.9,89.5
            c0.2-0.2,0.5-0.2,0.7-0.2C520.4,89.4,520.2,89.5,519.9,89.5z M520.8,91c0.7,0.2,0.5,0.3-0.6,0.1c0.1-0.1,0.2-0.2,0.3-0.3
            C520.6,90.9,520.7,90.9,520.8,91z M522.5,97c0-0.2,0-0.3,0-0.3c0-0.2-0.1-0.3-0.2-0.5c0.1,0,0.1,0,0.2,0c0.2,0,0.4,0,0.6,0.2
            C523,96.5,522.7,96.7,522.5,97z M524.1,97.2c-0.2,0-0.4,0.1-0.7,0.1c0,0,0.1-0.1,0.1-0.1c0.2,0.1,0.4,0,0.9-0.4
            C524.3,96.9,524.2,97,524.1,97.2z M527.8,97.9C527.8,97.9,527.8,97.9,527.8,97.9C527.8,97.9,527.8,97.9,527.8,97.9
            C527.8,97.9,527.8,97.9,527.8,97.9z M528,97.6C528,97.6,527.9,97.6,528,97.6c-0.1-0.1-0.1-0.2-0.3-0.3c0,0-0.1,0-0.1-0.1
            C528.3,96.7,528.3,96.8,528,97.6z M527.1,90.7c-3.5,0.5-3.8,0.4-5-0.2c-0.3-0.1-0.5-0.3-0.8-0.4c0,0,0-0.1,0-0.1
            c0.1-0.1,0.2-0.2,0.3-0.3c0.3,0.1,0.4-0.1,0.4-0.6c0.4,0.1,0.9,0.2,1.3,0.2c0.1,0,0.3-0.1,0.4-0.2c-0.1-0.1-0.1-0.3-0.2-0.4
            c-0.1-0.1-0.3-0.2-0.4-0.2c-0.5-0.1-1-0.1-1.5-0.2c0.2-0.3,0.6-0.6,0.1-1.1c-0.6,0.5-1.3,1.1-2,1.7c0,0-0.1-0.1-0.1-0.1
            c0.2-0.3,0.4-0.6,0.6-0.8c0-0.1-0.1-0.1-0.1-0.2c-0.2,0.1-0.5,0.2-0.7,0.2c-0.2,0-0.4-0.1-0.7-0.1c0-0.1,0-0.2,0-0.3
            c0.3,0,0.6,0,0.9,0c0.1,0,0.2-0.1,0.3-0.2c-0.1-0.1-0.1-0.3-0.2-0.3c-0.3-0.1-0.6-0.1-0.9-0.2c0.3-0.5,0.7-0.5,1.1-0.3
            c0.1,0.1,0.3,0,0.4-0.1c-0.1-0.1-0.1-0.3-0.2-0.4c-0.1-0.1-0.3-0.3-0.6-0.5c0.1,0,0.2,0,0.2,0c0.7,0,1.4-0.1,1.9-0.5
            c0.1,0.1,0.2,0.3,0.3,0.5c0.4,0.9,0.9,0.9,2.5,0L526,85l-0.3,1.1c-0.3,1.4,0.5,1.5,2.3,0.3c1.2-0.8,1.2-0.8,0.7,0
            c-0.5,0.9-0.3,1.3,0.6,1c0.3-0.1,0.9,0,1.3,0.3c0.5,0.3,0.7,0.3,0.7,0c0-0.2,0.3-0.4,0.7-0.4s0.7,0.2,0.7,0.5
            c0,0.4,0.4,0.5,1.2,0.4C538.4,87.7,532.5,90,527.1,90.7z M519.8,84c0,0,0.1,0,0.1,0c0.1,0,0.1,0.1,0.1,0.1
            C520,84,519.9,84,519.8,84z M538.7,73.6c-0.3,0.7-3,1.8-4.4,1.8c-0.6,0-1.3,0.2-1.4,0.5c-0.1,0.3-1,0.4-2.2,0.4c-1.1,0-2,0.1-2,0.3
            c0,0.7,1.5,1.5,2.7,1.4c0.7-0.1,1.3,0,1.4,0.2c0.1,0.6-2.5,1-8.7,1.2c-2.2,0.1-4,0.1-5.5,0.2c-0.1-0.1-0.2-0.1-0.3-0.2
            c0.4-0.3,0.7-0.5,1.1-0.8c0.2-0.1,0.4-0.3,0.6-0.3c0.4-0.1,0.9-0.2,1.3-0.2c-0.1-0.2-0.2-0.4-0.2-0.6c0.1,0,0.2,0,0.3,0
            c0.2,0,0.3-0.1,0.5-0.1c-0.1-0.1-0.2-0.4-0.4-0.4c-0.4-0.1-0.8-0.1-1.2-0.2c0.3-0.3,0.5-0.6,0.7-1c0.1-0.1,0-0.3,0-0.5
            c-0.2,0-0.3,0-0.5,0.1c-0.2,0.2-0.4,0.4-0.6,0.6c-0.2,0.2-0.3,0.4-0.4,0.6c-0.1-0.3-0.2-0.5-0.3-0.8c0.2-0.3,0.5-0.6,0.7-0.9
            c0.1-0.1,0-0.3,0-0.5c-0.1,0-0.3,0-0.4,0.1c-0.2,0.2-0.4,0.4-0.7,0.6c-0.1,0.1-0.3,0.2-0.4,0.2c-0.4-0.2-0.5,0-0.6,0.3
            c-0.1,0.2-0.2,0.5-0.3,0.7c-1-0.6-1.1-0.6-2.3,0.1c-0.1,0-0.2,0-0.3,0c0,0,0-0.1,0.1-0.1c0.4-0.3,0.7-0.5,1.1-0.7
            c0.5-0.3,1-0.6,1.4-0.9c0.1-0.1,0.1-0.3,0.2-0.4c-0.1,0-0.3-0.1-0.4-0.1c-0.3,0.1-0.5,0.2-0.8,0.3c-0.2,0.1-0.3,0.1-0.5,0.2
            c0-0.3-0.1-0.5-0.1-0.7c-0.2,0.1-0.4,0.2-0.6,0.3c-0.2,0.1-0.3,0.2-0.4,0.3c-0.1-0.1,0-0.2,0-0.3c0.1-0.8,0.9-1,1.2-1.5
            c0.3-0.5,0.9-0.9,1.4-1.4c0.7,0.3,1.6,0.6,2.1,0.6c1,0,1,0,0.2,0.7c-0.8,0.7-0.8,0.7,0.4,0.7c0.9,0,1.1,0.1,0.9,0.6
            c-0.2,0.5,0,0.5,1,0.3c0.7-0.1,1.4-0.2,1.5-0.2c1.4,0,1.7,0.1,1.5,0.6c-0.5,1,0.7,1,1.3,0c0.6-1,0.7-1,0.7-0.2
            c0,0.5,0.2,0.8,0.4,0.9c2.7,0.3,3.1,0.2,3.7-0.9l0.6-1.1l0.4,0.9l0.4,0.9l0.9-0.9c0.8-0.9,0.8-0.9,0.9-0.1c0,1.1,0.8,1.1,1.1-0.1
            c0.2-0.5,0.5-0.9,0.7-0.9c0.2,0,0.3,0.2,0.1,0.4c-0.2,0.3,0.1,0.3,1.1,0.2C538.5,73.2,538.8,73.3,538.7,73.6z M538.2,63.6
            c-1.6,0.7-2.5,0.9-2.5,0.6c0-0.2,3-1.3,3.7-1.3C539.6,62.9,539.1,63.2,538.2,63.6z" />
    <path class="land layer11"
          fill="#232323"
          d="M536.6,24.5c0,0.2,0.5,0.6,1.2,0.9L539,26l-1.5-0.2c-1.5-0.2-4.1-1.3-5.2-2.3c-0.3-0.3-1-0.5-1.4-0.5
            c-0.9,0-1.1,0.7-0.4,1.3c0.3,0.2-0.4,0.4-1.8,0.5c-1.2,0.1-2.4,0.2-2.6,0.3c-1.4,0.8,2.1,2.1,4.7,1.8l1.8-0.2l-1.2,0.6
            c-0.8,0.4-1.2,0.8-1.1,1.2c0.2,0.9,2.1,0.6,3.3-0.5c0.6-0.5,1.3-0.9,1.8-0.8c0.6,0.1,0.5,0.2-0.4,0.6c-1.5,0.5-2,1.1-1,1.4
            c0.4,0.1,0.6,0.4,0.5,0.7c-0.1,0.3,0.1,0.6,0.4,0.7c0.3,0.1,0.6,0.1,0.6-0.1c0-0.3,1.4-0.8,2.5-0.9c0.3,0,0.9-0.4,1.4-0.8
            c0.1-0.1,0.3-0.2,0.4-0.3v-3.8C537.8,23.9,536.6,23.8,536.6,24.5z" />
        </g>
</svg>
    <section id="bottom"></section>

    <!--  Stag  -->
    <div id="stag">

        <svg version="1.1" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" viewBox="0 0 38.2 32.8" enable-background="new 0 0 38.2 32.8" xml:space="preserve" class="stag" id="stag1">>
        <polygon class="stags" fill="#262262" points="0.5,25.9 1.8,22.4 4.8,19.9 10.2,17.8 15.3,16.9 18.1,16.4 18.3,16.3 18.3,16.3 15.6,14.1 14.8,12.7 14.8,10.7 14.1,9.4 12.6,7.7 12.4,6.8 12.2,5.7 12.9,4.9 12.6,5.7 13.1,7.1 13.6,7.7 14.3,7.7 13.9,6.5 13.9,5.1 15,3.3 14.6,5.2 14.9,6.3 15.5,6.6 16.3,5.9 17.5,5.1 18.7,3.8 18.1,5.4 18.8,5.2 17,6.9 16.3,8.8 16.4,11.3 18.4,14.8 18.4,13.6 18.5,11.7 19,10.5 18.9,11.6 19.2,14.4 19.8,15.9 21.4,15.5 22.1,15.5 21.9,13.5 22.6,15.2 22.6,15.5 25.7,15.5 30.6,16.1 31.1,16.2 32.1,16.6 32.1,16.4 32.8,15.1 32.8,11.3 33.4,13.6 33.5,15.3 34.8,13.1 34.9,10.2 34.5,9 35.1,9.6 35.5,11.9 36,10.6 36.3,8.3 35.9,6.1 34.9,4.7 32.7,3.3 33.7,3.5 32.6,1.3 36,4.2 36.8,4.3 37.2,3.4 36.8,1.9 35.9,0 37.9,2.2 38.2,3.3 37.9,4.5 37.8,6 37.8,7.3 38.2,8.9 37.8,10.7 33.9,16.8 33.8,17.3 33.9,17.3 34.6,16.8 36.1,15.7 36.8,14.3 37,15 36.4,16.6 35.8,18.4 36.4,19 37.4,20.9 37.2,24.2 36.4,26.1 37,27.1 38.1,28.2 37.9,29.3 37.4,29.7 37.8,30.8 37,31.4 35.2,31.4 34.1,31.2 32.9,31.4 32.3,31.8 30.4,32.4 28.9,32.4 28.1,31.9 27.8,31.6 25,31.8 22.6,31.5 21.9,32.1 20.4,32.1 19.1,31.8 15.6,32.2 11.4,32.8 8.3,32.6 6.7,32.2 6.4,31.9 5.1,31.6 4.7,31.9 2.6,31.9 0.8,31.4 0,29.5 " />
      </svg>

        <svg version="1.1" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" viewBox="0 0 33.4 54.3" enable-background="new 0 0 33.4 54.3" xml:space="preserve" class="stag" id="stag2">
        <path class="stags" fill="#125768" d="M23.6,20.4l1.5,3.4l0.8,2.6l-0.1,3.8l0.4,4.3l-1,2.4L24,38.2l-0.3,3.2c0,0.1-0.6,2.3-0.6,2.3l0,3.6l0.1,0.9
              l-0.2,1l0.1,1.8l0.3,1.2l-1.5,0l-0.4-1.8l0.1-0.9l-0.4-1l-0.3-3.8l-0.3-2.7l-1.3-0.6l-1.4,0L17,41.9l0.1,2.9l0.5,1.8l0,1l-0.4,0.9
              l0,3.1l0.4,1.8L16,54.1l-0.1-5.3l-0.5-1.4l-0.1-2.2l-0.8-3.1l-2.9-0.2l-2.2,3.3l-1.3,1.5l-0.3,1.9l1.9,5.1l-0.4,0.4L8.2,54l-3.2-7.6
              l2.2-3.9l0-2.2L7,39.7l-1,0.1l-2.7,5.5l-0.8,1.3l-0.4,1.5l-0.8,2l-0.2,3l-0.7,0.2L0,52.8l0-3.9l0.2-0.9L0,46.8l0.9-1.2l0.7-2.1
              l0-5.2l-0.9-5.4l-0.1-2.5l0.9-1.9l3.2-2.2l2.7-0.7l3.3,0.1l3.9-0.1l1.2-0.7l0.8-3.1l0.5-1L17,19.6l-0.8-1l-0.7-0.3l-1.3-2l-1-1.4
              l0-0.7l1.1,1.2l1.7,0.7l1.1,0.6l-0.5-0.7L11.4,11l-0.8-1.6l0-1.7l-0.4-1.2L9.8,5L9.2,3.9l0-1.1l1.3-2.6l-0.3,2.1l0,1.5l0.6,0.8
              l0.8-0.3L14,0.6L13.5,3l0.9-0.5l-1.7,2L12,6.1l0.2,2.2l0.9,2.2l0.8,1.2l-0.2-2.4l0.4-0.7l0,1.3l0.8,2.8l1.8,1.7l-0.3-1.7l0-2.3
              l1,3.6l1,1.1l0.7,1.2l1,0.3l0.7,0l0.9-0.3l0.4-0.9l0.9-1.8l0.2-1.7l0.7-1.7l-0.3,2l-0.1,1.5L23.3,15l2.6-2.2l0.7-1.6l0.3-2.8
              l-0.1-1.1l0.5,1.2l0.1,1.9l0,1.3l2-3.6l0.1-2.5l-0.7-1.8l-1.7-1.7L27.5,2l-0.6-1.6l1.2,1.3l1.2,0.8l0.7,0.6L30.7,3L31,1.9L30.6,0
              l1.1,1.8l0,1.3l-0.4,1.2l0.7,0l0.5-0.6l0.4-1.4l-0.3-0.7l0.7,0.7l-0.1,1.2L33,4.4L31.5,6l-0.7,1.3l0,2L30,10.8L27.4,13l-2.9,2.5
              l-1.1,1.3l1.2-0.6l2-0.7l0.8-0.8l0,0.5l-1.1,1.1l-1,1.2l-0.5,0.9l-1,0.8L23.6,20.4z" />
      </svg>

        <svg version="1.1" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" viewBox="0 0 49.6 33.7" enable-background="new 0 0 49.6 33.7" xml:space="preserve" class="stag" id="stag3">
        <path class="stags" fill="#262262" d="M46.1,13.2l-1.7,0.6l2.6-2.5l2.6-1.3h-1l-1.4,0.3l-0.4-0.2l0-0.6l-0.7,1l-2.2,2.1l-0.5,0.1l0.1-1.4l0.4-1.2 l1.6-1.9L47.1,7l0.3-0.4l-1.8,0.5l1.1-1.2l-2.3,1.7l-1.1,0.3l-0.1-0.8L43.9,6l-1.2,1l-0.2,1l-0.9,0.9l-0.1,0.5L40.9,10l-0.5-0.4 l0.1-1.9l1.1-3.3l2.2-2.1l-1.1,0.2l-1.7,1.6L40.4,6l-0.5,0.5l0.3-1.7l0.9-1.7l-1.5,1.4l-0.4-0.2l-0.5,3.4l0,4.6l-1.2,2.7l-1,3.4 l-0.4,2.6l-0.7-0.6L35,18.8l-1-1.7l-0.9-2.2L33,15.6l-1-2l-1.6-3l-3.3-4.2l-0.3-0.5l-3-3.4l-1.6-0.7l-2.6-0.3l-2.2,0l-4.4-1.1L8.6,0 L5.8,0.2L2.7,2.4L0.3,5L0,7.4l1.8,5.4l1.7,3.8l0,2l-0.3,1.2l0.3,1l0,2.8L4,24.9L4,30.2l1.2,0.5l0.6-0.5L5.1,27l-0.2-4.1l0.3-2.8 l0.6-3.3l0.5-2l1.2,0.3l0.7,1.7l0,2.8l-0.4,1.7l0.8,1.5l2.3,4.2l1.2,3.7l1.6,0.4l0.6-0.5l-2.2-4.8l-1-2.4l-0.2-2.5l0.6-2.6l0.1-2.6 l1.5-0.3l1.2,0.2l2.7,1.1l1.7,0.9l-0.2,5.2l0.1,3.6L18,30.6l1.2,0.7l0.7-0.5l0-4.4l0.2-1.9l0.6-2.2l0.7,1.6l0.7,1l0.6,4l-0.1,2.7 l1.1,0.2l1.1-0.5l-0.8-2.4L23.2,25l0.2-1.8l-1-2.7v-1.3l3.1,2.6l-0.7,0l1.5,1l-0.5,0l1.8,1.4l-0.8-0.1l1.3,1l-0.4,0.2l1.4,1 l-0.5,0.1l1.5,1.2l0.7,2.1l1.1,2l0.7,1.5l1.6,0.6h0.4l1.3-1.1l0.9-4.2l0.4-2.6l0.5-1.6l1.7,1l1.5,1.1h1.9l1.4-0.7l1.7-1.9l-2.3,1.4 l0.9-1.1l-2.1,1.4l-0.8-0.1l-0.7-0.7l1.5-0.2l0.8-0.6L41.8,24l-1.3,0l1.3-0.8L40,23.5l-1.3-1l0-0.8l0.5-1.2l0.4-0.1l0.9,0.4l1.9,0.1 l2.2-0.9l1.1-0.7l0.6-0.7l-1.2,0.6L43,19.9L41.7,20l-1-0.2l-0.5-0.5l0.1-0.7l0.7-1.2l1.8-1.9l1.9-0.7l2.1-1.1l1.4-1.1l1.2-1.3 l-1.6,1L46.1,13.2z M38.4,19.2l-0.7,1.3l0.1-1.3L38.4,19.2L38.4,19.2z M42,13.9l-1.3,1.8l-1.8,2.7h-0.4l-0.3-0.6l0.8-2.5l1.9-2.5 l1.2-0.9V13.9z" />
      </svg>
    </div>

    <!--  Sun  -->
    <div class="sunMask">
        <div class="suncrane">
            <div class="sun"><div></div></div>
        </div>
    </div>
    </div>

    <!-- Clouds -->
    <div class="clouds">
        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0" y="0" viewBox="0 0 971.91 106.43" enable-background="new 0 0 971.905 106.431" xml:space="preserve">
        <path fill="#FFFFFF" d="M921.13 37.73c-4.8 0-9.28 1.35-13.08 3.7 -3.16-5.89-9.36-9.89-16.51-9.89 -3.31 0-6.42 0.87-9.12 2.38 -1.46-7.54-6.31-13.86-12.9-17.32 1-0.82 1.65-2.04 1.65-3.44 0-2.46-1.99-4.45-4.46-4.45 -1.87 0-3.47 1.16-4.13 2.8 -0.56-0.16-1.14-0.25-1.75-0.25 -2.11 0-3.97 1.03-5.13 2.61 -12.7 1.14-22.66 11.81-22.66 24.81 0 0.32 0.01 0.64 0.02 0.96 -3.4-1.98-7.35-3.12-11.56-3.12 -2.81 0-5.49 0.5-7.98 1.42 -2.84-6.41-9.24-10.88-16.7-10.88 -9.76 0-17.7 7.65-18.22 17.28 -1.12-0.21-2.28-0.33-3.46-0.33 -8.38 0-15.47 5.5-17.86 13.09 -1.44-0.35-2.94-0.56-4.48-0.56 -1.48 0-2.92 0.19-4.3 0.52 -3.43-4.14-8.62-6.78-14.42-6.78 -0.18 0-0.35 0.02-0.53 0.03 -1.46-1.35-3.42-2.18-5.57-2.18 -4.54 0-8.22 3.68-8.22 8.22 0 0.19 0.02 0.39 0.03 0.57 -1.07 1.27-1.97 2.69-2.68 4.22 -2.31-1.02-4.87-1.6-7.56-1.6 -1.07 0-2.11 0.11-3.12 0.28 -1.49-3.76-3.86-7.08-6.87-9.69 1.93-0.49 3.36-2.22 3.36-4.3 0-2.46-1.99-4.45-4.45-4.45 -1.22 0-2.33 0.5-3.14 1.29 -1.39-1.25-3.22-2.02-5.24-2.02 -2.67 0-5.03 1.34-6.45 3.38 -0.15 0-0.29-0.01-0.44-0.01 -9.5 0-17.77 5.31-21.99 13.12 -1.82-0.42-3.72-0.65-5.68-0.65 -3.21 0-6.27 0.61-9.09 1.71 -2.04-8.14-9.38-14.17-18.14-14.17 -0.42 0-0.83 0.04-1.25 0.06 -3.32-4.57-8.69-7.55-14.77-7.55 -2.38 0-4.65 0.47-6.74 1.3 0-0.02 0-0.05 0-0.08 0-7.1-3.48-13.38-8.82-17.25 -0.06-0.36-0.15-0.71-0.26-1.05 0.92-0.86 1.51-2.08 1.51-3.44 0-2.61-2.11-4.72-4.72-4.72 -1.76 0-3.28 0.98-4.09 2.41 -0.21-0.02-0.42-0.03-0.63-0.03 -2.5 0-4.74 1.11-6.26 2.85 -10.87 0.98-19.4 10.11-19.4 21.24 -10.36 0-19.25 6.31-23.04 15.3 -0.64-0.07-1.29-0.1-1.95-0.1 -5.11 0-9.74 2.05-13.11 5.37 -3.37-3.28-7.97-5.31-13.05-5.31 -2.58 0-5.04 0.52-7.28 1.47 0.12-0.47 0.19-0.96 0.19-1.47 0-2.19-1.18-4.1-2.93-5.15 0.91-0.67 1.5-1.74 1.5-2.95 0-2.03-1.65-3.68-3.68-3.68 -1.47 0-2.73 0.87-3.32 2.11 -0.41-0.09-0.83-0.14-1.27-0.14 -2.7 0-4.97 1.87-5.58 4.38 -0.52-0.04-1.03-0.08-1.56-0.08 -5.96 0-11.26 2.8-14.69 7.14 -2.22-1.89-5.1-3.03-8.25-3.03 -1.72 0-3.36 0.35-4.86 0.96 -3.1-2.27-6.91-3.63-11.04-3.63 -0.22 0-0.43 0.03-0.65 0.03 -1.51-1.7-3.71-2.78-6.17-2.78 -4.18 0-7.62 3.1-8.17 7.13 -1.21-0.24-2.46-0.37-3.74-0.37 -1.82 0-3.58 0.27-5.24 0.76 -4.57-5.89-11.71-9.69-19.75-9.69 -6.02 0-11.55 2.13-15.86 5.68 -0.98-2.51-2.47-4.75-4.36-6.6 0.61-1.15 0.96-2.46 0.96-3.86 0-4.56-3.7-8.26-8.26-8.26 -4.11 0-7.51 3.01-8.14 6.94 -7.6 0.96-13.77 6.46-15.71 13.71 -6.24 0.17-11.73 3.38-15 8.22 -2.15-1.35-4.68-2.14-7.4-2.14 -4.95 0-9.28 2.58-11.76 6.46 -1.73-1.48-3.98-2.37-6.44-2.37 -5.49 0-9.94 4.45-9.94 9.94 0 5.49 4.45 9.94 9.94 9.94 2.48 0 4.74-0.91 6.49-2.42 2.49 3.84 6.8 6.38 11.71 6.38 3.32 0 6.36-1.16 8.75-3.09 3.43 3.98 8.5 6.51 14.17 6.51 1.53 0 3.02-0.2 4.44-0.55 2.96 9.01 11.43 15.52 21.42 15.52 8.11 0 15.21-4.28 19.18-10.7 1.86 0.44 3.81 0.69 5.81 0.69 6.12 0 11.73-2.2 16.07-5.86 2.65 1.44 5.69 2.26 8.92 2.26 4.92 0 9.38-1.91 12.72-5.01 1.89 0.64 3.9 1 6.01 1 6.89 0 12.89-3.73 16.14-9.27 2.31-0.04 4.47-0.7 6.32-1.82 3.2 5.75 9.33 9.65 16.37 9.65 3.18 0 6.18-0.8 8.8-2.2 3.41 4.67 8.9 7.72 15.12 7.72 5.11 0 9.74-2.05 13.12-5.37 3.37 3.28 7.97 5.31 13.05 5.31 5.21 0 9.92-2.13 13.31-5.56 3.49 1.85 7.46 2.9 11.68 2.9 6.94 0 13.22-2.83 17.75-7.4 4.53 4.57 10.81 7.4 17.75 7.4 7.91 0 14.96-3.68 19.54-9.42 2.97 1.99 6.55 3.15 10.39 3.15 0.76 0 1.51-0.06 2.25-0.15 0 0.05 0 0.1 0 0.15 0 13.8 11.19 24.99 24.99 24.99 9.5 0 17.77-5.31 21.99-13.12 1.83 0.42 3.72 0.66 5.68 0.66 4.51 0 8.74-1.2 12.4-3.29 3.43 3.85 8.41 6.29 13.97 6.29 7.53 0 14-4.45 16.98-10.86 2.31 1.02 4.87 1.6 7.56 1.6 1.48 0 2.92-0.19 4.31-0.52 3.44 4.14 8.62 6.78 14.42 6.78 8.38 0 15.47-5.5 17.86-13.09 1.44 0.35 2.94 0.56 4.48 0.56 0.66 0 1.31-0.04 1.95-0.1 3.79 8.99 12.68 15.3 23.04 15.3 9.91 0 18.48-5.77 22.52-14.14 4.74-0.23 9.1-1.9 12.66-4.57 3.17 5.83 9.35 9.79 16.46 9.79 4.35 0 8.34-1.5 11.52-3.98 4.05 6.56 11.31 10.93 19.59 10.93 9.43 0 17.53-5.67 21.08-13.79 4.48 4.24 10.52 6.85 17.17 6.85 13.8 0 24.99-11.19 24.99-24.99C946.12 48.91 934.93 37.73 921.13 37.73z" /><circle fill="#FFFFFF" cx="960.41" cy="48" r="11.5" /><circle fill="#FFFFFF" cx="906.98" cy="27.04" r="4.48" /><circle fill="#FFFFFF" cx="712.09" cy="35.81" r="1.6" /><circle fill="#FFFFFF" cx="706.68" cy="39.5" r="2.38" /><circle fill="#FFFFFF" cx="749.62" cy="38.08" r="1.6" /><circle fill="#FFFFFF" cx="874.38" cy="7.95" r="2.67" /><circle fill="#FFFFFF" cx="881.32" cy="1.6" r="1.6" /><circle fill="#FFFFFF" cx="739.82" cy="42.75" r="2.38" /><circle fill="#FFFFFF" cx="387.78" cy="30.12" r="2.85" /><circle fill="#FFFFFF" cx="448.92" cy="43.32" r="2.85" /><circle fill="#FFFFFF" cx="507.38" cy="39.6" r="2.3" /><circle fill="#FFFFFF" cx="455.5" cy="39.33" r="1.62" /><circle fill="#FFFFFF" cx="513.18" cy="35.98" r="1.29" /><circle fill="#FFFFFF" cx="393.99" cy="26.17" r="1.77" /><circle fill="#FFFFFF" cx="293.43" cy="71.71" r="6.3" /><circle fill="#FFFFFF" cx="600.09" cy="9.25" r="2.64" /><circle fill="#FFFFFF" cx="604.56" cy="4.61" r="0.95" /><circle fill="#FFFFFF" cx="5.05" cy="70.67" r="5.05" /><circle fill="#FFFFFF" cx="126.02" cy="34.72" r="3.03" /><circle fill="#FFFFFF" cx="132.07" cy="31.76" r="1.49" /><path fill="#FFFFFF" d="M164.03 60.77c-2.1 0-4.07 0.53-5.79 1.45 -2.83-4.55-7.86-7.59-13.62-7.59 -3.69 0-7.09 1.26-9.8 3.36 -2.48-3.91-6.35-6.82-10.93-8.06 -0.25-1.4-0.64-2.75-1.18-4.03 0.72-1.13 1.15-2.47 1.15-3.91 0-4.02-3.26-7.27-7.27-7.27 -1.33 0-2.57 0.36-3.65 0.99 -2.53-1.19-5.34-1.87-8.33-1.87 -6.98 0-13.09 3.66-16.57 9.15 -4.23-3.29-9.54-5.25-15.32-5.25 -10.36 0-19.25 6.31-23.04 15.3 -0.64-0.07-1.29-0.1-1.95-0.1 -6.14 0-11.58 2.97-14.99 7.54 -1.54-0.7-3.25-1.1-5.05-1.1 -6.78 0-12.28 5.5-12.28 12.28s5.5 12.28 12.28 12.28c1.8 0 3.51-0.4 5.05-1.1 3.41 4.57 8.85 7.54 14.99 7.54 5.21 0 9.92-2.13 13.31-5.56 3.49 1.85 7.46 2.9 11.68 2.9 0.41 0 0.81-0.01 1.22-0.03 4.29 7.59 12.43 12.71 21.76 12.71 9.74 0 18.18-5.58 22.3-13.72 0.34 0.02 0.67 0.05 1.01 0.05 5.25 0 9.99-2.17 13.4-5.65 2.94 3.46 7.32 5.66 12.21 5.66 4.36 0 8.3-1.74 11.19-4.56 2.18 1.97 5.05 3.17 8.22 3.17 6.78 0 12.28-5.5 12.28-12.28S170.82 60.77 164.03 60.77z" /></svg>
    </div>

    <!-- Lighting -->
    <div class="lighting">
        <div class="suncrane">
            <svg version="1.1" id="lensFlare" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" viewBox="0 0 684.9 116" enable-background="new 0 0 684.9 116" xml:space="preserve">
            <polygon opacity="0.2" fill="#F9BB70" points="33.5,116 0,58 33.5,0 100.5,0 134,58 100.5,116 " />
            <polygon opacity="0.2" fill="#F9BB70" points="86,96.5 63.7,58 86,19.5 130.4,19.5 152.6,58 130.4,96.5 " />
            <polygon opacity="0.3" fill="#EF519A" points="160.5,68.1 154.7,58 160.5,47.9 172.2,47.9 178.1,58 172.2,68.1 " />
            <polygon opacity="0.6833" fill="#F9BB70" points="280.9,62.1 278.6,58 280.9,53.9 285.7,53.9 288,58 285.7,62.1 " />
            <polygon opacity="0.4" fill="#F9BB70" points="221,72.9 212.4,58 221,43.1 238.2,43.1 246.7,58 238.2,72.9 " />
            <polygon opacity="0.2" fill="#F9BB70" points="651.4,0 684.9,58 651.4,116 584.4,116 550.9,58 584.4,0 " />
            <polygon opacity="0.2" fill="#F9BB70" points="598.9,19.5 621.1,58 598.9,96.5 554.4,96.5 532.2,58 554.4,19.5 " />
            <polygon opacity="0.3" fill="#EF519A" points="524.4,47.9 530.2,58 524.4,68.1 512.7,68.1 506.8,58 512.7,47.9 " />
            <polygon opacity="0.6833" fill="#F9BB70" points="403.9,53.9 406.3,58 403.9,62.1 399.2,62.1 396.9,58 399.2,53.9 " />
            <polygon opacity="0.4" fill="#F9BB70" points="463.9,43.1 472.5,58 463.9,72.9 446.7,72.9 438.1,58 446.7,43.1 " />
            </svg>
        </div>
    </div>

    <!-- Vignette -->
    <div class="vignette"></div>

    <!-- Sun on lake twinkles -->
    <div class="twinkleWrap">
        <div class="twinkles">
            <svg version="1.1" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" viewBox="0 0 28.2 75.1" enable-background="new 0 0 28.2 75.1" xml:space="preserve" id="twinkle1">
            <g>
            <circle fill="#FFFFFF" cx="16.7" cy="1.2" r="1.2" />
            <circle fill="#FFFFFF" cx="11" cy="21.1" r="1.2" />
            <circle fill="#FFFFFF" cx="22.9" cy="46.8" r="1.2" />
            <circle fill="#FFFFFF" cx="10.7" cy="40.3" r="1.2" />
            <circle fill="#FFFFFF" cx="14.1" cy="73.9" r="1.2" />
            <circle fill="#FFFFFF" cx="27" cy="30" r="1.2" />
            <circle fill="#FFFFFF" cx="1.2" cy="30" r="1.2" />
                  </g>
            </svg>
            <svg version="1.1" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" viewBox="0 0 28.2 75.1" enable-background="new 0 0 28.2 75.1" xml:space="preserve" id="twinkle2">
            <g>
            <circle fill="#FFFFFF" cx="22.4" cy="1.2" r="1.2" />
            <circle fill="#FFFFFF" cx="14.1" cy="26.2" r="1.2" />
            <circle fill="#FFFFFF" cx="15.3" cy="41.5" r="1.2" />
            <circle fill="#FFFFFF" cx="7" cy="54.8" r="1.2" />
            <circle fill="#FFFFFF" cx="23.1" cy="73.9" r="1.2" />
            <circle fill="#FFFFFF" cx="27" cy="15.5" r="1.2" />
            <circle fill="#FFFFFF" cx="1.2" cy="22.4" r="1.2" />
                  </g>
            </svg>
            <svg version="1.1" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" viewBox="0 0 28.2 75.1" enable-background="new 0 0 28.2 75.1" xml:space="preserve" id="twinkle3">
            <g>
            <circle fill="#FFFFFF" cx="9.4" cy="1.2" r="1.2" />
            <circle fill="#FFFFFF" cx="19.2" cy="21.1" r="1.2" />
            <circle fill="#FFFFFF" cx="12.9" cy="36.1" r="1.2" />
            <circle fill="#FFFFFF" cx="7" cy="62.1" r="1.2" />
            <circle fill="#FFFFFF" cx="16.8" cy="44.3" r="1.2" />
            <circle fill="#FFFFFF" cx="10.7" cy="73.9" r="1.2" />
            <circle fill="#FFFFFF" cx="27" cy="48" r="1.2" />
            <circle fill="#FFFFFF" cx="1.2" cy="34.9" r="1.2" />
                  </g>
            </svg>
        </div>
    </div>

    <!-- noise overlay -->
    <div class="noise"></div>

    <!-- sprites -->
    <div class="spriteWrap"></div>

    <!-- partial -->
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

<style>

            .alert-box {
            display: none;
            position: fixed;
            top: 2%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #ff0000;
            color: #ffffff;
            padding: 15px;
            border-radius: 8px;
            z-index: 1000000000;
            animation: slideIn 1s forwards, fadeOutandslideout 1s 3.5s forwards;
        }

        @keyframes slideIn {
            0% { transform: translate(-50%, -120%); }
            100% { transform: translate(-50%, 0%); }
        }

        @keyframes fadeOutandslideout {
            0% { opacity: 0.8; }
            100% { opacity: 0;  transform: translate(-50%, -100%); filter: blur(20px);}
        }
@keyframes fadeOut {
    0% { opacity: 1; }
    100% { opacity: 0; }
}

a {
    color: white;
    text-decoration: none;
}


    .box {
        width: 300px;
        height: auto;
        padding: 20px;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        background: #1c428217;
        backdrop-filter: blur(10px);
        border-radius: 25px;
        opacity: 1;
        z-index: 10000;
        text-align: center;
        animation: 7s fadeIn;
        max-height: 82%;
        overflow-y: auto;
        transition: transform 1s ease;
    }

.move-right {
        transform: translate(50, -50%);
}


.box::-webkit-scrollbar-track {
    background: rgba(0, 0, 0, 0.1);
                    z-index: 1;


}

.box::-webkit-scrollbar-thumb {
    background: #22214fb2;
                    z-index: 1;

    border-radius: 10px;
}

.box::-webkit-scrollbar {
    width: 8px;
                    z-index: 1;
                    color: #141829d9;
}

.box h1 {
    font-family: sans-serif;
        color: rgb(155, 229, 250);

    position: relative;
    z-index: 10000;
    font-weight: 500;
}

.box input[type="text"]::placeholder,
.box input[type="password"]::placeholder {
        color: rgb(125, 229, 210);

}

.box input[type = "text"], .box input[type = "password"] {
    border: 0;
    background: none;
    display: block;
    margin: 20px auto;
    text-align: center;
    border: 2px solid #FFC0CB;  
    padding: 14px 10px;
    width: 200px;
    outline: none;
    position: relative;
        color: rgb(125, 229, 250);
    border-radius: 24px;
    transition: 0.25s;
    z-index: 10000;
}


@keyframes blurintoout {
    0% { filter: opacity(1); }
    25% { filter: opacity(0.5); }
    75% { filter: opacity(0.8); }
    100% { filter: opacity(1); }
}

.box input[type="text"],
.box input[type="password"] {
    transition: width 0.6s ease-out, border-color 0.6s ease-out;
    width: 180px;  
    border-color: #ccc; 
    background: #22214f36;
    

}

.box input[type="text"]:focus,
.box input[type="password"]:focus {
    width: 220px;
    border-color: #FFC0CB;
    position: relative;
    z-index: 10000;
    animation: blurintoout 1s ease-out; 
}



.submition {
    border: 0;
    background: none;
    display: block;
    margin: 20px auto;
    text-align: center;
    border: 2px solid #FFC0CB;  
    padding: 14px 40px;
    position: relative;
    outline: none;
    z-index: 10000;
    color: #663399;  
    border-radius: 24px;
    transition: 0.25s;
    cursor: pointer;
}

.submition:hover {
    background: #FFC0CB;  
    position: relative;
    z-index: 10000;
}




.citylist::placeholder {
        color: rgb(125, 229, 210);
}

.citylist {
    border: 0;
    background: #22214f36;
    display: block;
    margin: 20px auto;
    text-align: center;
    border: 2px solid #FFC0CB;  
    padding: 14px 10px;
    width: 180px;
    border-color: #ccc;  
    outline: none;
    position: relative;
        color: rgb(125, 229, 210);
    border-radius: 24px;
    transition: 0.25s;
    z-index: 10000;
}

.city-dropdown {
    position: relative;
    width: 200px;
    margin: 0 auto;
    overflow: hidden;
    max-height: 0;
    transition: max-height 0.3s ease-out;
    overflow-y: auto;
}

.citylist:focus + .city-dropdown {
    max-height: 100px;
}

.city-dropdown ul {
    list-style: none;
    padding: 0;
    margin: 0;
}

.city-dropdown ul li {
    padding: 10px;
    background-color: #1c428217;
        color: rgb(125, 229, 250);
    cursor: pointer;
    transition: background-color 0.3s;
}

.city-dropdown ul li:hover {
    background-color: #1c1e3cc1;
}

.city-dropdown ul li:active {
    color: #fff;
}

.city-dropdown ul li:focus {
    outline: none;
}

.city-dropdown ul li:not(:last-child) {
    border-bottom: 1px solid #ccc;
}












    .hobby-list::placeholder {
        color: rgb(125, 229, 210);
    }

    .hobby-list {
        border: 0;
    background: #22214f36;
        display: block;
    margin: 0px auto;

        text-align: center;
        border: 2px solid #800080;  
        padding: 14px 10px;
        width: 180px;
    border: 2px solid #FFC0CB; 
        outline: none;
        position: relative;
        color: rgb(125, 229, 250);
        border-radius: 24px;
        transition: 0.25s;
        z-index: 10000;
                border: 2px solid #FFC0CB;  
    border-color: #ccc;  
    color: rgb(163, 149, 255); 
    }

    .hobby-dropdown {
        position: relative;
        width: 200px;
        margin: 0 auto;
        overflow: hidden;
        max-height: 0;
        transition: max-height 0.3s ease-out;
        overflow-y: auto;

}
   
    

    .hobby-list:focus + .hobby-dropdown {
        max-height: 100px;
    }

    .hobby-dropdown ul {
        list-style: none;
        padding: 0;
        margin: 0;
    }



    .hobby-dropdown ul li {
    padding: 10px;
    background-color: #1c428217;
        color: rgb(125, 229, 250);
    cursor: pointer;
    transition: background-color 0.3s;
    }

    .hobby-dropdown ul li:hover {
    background-color: #1c1e3cc1;
    }

    .hobby-dropdown ul li:active {
    color: #fff;
    }

    .hobby-dropdown ul li:focus {
    outline: none;
    }

    .hobby-dropdown ul li:not(:last-child) {
    border-bottom: 1px solid #ccc;
    }

    .prefix-dropdown::-webkit-scrollbar-track,
.city-dropdown::-webkit-scrollbar-track,
.hobby-dropdown::-webkit-scrollbar-track {
    background: rgba(0, 0, 0, 0.1);
    z-index: 1;
}

.prefix-dropdown::-webkit-scrollbar-thumb,
.city-dropdown::-webkit-scrollbar-thumb,
.hobby-dropdown::-webkit-scrollbar-thumb {
    background: gray;
    z-index: 1;
    border-radius: 10px;
}

.prefix-dropdown::-webkit-scrollbar,
.city-dropdown::-webkit-scrollbar,
.hobby-dropdown::-webkit-scrollbar {
    width: 8px;
    z-index: 1;
}




    .prefixlist::placeholder {
        color: rgb(125, 229, 210);
}
.prefixlist {
    border: 0;
    background: #22214f36;
    display: block;
    margin: 0px auto;
    text-align: center;
    border: 2px solid #FFC0CB; 
    padding: 14px 10px;
    width: 180px;
    border-color: #ccc; 
    outline: none;
    position: relative;
        color: rgb(125, 229, 250);
    border-radius: 24px;
    transition: 0.25s;
    z-index: 10000;
}

.prefix-dropdown {
    position: relative;
    width: 200px;
    margin: 0 auto;
    overflow: hidden;
    max-height: 0;
    transition: max-height 0.3s ease-out;
    overflow-y: auto;
}

.prefixlist:focus + .prefix-dropdown {
    max-height: 100px;
}

.prefix-dropdown ul {
    list-style: none;
    padding: 0;
    margin: 0;
}

.prefix-dropdown ul li {
    padding: 10px;
    background-color: #1c428217;
        color: rgb(125, 229, 250);
    cursor: pointer;
    transition: background-color 0.3s;
}

.prefix-dropdown ul li:hover {
    background-color: #1c1e3cc1;
}

.prefix-dropdown ul li:active {
    color: #fff;
}

.prefix-dropdown ul li:focus {
    outline: none;
}

.prefix-dropdown ul li:not(:last-child) {
    border-bottom: 1px solid #ccc;
}










.radio-buttons input[type="radio"] {
    display: none;
}

.radio-label {
    color: white;
    display: block;
    margin-top: -5px;
    text-align: center;
        background: #22214f36;


}

.radio-buttons label {
    display: inline-block;
    border-radius: 15px;  
    padding: 8px 16px; 
    margin: 5px;
    cursor: pointer;
    transition: background-color 0.3s, color 0.3s, border-color 0.3s; 
    border: 2px solid #ccc;  
    color: rgb(125, 229, 210); 
        background: #22214f36;

}

 
#male:checked + label {
    background-color: #6495ED;  
    color: white;  
    border-color: #6495ED; 
}

 #female:checked + label {
    background-color: #FF69B4; 
    color: white;  
    border-color: #FF69B4;
}
 
#nonbinary:checked + label {
    background-color: #808080;  
    color: white;  
    border-color: #808080; 
}

.container {
  display: flex;
}
  textarea {
    width: 50%;
  }

  #infoTextArea {
    position: absolute;
    top: 50%;
    left: 0%;
    transform: translate(0%, -50%);
    width: 300px;
    height: auto;
    padding: 20px;
    background: #1c428217;
    backdrop-filter: blur(10px);
    border-radius: 25px;
    opacity: 1;
    z-index: 10000;
    text-align: center;
    animation: 7s fadeIn;
    max-height: 82%;
    overflow-y: auto;
    transition: transform 1s ease;
  }

  #infoTextArea {
  display: none;  
}

.ajax-success #infoTextArea {
  display: block; 
}

</style>


    <div id="alertBox" class="alert-box">
        <span id="alertMessage"></span>
    </div>
<form id="form1">

    <div class="container">
  <textarea id="infoTextArea" rows="10" cols="50"></textarea>
    <div class="box">
        <h1>Register</h1>
  <input id="username_txt" class="username" type="text" name="" placeholder="Username">
            <input id="name" placeholder="Name" class="text" type="text">
            <input id="family_name" placeholder="Family name" class="text" type="text">
           
<div class="radio-buttons">
    <input type="radio" id="male" name="gender" value="male">
    <label for="male">Male</label>

    <input type="radio" id="female" name="gender" value="female">
    <label for="female">Female</label>

    <input type="radio" id="nonbinary" name="gender" value="nonbinary">
    <label for="nonbinary">Non-binary</label>
</div>


        <input id="phone_prefix" class="prefixlist" name="" placeholder="Choose a phone prefix"/>

<div class="prefix-dropdown" tabindex="0">
    <ul>
<li tabindex="0" onmousedown="selectPrefix(this)">077</li>
<li tabindex="0" onmousedown="selectPrefix(this)">08</li>
<li tabindex="0" onmousedown="selectPrefix(this)">04</li>
<li tabindex="0" onmousedown="selectPrefix(this)">03</li>
<li tabindex="0" onmousedown="selectPrefix(this)">02</li>
<li tabindex="0" onmousedown="selectPrefix(this)">057</li>
<li tabindex="0" onmousedown="selectPrefix(this)">054</li>
<li tabindex="0" onmousedown="selectPrefix(this)">053</li>
<li tabindex="0" onmousedown="selectPrefix(this)">052</li>
<li tabindex="0" onmousedown="selectPrefix(this)">050</li>

    </ul>
</div>


            <input id="phone_num_noprefix" placeholder="Phone number without a prefix" class="phonenum" type="text">
            <input id="birthdate" placeholder="Year of birth" class="birthdate" type="text">
            <input id="city_list" class="citylist" name="" placeholder="Choose a city">

    <div class="city-dropdown" tabindex="0">
        <ul>
            <li tabindex="0" onmousedown="selectCity(this)">Jerusalem</li>
            <li tabindex="0" onmousedown="selectCity(this)">Tel Aviv</li>
            <li tabindex="0" onmousedown="selectCity(this)">West Jerusalem</li>
            <li tabindex="0" onmousedown="selectCity(this)">Haifa</li>
            <li tabindex="0" onmousedown="selectCity(this)">Ashdod</li>
            <li tabindex="0" onmousedown="selectCity(this)">Rishon LeZiyyon</li>
            <li tabindex="0" onmousedown="selectCity(this)">Petah Tiqwa</li>
            <li tabindex="0" onmousedown="selectCity(this)">Beersheba</li>
            <li tabindex="0" onmousedown="selectCity(this)">Netanya</li>
            <li tabindex="0" onmousedown="selectCity(this)">Holon</li>
            <li tabindex="0" onmousedown="selectCity(this)">Bnei Brak</li>
            <li tabindex="0" onmousedown="selectCity(this)">Rehovot</li>
            <li tabindex="0" onmousedown="selectCity(this)">Bat Yam</li>
            <li tabindex="0" onmousedown="selectCity(this)">Ramat Gan</li>
            <li tabindex="0" onmousedown="selectCity(this)">Ashkelon</li>
            <li tabindex="0" onmousedown="selectCity(this)">Jaffa</li>
            <li tabindex="0" onmousedown="selectCity(this)">Modi'in Makkabbim Re'ut</li>
            <li tabindex="0" onmousedown="selectCity(this)">Herzliya</li>
            <li tabindex="0" onmousedown="selectCity(this)">Kfar Saba</li>
            <li tabindex="0" onmousedown="selectCity(this)">Ra'anana</li>
        </ul>
    </div>


        <input id="hobby_list" class="hobby-list" name="" placeholder="Choose a hobby"/>

<div class="hobby-dropdown" tabindex="0">
    <ul>
        <li tabindex="0" onmousedown="selectHobby(this)">Reading</li>
        <li tabindex="0" onmousedown="selectHobby(this)">Gardening</li>
        <li tabindex="0" onmousedown="selectHobby(this)">Cooking</li>
        <li tabindex="0" onmousedown="selectHobby(this)">Painting</li>
        <li tabindex="0" onmousedown="selectHobby(this)">Running</li>
        <li tabindex="0" onmousedown="selectHobby(this)">Photography</li>
        <li tabindex="0" onmousedown="selectHobby(this)">Gaming</li>
        <li tabindex="0" onmousedown="selectHobby(this)">Traveling</li>
        <li tabindex="0" onmousedown="selectHobby(this)">Music</li>
        <li tabindex="0" onmousedown="selectHobby(this)">Coding</li>
    </ul>
</div>

          <input id="password_txt" class="pass" type="password" name="" placeholder="Password">
            <input id="repeat_password_txt" class="pass" type="password" name="" placeholder="Repeat Password">
            <input id="email_txt" class="email" type="text" name="" placeholder="Email">
            <button id="submit_btn" class="submition" type="button">Register</button>
    
    </div>

    </div>

</form>

<script type="text/javascript">

    document.addEventListener('click', function (event) {
        const hobbyDropdown = document.querySelector('.hobby-dropdown');
        const hobbyList = document.querySelector('.hobby-list');

        if (!hobbyDropdown.contains(event.target) && !hobbyList.contains(event.target)) {
            hobbyDropdown.style.maxHeight = '0';
        }
    });

    function selectHobby(element) {
        var selectedHobby = element.innerText;
        var currentText = document.querySelector('.hobby-list').value;
        document.querySelector('.hobby-list').value = currentText + (currentText.length > 0 ? ', ' : '') + selectedHobby;
    }

    document.querySelector('.hobby-list').addEventListener('focus', function () {
        document.querySelector('.hobby-dropdown').style.maxHeight = '100px';
    });



    function selectCity(element) {
        var selectedCity = element.innerText;
        document.querySelector('.citylist').value = selectedCity;
        document.querySelector('.citylist').placeholder = "";
        document.querySelector('.city-dropdown').blur();
    }

    function selectPrefix(element) {
        var selectedPrefix = element.innerText;
        document.querySelector('.prefixlist').value = selectedPrefix;
        document.querySelector('.prefixlist').placeholder = "";
        document.querySelector('.prefix-dropdown').blur();
    }



    function showAlert(message) {
        var alertBox = document.getElementById('alertBox');
        var alertMessage = document.getElementById('alertMessage');

        alertMessage.textContent = message;
        alertBox.style.display = 'block';

        setTimeout(function () {
            alertBox.style.display = 'none';
        }, 4600);  
    }

    $("#submit_btn").click(function (e) {
        e.preventDefault();


        var username = $("#username_txt").val();
        var name = $("#name").val();
        var family_name = $("#family_name").val();
        try {
            var gender = document.querySelector('input[name="gender"]:checked').value;
            if (gender === null) {
                 gender = "";
            }
        } catch (error) {
             console.error("Error:", error.message);
             gender = "";
        }
        var phone_prefix = $("#phone_prefix").val();
        var phone_num_noprefix = $("#phone_num_noprefix").val();
        var birthdate = $("#birthdate").val();
        var city_list = $("#city_list").val();
        var hobby_list = $("#hobby_list").val();
        var password = $("#password_txt").val();
        var repeat_password = $("#repeat_password_txt").val();
        var email = $("#email_txt").val();



        if ($("#phone_prefix").val() === "") {
            showAlert("Please choose a telephone prefix.");
            return;
        }

        if (isNaN(phone_num_noprefix)) {
            showAlert("Phone number should contain only digits.");
            return;
        }

        if (isNaN(birthdate)) {
            showAlert("Year of birth should contain only digits.");
            return;
        }


        if ($("#city_list").val() === "") {
            showAlert("Please choose a residential settlement.");
            return;
        }

        if (hobby_list.split(",").length == 0 || hobby_list.trim() == "") {
            showAlert("Please select at least one hobby.");
            return;
        }

        if (password.length < 6 || password.length > 8) {
            showAlert("Password should be between 6-8 characters.");
            return;
        }

        let missingEntry = "";

        if (username.trim() === "") {
            missingEntry = "Username";
        } else if (name.trim() === "") {
            missingEntry = "Name";
        } else if (family_name.trim() === "") {
            missingEntry = "Family Name";
        } else if (gender.trim() === "") {
            missingEntry = "Gender";
        } else if (phone_prefix.trim() === "") {
            missingEntry = "Phone Prefix";
        } else if (phone_num_noprefix.trim() === "") {
            missingEntry = "Phone Number (No Prefix)";
        } else if (birthdate.trim() === "") {
            missingEntry = "Birthdate";
        } else if (city_list.trim() === "") {
            missingEntry = "City List";
        } else if (hobby_list.trim() === "") {
            missingEntry = "Hobby List";
        } else if (password.trim() === "") {
            missingEntry = "Password";
        } else if (repeat_password.trim() === "") {
            missingEntry = "Repeat Password";
        } else if (email.trim() === "") {
            missingEntry = "Email";
        }

        if (missingEntry !== "") {
            showAlert(`${missingEntry} is a required field.`);
            //             showAlert("Missing or invalid parameters.");

            return;
        }


        if (birthdate.length != 4) {
            showAlert("Please write your birth year, 2000 for example");
            return;
        }



        if (password !== repeat_password) {
            showAlert("Passwords do not match.");
            return;
        }

         const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(email)) {
            showAlert("Enter a valid email.");
            return;
        }
 

        if (username.length < 2) {
            showAlert("Username should have at least 2 characters.");
            return;
        }

        if (name.length < 2) {
            showAlert("Surname should have at least 2 characters.");
            return;
        }

        if (family_name.length < 2) {
            showAlert("First name should have at least 2 characters.");
            return;
        }


        var dataToSend = {
            username: $("#username_txt").val(),
            name: $("#name").val(),
            family_name: $("#family_name").val(),
            gender: document.querySelector('input[name="gender"]:checked').value || "", 
            phone_prefix: $("#phone_prefix").val(),
            phone_num_noprefix: $("#phone_num_noprefix").val(),
            birthdate: $("#birthdate").val(),
            city_list: $("#city_list").val(),
            hobby_list: $("#hobby_list").val(),
            password: $("#password_txt").val(), 
            email: $("#email_txt").val(),
        };

        $.ajax({
            type: "POST",
            url: "register.aspx/CheckCredentials",
            data: JSON.stringify(dataToSend),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                if (response.d) {
                     $("#infoTextArea").show();
                    $('.box').addClass('move-right');

              
                var infoText = "Success! Received user data:\n";
                console.log(response);
                for (var key in response.d) {
                    infoText += key + ": " + response.d[key] + "\n";
                }
                $("#infoTextArea").val(infoText);
                $("#infoTextArea").show();



                } else {
                    showAlert("Register went south..");
                }
            },
            error: function (response) {
                showAlert("An error occurred.(This Username is probably already in-use, try a different one and see if it works)");
            }
        });



    });



    window.onbeforeunload = function () {
        document.body.style.opacity = 0;
    };

    window.oncontextmenu = function () {
        return false;
    };




    /* Credit to Collin Henderson @ AstralApp.com */

    (function () {
        var WIDTH, HEIGHT, canvas, con, g;
        var pxs = [];
        var rint = 50;

        $.fn.sprites = function () {
            this.append($('<canvas id="sprites"></canvas>'));
            setup(this);
        }

        function setup(container) {
            var windowSize = function () {
                WIDTH = container.innerWidth();
                HEIGHT = container.innerHeight();
                canvas = container.find('#sprites');
                canvas.attr('width', WIDTH).attr('height', HEIGHT);
            };

            windowSize();

            $(window).resize(function () {
                windowSize();
            });

            con = canvas[0].getContext('2d');

            for (var i = 0; i < 100; i++) {
                pxs[i] = new Circle();
                pxs[i].reset();
            }

            requestAnimationFrame(draw);
        }

        function draw() {
            con.clearRect(0, 0, WIDTH, HEIGHT);
            con.globalCompositeOperation = "lighter";

            for (var i = 0; i < pxs.length; i++) {
                pxs[i].fade();
                pxs[i].move();
                pxs[i].draw();
            }

            requestAnimationFrame(draw);
        }

        function Circle() {
            this.s = {
                ttl: 15000,
                xmax: 5,
                ymax: 2,
                rmax: 7,
                rt: 1,
                xdef: 960,
                ydef: 540,
                xdrift: 4,
                ydrift: 4,
                random: true,
                blink: true
            };

            this.reset = function () {
                this.x = (this.s.random ? WIDTH * Math.random() : this.s.xdef);
                this.y = (this.s.random ? HEIGHT * Math.random() : this.s.ydef);
                this.r = ((this.s.rmax - 1) * Math.random()) + 1;

                this.dx = (Math.random() * this.s.xmax) * (Math.random() < 0.5 ? -1 : 1);
                this.dy = (Math.random() * this.s.ymax) * (Math.random() < 0.5 ? -1 : 1);

                this.hl = (this.s.ttl / rint) * (this.r / this.s.rmax);
                this.rt = Math.random() * this.hl;

                this.stop = Math.random() * 0.2 + 0.4;

                this.s.rt = Math.random() + 1;
                this.s.xdrift *= Math.random() * (Math.random() < 0.5 ? -1 : 1);
                this.s.ydrift *= Math.random() * (Math.random() < 0.5 ? -1 : 1);
            };

            this.fade = function () {
                this.rt += this.s.rt;
            };

            this.draw = function () {
                var newo, cr;

                if (this.s.blink && (this.rt <= 0 || this.rt >= this.hl)) {
                    this.s.rt = this.s.rt * -1;
                }
                else if (this.rt >= this.hl) {
                    this.reset();
                }

                newo = 1 - (this.rt / this.hl);

                con.beginPath();
                con.arc(this.x, this.y, this.r, 0, Math.PI * 2, true);
                con.closePath();

                cr = this.r * newo;

                g = con.createRadialGradient(this.x, this.y, 0, this.x, this.y, (cr <= 0 ? 1 : cr));
                g.addColorStop(0.0, 'rgba(193,254,254,' + newo + ')');
                g.addColorStop(this.stop, 'rgba(193,254,254,' + (newo * 0.2) + ')');
                g.addColorStop(1.0, 'rgba(193,254,254,0)');

                con.fillStyle = g;
                con.fill();
            };

            this.move = function () {
                this.x += (this.rt / this.hl) * this.dx;
                this.y += (this.rt / this.hl) * this.dy;
                if (this.x > WIDTH || this.x < 0) this.dx *= -1;
                if (this.y > HEIGHT || this.y < 0) this.dy *= -1;
            };

            this.getX = function () {
                return this.x;
            };

            this.getY = function () {
                return this.y;
            };
        };
    })();

    $('.spriteWrap').sprites();
        </script>
</body>
    </body>

</html>

</asp:Content>