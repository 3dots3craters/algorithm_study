/*

1. 큐에 대기 중인 사람들을 넣어둠 
	- 값을 숫자 분으로 바꾸어서 저장 ex) 08:00 => 480
2. 반복문을 n번 도는 동안
	- 셔틀에 탄 사람 수가 m이 될 때까지 or 큐에 남아 있는 사람이 없을 때까지
	- 만약 마지막 셔틀버스면서
		- 셔틀에 탄 사람 수가 m이 된 경우 -> 마지막 탑승자 도착 시각에서 1분을 뺀 시간을 출력
		- 큐에 남아 있는 사람이 없는 경우 -> 마지막 셔틀 운행 시각을 출력

*/

function getStringTime(numberTime) {
  const hour = String(Math.floor(numberTime / 60)).padStart(2, "0");
  const min = String(numberTime % 60).padStart(2, "0");
  return hour + ":" + min;
}

function solution(n, t, m, timetable) {
  let queue = [];
  let busTime = 540;

  timetable.sort();

  for (let time of timetable) {
    const splitTime = time.split(":").map((string) => Number(string));
    const numberTime = splitTime[0] * 60 + splitTime[1];
    queue.push(numberTime);
  }

  for (let i = 0; i < n; i++) {
    let [count, lastOne] = [0, 0];
    while (queue.length > 0 && queue[0] <= busTime && count < m) {
      lastOne = queue.shift();
      count += 1;
    } // while문으로 카운팅하는 게 아니라 탑승 가능한 인원수를 재서 비교했으면 더 효율성이 좋았을 것이다.
    if (i == n - 1) {
      if (count == m) return getStringTime(lastOne - 1);
      else return getStringTime(busTime);
    }
    busTime += t;
  }
}

const n = 2;
const t = 10;
const m = 2;
const timetable = ["09:10", "09:09", "08:00"];
console.log(solution(n, t, m, timetable));

/* 
입출력 예제
n	t	m	timetable	answer
1	1	5	["08:00", "08:01", "08:02", "08:03"]	"09:00"
2	10	2	["09:10", "09:09", "08:00"]	"09:09"
2	1	2	["09:00", "09:00", "09:00", "09:00"]	"08:59"
1	1	5	["00:01", "00:01", "00:01", "00:01", "00:01"]	"00:00"
1	1	1	["23:59"]	"09:00"
10	60	45	["23:59","23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59"]	"18:00"


입력 형식
셔틀 운행 횟수 n, 셔틀 운행 간격 t, 한 셔틀에 탈 수 있는 최대 크루 수 m, 크루가 대기열에 도착하는 시각을 모은 배열 timetable이 입력으로 주어진다.

0 ＜ n ≦ 10
0 ＜ t ≦ 60
0 ＜ m ≦ 45
timetable은 최소 길이 1이고 최대 길이 2000인 배열로, 하루 동안 크루가 대기열에 도착하는 시각이 HH:MM 형식으로 이루어져 있다.
크루의 도착 시각 HH:MM은 00:01에서 23:59 사이이다.
출력 형식
콘이 무사히 셔틀을 타고 사무실로 갈 수 있는 제일 늦은 도착 시각을 출력한다. 도착 시각은 HH:MM 형식이며, 00:00에서 23:59 사이의 값이 될 수 있다.

*/
