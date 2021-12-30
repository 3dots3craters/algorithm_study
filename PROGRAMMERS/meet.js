function solution(line) {
  var answer = [];
  let meet = new Set();
  let [top, bottom, left, right] = [-Infinity, Infinity, Infinity, -Infinity];

  for (let i = 0; i < line.length - 1; i++) {
    for (let j = i + 1; j < line.length; j++) {
      // 교점 구하기
      let [A, B, E] = line[i];
      let [C, D, F] = line[j];
      let x = (B * F - E * D) / (A * D - B * C);
      let y = (E * C - A * F) / (A * D - B * C);
      // 정수인지 체크하고 배열에 담기
      if (x == Math.floor(x) && y == Math.floor(y)) {
        x = x === -0 ? 0 : x;
        y = y === -0 ? 0 : y;
        // 위아래, 양옆 각각 start, end 라인 구하기
        if (x < left) left = x;
        if (x > right) right = x;
        if (y > top) top = y;
        if (y < bottom) bottom = y;
        let position = String(x) + "." + String(y);
        meet.add(position);
      }
    }
  }
  //별찍기
  for (let len = bottom; len <= top; len++) {
    let str = "";
    for (let width = left; width <= right; width++) {
      let currPos = String(width) + "." + String(len);
      if (meet.has(currPos)) str += "*";
      else str += ".";
    }
    answer.unshift(str);
  }

  return answer;
}
const line = [
  [0, 1, -1],
  [1, 0, -1],
  [1, 0, 1],
];
console.log(solution(line));

/* 
입출력 예
line	result
[[2, -1, 4], [-2, -1, 4], [0, -1, 1], [5, -8, -12], [5, 8, 12]]	["....*....", ".........", ".........", "*.......*", ".........", ".........", ".........", ".........", "*.......*"]
[[0, 1, -1], [1, 0, -1], [1, 0, 1]]	["*.*"]
[[1, -1, 0], [2, -1, 0]]	["*"]
[[1, -1, 0], [2, -1, 0], [4, -1, 0]]	["*"]

제한사항
line의 세로(행) 길이는 2 이상 1,000 이하인 자연수입니다.
line의 가로(열) 길이는 3입니다.
line의 각 원소는 [A, B, C] 형태입니다.
A, B, C는 -100,000 이상 100,000 이하인 정수입니다.
무수히 많은 교점이 생기는 직선 쌍은 주어지지 않습니다.
A = 0이면서 B = 0인 경우는 주어지지 않습니다.
정답은 1,000 * 1,000 크기 이내에서 표현됩니다.
별이 한 개 이상 그려지는 입력만 주어집니다.

*/
