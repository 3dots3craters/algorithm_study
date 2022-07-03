const fs = require("fs");
const input = fs.readFileSync("/dev/stdin").toString().trim().split("\n");
const dir = [
  [0, 1],
  [1, 0],
  [0, -1],
  [-1, 0],
];

let [N, M] = input[0].split(" ").map((ele) => Number(ele));
let map = [];

for (let i = 1; i <= N; i++) {
  map.push(input[i].split("").map((ele) => Number(ele)));
}

bfs(0, 0);

console.log(map[N - 1][M - 1]);

function bfs(row, col) {
  let queue = [];
  queue.push([row, col]);

  while (queue.length > 0) {
    let [curX, curY] = queue.shift();

    for (let i = 0; i < dir.length; i++) {
      let [newX, newY] = [curX + dir[i][0], curY + dir[i][1]];
      if (
        newX >= 0 &&
        newX < N &&
        newY >= 0 &&
        newY < M &&
        map[newX][newY] == 1
      ) {
        map[newX][newY] += map[curX][curY];
        queue.push([newX, newY]);
      }
    }
  }
}