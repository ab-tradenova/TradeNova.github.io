<!DOCTYPE html>
<html lang="ru">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Crypto Arbitrage</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial, sans-serif;
}

body{

background:linear-gradient(180deg,#dff3ff,#ffffff);

min-height:100vh;

color:#1d2b34;

}

/* HERO */

.hero{

height:90vh;

display:flex;

justify-content:center;

align-items:center;

text-align:center;

padding:40px;

}

.glass{

background:rgba(255,255,255,0.35);

backdrop-filter:blur(14px);

border-radius:20px;

padding:50px;

box-shadow:0 20px 60px rgba(0,0,0,0.08);

border:1px solid rgba(255,255,255,0.5);

max-width:800px;

}

.hero h1{

font-size:52px;

margin-bottom:20px;

}

.hero p{

font-size:20px;

color:#486473;

}

.button{

margin-top:30px;

padding:15px 30px;

border:none;

border-radius:12px;

background:#7dd3ff;

font-size:18px;

cursor:pointer;

transition:0.3s;

}

.button:hover{

transform:translateY(-3px);

background:#5cc5ff;

}

/* SECTIONS */

.section{

padding:100px 20px;

max-width:1100px;

margin:auto;

}

.section h2{

text-align:center;

font-size:36px;

margin-bottom:40px;

}

/* cards */

.cards{

display:flex;

gap:30px;

flex-wrap:wrap;

}

.card{

flex:1;

min-width:260px;

background:rgba(255,255,255,0.4);

backdrop-filter:blur(16px);

padding:30px;

border-radius:18px;

border:1px solid rgba(255,255,255,0.5);

box-shadow:0 15px 40px rgba(0,0,0,0.06);

transition:0.4s;

}

.card:hover{

transform:translateY(-8px);

}

/* CONTACT */

.contacts{

display:flex;

justify-content:center;

gap:20px;

flex-wrap:wrap;

margin-top:40px;

}

.contactBtn{

padding:14px 26px;

border-radius:12px;

border:none;

background:#7dd3ff;

font-size:17px;

cursor:pointer;

transition:0.3s;

}

.contactBtn:hover{

transform:translateY(-3px);

background:#5cc5ff;

}

/* chart */

.chartBox{

background:rgba(255,255,255,0.4);

backdrop-filter:blur(14px);

padding:40px;

border-radius:20px;

border:1px solid rgba(255,255,255,0.5);

}

footer{

text-align:center;

padding:50px;

color:#6a8795;

}

/* animation */

.fade{

opacity:0;

transform:translateY(40px);

transition:1s;

}

.fade.show{

opacity:1;

transform:translateY(0);

}

/* mobile */

@media(max-width:700px){

.hero h1{

font-size:36px;

}

}

</style>

</head>

<body>


<section class="hero">

<div class="glass">

<h1>Арбитраж криптовалют</h1>

<p>

Научись находить ценовые различия на криптовалютных биржах  
и зарабатывать на них системно.  
Без угадывания рынка — только логика и стратегия.

</p>

<button class="button" onclick="scrollDown()">Как это работает</button>

</div>

</section>



<section class="section fade">

<h2>Почему работает арбитраж</h2>

<div class="cards">

<div class="card">

<h3>Разница цен</h3>

<p>

На разных биржах криптовалюта может стоить немного по-разному.  
Эта разница и создаёт возможность заработка.

</p>

</div>


<div class="card">

<h3>Без трейдинга</h3>

<p>

Не нужно угадывать рынок или строить сложные прогнозы.

</p>

</div>


<div class="card">

<h3>Крипто работает 24/7</h3>

<p>

Рынок открыт всегда, поэтому возможности появляются постоянно.

</p>

</div>

</div>

</section>



<section class="section fade">

<h2>Пример роста капитала</h2>

<div class="chartBox">

<canvas id="chart"></canvas>

</div>

</section>



<section class="section fade">

<h2>Связаться со мной</h2>

<p style="text-align:center;max-width:700px;margin:auto;color:#4c6b79">

Если тебе интересна система заработка на криптоарбитраже —  
напиши мне и получи подробную информацию об обучении.

</p>

<div class="contacts">

<a href="https://wa.me/message/NUK7KMK2GS2VC1">

<button class="contactBtn">WhatsApp</button>

</a>

<a href="https://t.me/sjsksnjdj">

<button class="contactBtn">Telegram</button>

</a>

<a href="https://www.instagram.com/julya_akr?igsh=MXdtM2k5NTFqdnFpYQ%3D%3D&utm_source=qr">

<button class="contactBtn">Instagram</button>

</a>

<a href="mailto:tradenova@internet.ru">

<button class="contactBtn">Email</button>

</a>

</div>

</section>



<footer>

© 2026 Crypto Arbitrage

</footer>



<script>

/* scroll */

function scrollDown(){

window.scrollTo({

top:window.innerHeight,

behavior:"smooth"

})

}

/* chart */

const canvas=document.getElementById("chart")

const ctx=canvas.getContext("2d")

canvas.width=canvas.offsetWidth

canvas.height=300

const data=[10,20,28,40,55,70]

ctx.lineWidth=4

ctx.beginPath()

for(let i=0;i<data.length;i++){

let x=i*(canvas.width/(data.length-1))

let y=canvas.height-(data[i]*3)

if(i===0){

ctx.moveTo(x,y)

}else{

ctx.lineTo(x,y)

}

}

ctx.stroke()

/* animation */

const elements=document.querySelectorAll(".fade")

const observer=new IntersectionObserver(entries=>{

entries.forEach(entry=>{

if(entry.isIntersecting){

entry.target.classList.add("show")

}

})

})

elements.forEach(el=>observer.observe(el))

</script>


</body>
</html>
