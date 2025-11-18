<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TrophyGalleryMenu.aspx.vb" Inherits="WebApplication1.TrophyGalleryMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>Trophies Gallery Menu</title>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        document.querySelectorAll(".row").forEach(row => {

            row.addEventListener("click", function () {
                const id = this.id;
                const encoded = encodeURIComponent(id);
                window.location.href = "TrophyGallery.aspx?trophy=" + encoded;
            });

            row.style.cursor = "pointer";
        });
    });
</script>
<style>
  :root{
    --frame-w:1365px;
    --frame-h:768px;
    --green-stroke:#e7ffde;
    --green-inner:#2fbf2f;
    --panel-bg:rgba(0,2,6,0.92);
  }
  html,body{height:100%;margin:0;background:#000;}
  .viewport{
    width:var(--frame-w);
    height:var(--frame-h);
    position:relative;
    margin:18px auto;
    background:transparent;
    overflow:hidden;
  }

  .frame-art{
    position:absolute;left:0;top:0;width:100%;height:100%;
    background-image: url('/Img/MenuGreen.png');
    background-size:cover;
    pointer-events:none;
    image-rendering: -moz-crisp-edges;
  }

  .frame-art-menu{
    position:absolute;left:0;top:0;width:100%;height:100%;
    background-image: url('/Img/AssetMenu.png');
    background-size:cover;
    pointer-events:none;
    image-rendering: -moz-crisp-edges;
  }
:root{
  --table-width: 760px;
  --row-height: 56px;
  --font: "Eurostile", Arial, sans-serif;
  --gray:#bfbfbf;
  --dark:#0a0a0a;
  --red:#c31b1b;
}

body{
  background:#050505;
  display:flex; 
  align-items:flex-start;
  justify-content:center;
  min-height:100vh;
  padding:48px 0;
  font-family:var(--font);
}

.melee-table{
  color:#fff;
  user-select:none;
  width: 600px;
  margin: 40px auto;
  padding: 8px;
  position: absolute;
  right: 332px;
  top: 106px;
}

.row{
  height:var(--row-height);
  display:flex;
  align-items:center;
  justify-content:space-between;
  padding:0 12px 0 18px;
  padding-left: 100px;
  margin-bottom:8px;
  position:relative;

  background: rgba(179,179,179);
  color: #ffffff;

  box-shadow:
    inset 0 6px 0 white,
    inset 0 -6px 0 rgba(0,0,0,0.20),
    0 0 0 2px rgba(0,0,0,0.85),
    inset 3px 0 0 white;

  border-radius:4px;
  font-size:34px;
  font-weight:700;
  letter-spacing:1px;
}

.row:hover{
  background: linear-gradient(to bottom, #ffffff 0%, #f6f6f6 50%, #ededed 100%);
  color:#000;
  box-shadow:
    inset 0 6px 0 rgba(255,255,255,0.85),
    inset 0 -6px 0 rgba(0,0,0,0.08),
    0 0 0 2px rgba(0,0,0,0.85),
    inset 3px 0 0 white; 
}

.row:hover .item{
  color:#000;
  text-shadow:none;
}

.row:hover .count{
  color:#000;
  text-shadow:none;
}

.item{
  flex:1;
  padding-left:6px;
  line-height:var(--row-height);
  text-shadow: 0 1px 0 rgba(255,255,255,0.22);
  color:#fff;
}

.count{
  display:inline-flex;
  align-items:center;
  word-spacing: 51px;
  min-width:100px;
  justify-content:right;

  font-size:32px;
  margin-left:12px;

  background: rgba(179,179,179);
  color:white;
  border-radius:4px;

  box-shadow:
    inset 0 -2px 0 rgba(0,0,0,0.15),
    0 1px 0 rgba(255,255,255,0.6);

  border: 2px solid rgba(0,0,0,0.75);
  border-right: 2px solid white;
  border-bottom:  2px solid white;
}

.row:hover .count{
  background: linear-gradient(#ffffff,#efefef);
  box-shadow:
    inset 0 -2px 0 rgba(0,0,0,0.10),
    0 1px 0 rgba(255,255,255,0.6);
}

.marker{
  position:absolute;
  left:-22px;
  width:0;
  height:0;
  border-left:10px solid transparent;
  border-right:10px solid transparent;
  border-bottom:14px solid rgba(0,0,0,0.25);
  top:18px;
  transform:scale(0.9);
  filter: drop-shadow(0 1px 0 rgba(0,0,0,0.7));
}

.row.last-visible::after {
  content:"";
  position:absolute;
  left:6px;
  right:6px;
  height:4px;
  bottom:-6px;
  background:var(--red);
  border-radius:2px;
  box-shadow:0 1px 0 rgba(0,0,0,0.6);
}

@media (max-width:820px){
  :root{
    --table-width:90vw;
    --row-height:48px;
  }

  .row{
    font-size:28px;
  }

  .count{
    font-size:20px;
    min-width:60px;
  }
}

  *{image-rendering:optimizeQuality;}

  @media(max-width:1400px){
    .viewport{transform:scale(0.95);transform-origin:top center}
  }

.pagination {
  display: flex;
  gap: 10px;
  position: absolute;
  left: 40px;
  top: 90px;
}

.melee-btn-next {
  font-family: 'Eurostile', Arial, sans-serif;
  font-size: 20px;
  font-weight: bold;
  padding: 8px 24px;
    width: 60px;
  height: 40px;

  color: #4aff4a;
  background: black;
  border: 3px solid #4aff4a;
  border-radius: 28px;

  box-shadow: 
    inset 0 0 0 4px #000, 
    0 4px 12px rgba(0,0,0,0.6);
  
  cursor: pointer;
  transition: 0.15s;
  position:absolute;
  top:574px;
  left:705px;
}

.melee-btn-prev {
  font-family: 'Eurostile', Arial, sans-serif;
  font-size: 20px;
  font-weight: bold;
  padding: 8px 24px;
    width: 60px;
  height: 40px;

  color: #4aff4a;
  background: black;
  border: 3px solid #4aff4a;
  border-radius: 28px;

  box-shadow: 
    inset 0 0 0 4px #000, 
    0 4px 12px rgba(0,0,0,0.6);
  
  cursor: pointer;
  transition: 0.15s;
  position:absolute;
  top:574px;
  left:391px;
}

.melee-btn-next:hover:not(.disabled) {
  filter: brightness(1.2);
  box-shadow:
    inset 0 0 0 4px #000,
    0 0 14px #4aff4a,
    0 4px 12px rgba(0,0,0,0.6);
}

.melee-btn-next:active:not(.disabled) {
  transform: translateY(1px);
  filter: brightness(0.9);
}

.melee-btn-next.disabled {
  filter: grayscale(0.8) brightness(0.6);
  cursor: default;
}

.melee-btn-next.disabled::before {
  border-right-color: #333 !important;
  border-left-color: #333 !important;
}

.melee-btn-prev.disabled {
  filter: grayscale(0.8) brightness(0.6);
  cursor: default;
}

.melee-btn-prev:hover:not(.disabled) {
  filter: brightness(1.2);
  box-shadow: 
    inset 0 0 0 4px #000,
    0 0 12px #4aff4a,
    0 4px 12px rgba(0,0,0,0.6);
}

.melee-btn-prev:active:not(.disabled) {
  transform: translateY(1px);
  filter: brightness(0.9);
}

.melee-btn-prev.disabled::before {
  border-right-color: #333 !important;
  border-left-color: #333 !important;
}


.arrow-left::before {
  content: "";
  position: absolute;
  left: 20px;
  top: 50%;
  width: 0;
  height: 0;
  transform: translateY(-50%);
  border-top: 10px solid transparent;
  border-bottom: 10px solid transparent;
  border-right: 14px solid #4aff4a;
}


.arrow-right::before {
  content: "";
  position: absolute;
  right: 20px;
  top: 50%;
  width: 0;
  height: 0;
  transform: translateY(-50%);
  border-top: 10px solid transparent;
  border-bottom: 10px solid transparent;
  border-left: 14px solid #4aff4a;
}
</style>
</head>
<body>
    <video class="bg-video" autoplay loop muted playsinline style="position:fixed;left:0;top:0;width:100%;height:100%;object-fit:cover;"><source src="Img/MainMenuLoop.webm" type="video/webm"/></video>
    <form id="form1" runat="server">
  <div class="viewport" role="region" aria-label="melee-frame">
    <div class="frame-art"></div>
    <div class="frame-art-menu"></div>
<div class="melee-table">
  <div class="frame">

    <div class="row" id="RaccoonMario">
      <div class="marker"></div>
      <div class="item">Raccoon Mario</div>
      <div class="count">x&nbsp;1</div>
    </div>

    <div class="row" id="Blastoise">
      <div class="marker"></div>
      <div class="item">Blastoise</div>
      <div class="count">x&nbsp;1</div>
    </div>

    <div class="row" id="Fox_Classic">
      <div class="marker"></div>
      <div class="item">Fox McCloud</div>
      <div class="count">x&nbsp;1</div>
    </div>

    <div class="row" id="FZeroRacers">
      <div class="marker"></div>
      <div class="item">F-Zero Racers</div>
      <div class="count">x&nbsp;1</div>
    </div>

    <div class="row" id="MajorasMask">
      <div class="marker"></div>
      <div class="item">Majora's Mask</div>
      <div class="count">x&nbsp;1</div>
    </div>

    <div class="row" id="Young_Link_All_Star">
      <div class="marker"></div>
      <div class="item">Young Link</div>
      <div class="count">x&nbsp;1</div>
    </div>

    <div class="row" id="Captain_Falcon_Classic">
      <div class="marker"></div>
      <div class="item">Captain Falcon</div>
      <div class="count">x&nbsp;1</div>
    </div>

    <div class="row" id="ChozoStatue">
      <div class="marker"></div>
      <div class="item">Chozo Statue</div>
      <div class="count">x&nbsp;1</div>
    </div>

    <div class="row" id="Ganondorf_Adventure">
      <div class="marker"></div>
      <div class="item">Ganondorf</div>
      <div class="count">x&nbsp;1</div>
    </div>

    <div class="row" id="Goomba">
      <div class="marker"></div>
      <div class="item">Goomba</div>
      <div class="count">x&nbsp;1</div>
    </div>

    <div class="row" id="Ho_Oh">
      <div class="marker"></div>
      <div class="item">Ho-oh</div>
      <div class="count">x&nbsp;1</div>
    </div>

    <div class="row" id="King_K_Rool">
      <div class="marker"></div>
      <div class="item">King K. Rool</div>
      <div class="count">x&nbsp;1</div>
    </div>

    <div class="row" id="Lugia">
      <div class="marker"></div>
      <div class="item">Lugia</div>
      <div class="count">x&nbsp;1</div>
    </div>

    <div class="row" id="Maximum_Tomato">
      <div class="marker"></div>
      <div class="item">Maxim Tomato</div>
      <div class="count">x&nbsp;1</div>
    </div>

    <div class="row" id="Pit">
      <div class="marker"></div>
      <div class="item">Pit</div>
      <div class="count">x&nbsp;1</div>
    </div>
  </div>
</div>
<div class="pagination">
  <button type="button" id="prevPage" class="melee-btn-prev arrow-left"></button>
  <button type="button" id="nextPage" class="melee-btn-next arrow-right"></button>
</div>
</div>
</form>
<script>
    function updateButtons() {
        const prev = document.getElementById("prevPage");
        const next = document.getElementById("nextPage");

        // On first page → disable prev
        if (currentPage === 1) {
            prev.classList.add("disabled");
        } else {
            prev.classList.remove("disabled");
        }

        // On last page → disable next
        if (currentPage * rowsPerPage >= rows.length) {
            next.classList.add("disabled");
        } else {
            next.classList.remove("disabled");
        }
    }
    const rows = Array.from(document.querySelectorAll(".melee-table .row"));
    const rowsPerPage = 7;
    let currentPage = 1;

    function renderPage() {
        rows.forEach((row, i) => {
            const start = (currentPage - 1) * rowsPerPage;
            const end = start + rowsPerPage;

            if (i >= start && i < end) {
                row.style.display = "flex";
            } else {
                row.style.display = "none";
            }

            row.classList.remove("last-visible");
        });

        // Add red underline to last visible row
        const lastVisible = rows
            .filter(r => r.style.display !== "none")
            .pop();

        if (lastVisible) lastVisible.classList.add("last-visible");
        updateButtons();
    }

    document.getElementById("nextPage").onclick = (e) => {
        e.preventDefault();
        if (currentPage * rowsPerPage < rows.length) {
            currentPage++;
            renderPage();
        }
    };

    document.getElementById("prevPage").onclick = (e) => {
        e.preventDefault();
        if (currentPage > 1) {
            currentPage--;
            renderPage();
        }
    };

    renderPage();
</script>

<script>
    document.addEventListener("keydown", function (e) {

        const video = document.querySelector(".bg-video");
        const source = video.querySelector("source");

        if (e.key === "1") {
            source.src = "Img/MainMenuLoop.webm";
        }
        else if (e.key === "2") {
            source.src = "Img/MainMenuLoopBlue.webm";
        }
        else if (e.key === "3") {
            source.src = "Img/MainMenuLoopPurple.webm";
        }
        else if (e.key === "4") {
            source.src = "Img/MainMenuLoopRed.webm";
        }
        else if (e.key === "5") {
            source.src = "Img/MainMenuLoopYellow.webm";
        } else {
            return;
        }

        video.load();
        video.play();
    });
</script>
</body>
</html>
