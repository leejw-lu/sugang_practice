    <%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

    <!DOCTYPE html>
    <html lang="en">
    <head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap" rel="stylesheet">
    <title>수룡이 잡기</title>
    <style>
      h3 {
          text-align: center;
      }
      body {
        font-family: 'Gamja Flower', cursive;
          text-align: center;
          justify-content: center;
          align-content: center;
          align-items: center;
          margin: auto;
      }
      .game {
          text-align: center;
          justify-content: center;
          align-content: center;
          align-items: center;
      }
      .score {
          text-align: center;
      }
      .cell {
        align-items: center;
        text-align: center;
        justify-content: center;
        align-content: center;
        display: inline-block; position: relative;
        width: 150px; height: 150px;
        overflow: hidden;
      }
    .row {
        flex-wrap: nowrap;
        display: block;
    }
      .gopher, .bomb {
        width: 150px; height: 150px; bottom: 0; position: absolute; transition: bottom 1s;
      }
      .gopher {
        background: url('resources/img/sd.jpg') center center no-repeat;
        background-size: 150px 150px;
      }
      .dead {
        background: url('resources/img/sd.jpg') center center no-repeat;
        background-size: 150px 150px;
      }
      .bomb {
        background: url('resources/img/bomb.png') center center no-repeat;
        background-size: 150px 150px;
      }
      .boom {
        background: url('resources/img/explode.png') center center no-repeat;
        background-size: 150px 150px;
      }
      .hidden {
        bottom: -200px;
      }
      .hole {
        width: 200px; height: 150px; position: absolute; bottom: 0;
        background: url('resources/img/mole-hole.png') center center no-repeat;
        background-size: 200px 150px;
      }
      .hole-front {
        width: 200px; height: 30px; position: absolute; bottom: 0;
        background: url('resources/img/mole-hole-front.png') center center no-repeat;
        background-size: 200px 30px;
      }
    </style>
    </head>
    <body>
    <div id="contain">
    <br>
    <h3>  </h3>
    <h3> 폭탄을 피해 수룡이를 잡아보세요! </h3>
    <br>
    <div class="score">
      <span id="timer">8</span>초
      <span id="score">0</span>점
      <span id="life">3</span>목숨
    <br>
    <br>
      <button id="start" type="button" class="btn btn-secondary btn-lg" >시작하기</button>
    </div>
    <div id="game">
      <div class="row">
        <div class="cell">
          <div class="hole"></div>
          <div class="gopher hidden"></div>
          <div class="bomb hidden"></div>
          <div class="hole-front"></div>
        </div>
        <div class="cell">
          <div class="hole"></div>
          <div class="gopher hidden"></div>
          <div class="bomb hidden"></div>
          <div class="hole-front"></div>
        </div>
        <div class="cell">
          <div class="hole"></div>
          <div class="gopher hidden"></div>
          <div class="bomb hidden"></div>
          <div class="hole-front"></div>
        </div>
      </div>
      <div class="row">
        <div class="cell">
          <div class="hole"></div>
          <div class="gopher hidden"></div>
          <div class="bomb hidden"></div>
          <div class="hole-front"></div>
        </div>
        <div class="cell">
          <div class="hole"></div>
          <div class="gopher hidden"></div>
          <div class="bomb hidden"></div>
          <div class="hole-front"></div>
        </div>
        <div class="cell">
          <div class="hole"></div>
          <div class="gopher hidden"></div>
          <div class="bomb hidden"></div>
          <div class="hole-front"></div>
        </div>
      </div>
      <div class="row">
        <div class="cell">
          <div class="hole"></div>
          <div class="gopher hidden"></div>
          <div class="bomb hidden"></div>
          <div class="hole-front"></div>
        </div>
        <div class="cell">
          <div class="hole"></div>
          <div class="gopher hidden"></div>
          <div class="bomb hidden"></div>
          <div class="hole-front"></div>
        </div>
        <div class="cell">
          <div class="hole"></div>
          <div class="gopher hidden"></div>
          <div class="bomb hidden"></div>
          <div class="hole-front"></div>
        </div>
      </div>
    </div>
    </div>


    <script>
      const $timer = document.querySelector('#timer');
      const $score = document.querySelector('#score');
      const $game = document.querySelector('#game');
      const $life = document.querySelector('#life');
      const $start = document.querySelector('#start');
      const $$cells = document.querySelectorAll('.cell');

      const holes = [0, 0, 0, 0, 0, 0, 0, 0, 0];
      let started = false;
      let score = 0;
      let time = 60;
      let life = 3;
      let timerId;
      let tickId;

      $start.addEventListener('click', () => {
        if (started) return; // 이미 시작했으면 무시
        started = true;
        console.log('시작');
        timerId = setInterval(() => {
          time = (time * 10 - 1) / 10; // 소수점 계산 시 문제있음
          $timer.textContent = time;
          if (time === 0) {
            clearInterval(timerId);
            clearInterval(tickId);
            setTimeout(() => {
              alert(`게임 오버! 점수는${score}점입니다!`);
            }, 50);
          }
        }, 100);
        tickId = setInterval(tick, 1000);
        tick();
      });

      // 화면: hidden
      // 호출스택:
      // 백그라운드 : interval(tick, 1000)
      // 태스크큐:
      let gopherPercent = 0.3;
      let bombPercent = 0.5;
      function tick() {
        holes.forEach((hole, index) => {
          if (hole) return; // 무언가 일어나고 있으면 return
          const randomValue = Math.random();
          if (randomValue < gopherPercent) {
            const $gopher = $$cells[index].querySelector('.gopher');
            holes[index] = setTimeout(() => { // 1초 뒤에 사라짐
              $gopher.classList.add('hidden');
              holes[index] = 0;
            }, 1000);
            $gopher.classList.remove('hidden');
          } else if (randomValue < bombPercent) {
            const $bomb = $$cells[index].querySelector('.bomb');
            holes[index] = setTimeout(() => { // 1초 뒤에 사라짐
              $bomb.classList.add('hidden');
              holes[index] = 0;
            }, 1000);
            $bomb.classList.remove('hidden');
          }
        });
      }

      $$cells.forEach(($cell, index) => {
        $cell.querySelector('.gopher').addEventListener('click', (event) => {
          if (!event.target.classList.contains('dead')) {
            score += 1;
            $score.textContent = score;
          }
          event.target.classList.add('dead');
          event.target.classList.add('hidden');
          clearTimeout(holes[index]); // 기존 내려가는 타이머 제거
          setTimeout(() => {
            holes[index] = 0;
            event.target.classList.remove('dead');
          }, 1000);
        });
        $cell.querySelector('.bomb').addEventListener('click', (event) => {
          event.target.classList.add('boom');
          event.target.classList.add('hidden');
          clearTimeout(holes[index]); // 기존 내려가는 타이머 제거
          setTimeout(() => {
            holes[index] = 0;
            event.target.classList.remove('boom');
          }, 1000);
          life--;
          $life.textContent = life;
          if (life === 0) {
            clearInterval(timerId);
            clearInterval(tickId);
            setTimeout(() => {
              alert(`게임 오버! 점수는${score}점`);
            }, 50);
          }
        });
      });
    </script>
    </body>
    </html>