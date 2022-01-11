function solution(grid) {
  var answer = [];

  let route = [];

  let move = {
    S: {
      UP: ["-1", "0", "UP"],
      DOWN: ["1", "0", "DOWN"],
      LEFT: ["0", "-1", "LEFT"],
      RIGHT: ["0", "1", "RIGHT"],
    },
    L: {
      UP: ["0", "-1", "LEFT"],
      DOWN: ["0", "1", "RIGHT"],
      LEFT: ["1", "0", "DOWN"],
      RIGHT: ["-1", "0", "UP"],
    },
    R: {
      UP: ["0", "1", "RIGHT"],
      DOWN: ["0", "-1", "LEFT"],
      LEFT: ["-1", "0", "UP"],
      RIGHT: ["1", "0", "DOWN"],
    },
  };

  function check(x, y, dir) {
    console.log("grid[y]: ", grid[y]);
    let block = grid[y][x] != undefined ? grid[y][x] : "X";
    console.log("block: ", block);
    if (dir) {
      let [newX, newY] = [
        x + Number(move[block][dir][1]),
        y + Number(move[block][dir][0]),
      ];
      if (route.push())
        route.push(String(y) + String(x) + String(newY) + String(newX));
      check(newX, newY, move[block][dir][2]);
    } else {
      for (let light of ["UP", "DOWN", "LEFT", "RIGHT"]) {
        console.log("light: ", light);
        let [newX, newY] = [
          x + Number(move[block][light][1]),
          y + Number(move[block][light][0]),
        ];
        route.push(String(y) + String(x) + String(newY) + String(newX));
        check(newX, newY, move[block][light][2]);
      }
    }
  }

  for (let i in grid) {
    for (let j in grid[0]) {
      console.log("i: ", i, "j: ", j);
      check(i, j, 0);
    }
  }
  return answer;
}

const grid = ["SL", "LR"];
console.log(solution(grid));

/* 

입출력 예
grid	result
["SL","LR"]	[16]
["S"]	[1,1,1,1]
["R","R"]	[4,4]

제한사항
1 ≤ grid의 길이 ≤ 500
1 ≤ grid의 각 문자열의 길이 ≤ 500
grid의 모든 문자열의 길이는 서로 같습니다.
grid의 모든 문자열은 'L', 'R', 'S'로 이루어져 있습니다.

 */
