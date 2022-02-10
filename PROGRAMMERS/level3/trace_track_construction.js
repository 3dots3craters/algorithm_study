function solution(board) {
  let minCost = Infinity;
  let cost = 0;

  function dfs(x, y, prevDir) {
    if (x == board.length - 1 && y == board.length - 1) {
      minCost = Math.min(minCost, cost);
      return;
    }
    if (cost >= minCost || board[x][y] == 1 || board[x][y] == 2) {
      return;
    }
    board[x][y] = 2;
    for (let dir of ["N", "E", "W", "S"]) {
      if (prevDir == "" || prevDir == dir) cost += 100;
      else cost += 600;
      switch (dir) {
        case "N":
          if (x - 1 >= 0) dfs(x - 1, y, dir);
          break;
        case "E":
          if (y + 1 != board.length) dfs(x, y + 1, dir);
          break;
        case "W":
          if (y - 1 >= 0) dfs(x, y - 1, dir);
          break;
        case "S":
          if (x + 1 != board.length) dfs(x + 1, y, dir);
          break;
      }
      if (prevDir == "" || prevDir == dir) cost -= 100;
      else cost -= 600;
    }
    board[x][y] = 0;
  }

  dfs(0, 0, "");
  return minCost;
}

const board = [
  [0, 0, 1, 0],
  [0, 0, 0, 0],
  [0, 1, 0, 1],
  [1, 0, 0, 0],
];
console.log(solution(board));

/* 
입출력 예
board	result
[[0,0,0],[0,0,0],[0,0,0]]	900
[[0,0,0,0,0,0,0,1],[0,0,0,0,0,0,0,0],[0,0,0,0,0,1,0,0],[0,0,0,0,1,0,0,0],[0,0,0,1,0,0,0,1],[0,0,1,0,0,0,1,0],[0,1,0,0,0,1,0,0],[1,0,0,0,0,0,0,0]]	3800
[[0,0,1,0],[0,0,0,0],[0,1,0,1],[1,0,0,0]]	2100
[[0,0,0,0,0,0],[0,1,1,1,1,0],[0,0,1,0,0,0],[1,0,0,1,0,1],[0,1,0,0,0,1],[0,0,0,0,0,0]]	3200

[제한사항]
board는 2차원 정사각 배열로 배열의 크기는 3 이상 25 이하입니다.
board 배열의 각 원소의 값은 0 또는 1 입니다.
도면의 가장 왼쪽 상단 좌표는 (0, 0)이며, 가장 우측 하단 좌표는 (N-1, N-1) 입니다.
원소의 값 0은 칸이 비어 있어 도로 연결이 가능함을 1은 칸이 벽으로 채워져 있어 도로 연결이 불가능함을 나타냅니다.
board는 항상 출발점에서 도착점까지 경주로를 건설할 수 있는 형태로 주어집니다.
출발점과 도착점 칸의 원소의 값은 항상 0으로 주어집니다.

*/
