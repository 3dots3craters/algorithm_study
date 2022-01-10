function solution(lines) {
  var answer = 0;
  let time = [];
  let lineInfos = [];

  for (let i in lines) {
    let [_, response, process] = lines[i].split(" ");
    let responseTime = response
      .split(":")
      .map((ele, i) => {
        switch (i) {
          case 0:
            return 60 * 60 * ele;
          case 1:
            return 60 * ele;
          default:
            return Number(ele);
        }
      })
      .reduce((sum, ele) => (sum += ele));
    let requestTime =
      responseTime -
      Number(
        process
          .split("")
          .filter((ele) => ele != "s")
          .join("")
      ) +
      0.001;
    time.push(requestTime);
    time.push(responseTime);
    lineInfos.push([requestTime, responseTime]);
  }
  for (let i of time) {
    let count = 0;
    let start = i;
    let end = i + 1 - 0.0001;
    for (let [lineStart, lineEnd] of lineInfos) {
      if (lineStart <= end && lineEnd >= start) count += 1;
    }
    answer = Math.max(answer, count);
  }
  return answer;
}

const lines = ["2016-09-15 01:00:04.002 2.0s", "2016-09-15 01:00:07.000 2s"];
console.log(solution(lines));

/* 
예제1
입력: [
"2016-09-15 01:00:04.001 2.0s",
"2016-09-15 01:00:07.000 2s"
]

출력: 1

예제2
입력: [
"2016-09-15 01:00:04.002 2.0s",
"2016-09-15 01:00:07.000 2s"
]

출력: 2

설명: 처리시간은 시작시간과 끝시간을 포함하므로
첫 번째 로그는 01:00:02.003 ~ 01:00:04.002에서 2초 동안 처리되었으며,
두 번째 로그는 01:00:05.001 ~ 01:00:07.000에서 2초 동안 처리된다.
따라서, 첫 번째 로그가 끝나는 시점과 두 번째 로그가 시작하는 시점의 구간인 01:00:04.002 ~ 01:00:05.001 1초 동안 최대 2개가 된다.

예제3
입력: [
"2016-09-15 20:59:57.421 0.351s",
"2016-09-15 20:59:58.233 1.181s",
"2016-09-15 20:59:58.299 0.8s",
"2016-09-15 20:59:58.688 1.041s",
"2016-09-15 20:59:59.591 1.412s",
"2016-09-15 21:00:00.464 1.466s",
"2016-09-15 21:00:00.741 1.581s",
"2016-09-15 21:00:00.748 2.31s",
"2016-09-15 21:00:00.966 0.381s",
"2016-09-15 21:00:02.066 2.62s"
]

출력: 7

설명: 아래 타임라인 그림에서 빨간색으로 표시된 1초 각 구간의 처리량을 구해보면 (1)은 4개, (2)는 7개, (3)는 2개임을 알 수 있다. 따라서 초당 최대 처리량은 7이 되며, 동일한 최대 처리량을 갖는 1초 구간은 여러 개 존재할 수 있으므로 이 문제에서는 구간이 아닌 개수만 출력한다.

*/
