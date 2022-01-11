function solution(m, n, board) {
  var answer = 0;
  let boardArr = board.map((ele) => ele.split(""));

  function addBlocks(start, m, n, board) {
    let result = false;
    for (let row = start; row < m - 1; row++) {
      for (let col = 0; col < n - 1; col++) {
        let pos = [
          [row, col],
          [row + 1, col],
          [row, col + 1],
          [row + 1, col + 1],
        ];
        if (
          board[pos[0][0]][pos[0][1]] != 0 &&
          board[pos[0][0]][pos[0][1]] == board[pos[1][0]][pos[1][1]] &&
          board[pos[0][0]][pos[0][1]] == board[pos[2][0]][pos[2][1]] &&
          board[pos[0][0]][pos[0][1]] == board[pos[3][0]][pos[3][1]]
        ) {
          result = true;
          for (let i = 0; i < 4; i++) {
            let rowStr = String(pos[i][0]).padStart(2, "0");
            let colStr = String(pos[i][1]).padStart(2, "0");
            let posStr = rowStr + colStr;
            set.add(posStr);
          }
        }
      }
    }
    return result;
  }

  function relocateBlocks(m, n, boardArr) {
    for (let row = m - 1; row > 0; row--) {
      for (let col = 0; col < n; col++) {
        let minus = 1;
        if (boardArr[row][col] == 0) {
          while (row - minus != 0 && boardArr[row - minus][col] == 0) {
            minus += 1;
          }
          boardArr[row][col] = boardArr[row - minus][col];
          boardArr[row - minus][col] = 0;
        }
      }
    }
    return boardArr;
  }

  function removeBlocks(set, boardArr) {
    for (let pos of set) {
      let oldRow = Number(pos.substring(0, 2));
      let oldCol = Number(pos.substring(2));
      boardArr[oldRow][oldCol] = 0;
    }
    return boardArr;
  }

  function findStartLine(m, boardArr) {
    for (let i = 0; i < m; i++) {
      let boardString = boardArr[i].join("");
      if (boardString.match(/\D/g) != null) return i;
    }
    return -1;
  }

  let start = 0;
  let set = new Set();
  while (start > -1 && start < m - 1 && addBlocks(start, m, n, boardArr)) {
    answer += set.size;
    // console.log("----------------------");
    boardArr = removeBlocks(set, boardArr);
    // console.log("set: ", set);
    // console.log("boardArr: ", boardArr);
    boardArr = relocateBlocks(m, n, boardArr);
    start = findStartLine(m, boardArr);
    // console.log("start: ", start);
    set = new Set();
  }
  return answer;
}
