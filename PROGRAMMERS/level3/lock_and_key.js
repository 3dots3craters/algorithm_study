function solution(key, lock) {
  var answer = false;
  const lockLen = lock.length;
  let visited = [];
  let EW = [];
  let NS = [];

  // key를 lock과 크기가 같은 2차원 배열로 만들어주기
  if (key.length != lockLen) {
    let newKey = [];
    for (let i = 0; i < lockLen; i++) {
      let arr = [];
      for (let j = 0; j < lockLen; j++) {
        let ele = i < key.length && j < key.length ? key[i][j] : 2;
        arr.push(ele);
      }
      newKey.push(arr);
    }
    key = newKey;
  }

  // 이미 봤던 키 상태인지 체크하기
  function isVisited(key) {
    if (visited.includes(key.join())) return true;
    else return false;
  }

  // 키를 90도 회전시키기
  function rotate(key) {
    let newKey = [];
    for (let i = 0; i < lockLen; i++) {
      let arr = [];
      for (let j = lockLen - 1; j >= 0; j--) arr.push(key[j][i]);
      newKey.push(arr);
    }
    return newKey;
  }

  // 키가 자물쇠의 범위를 넘어섰는지 체크하기
  function isOutOfBoundary(key) {
    for (let i = 0; i < lockLen; i++) {
      if (key[i].includes(0) || key[i].includes(1)) {
        return false;
      }
    }
    return true;
  }

  // 주어진 방향에 따라 키를 이동시키기
  function move(dir, key) {
    let newKey = key.map((ele) => Array(lockLen).fill(0));
    for (let i = 0; i < lockLen; i++) {
      for (let j = 0; j < lockLen; j++) {
        if (dir == "N") newKey[i][j] = i < lockLen - 1 ? key[i + 1][j] : 2;
        else if (dir == "S") newKey[i][j] = i > 0 ? key[i - 1][j] : 2;
        else if (dir == "E") newKey[i][j] = j > 0 ? key[i][j - 1] : 2;
        else if (dir == "W") newKey[i][j] = j < lockLen - 1 ? key[i][j + 1] : 2;
      }
    }
    return newKey;
  }

  // 키가 자물쇠에 맞는지 체크하기
  function isCorrectKey(key, lock) {
    for (let i = 0; i < lock.length; i++) {
      for (let j = 0; j < lock.length; j++) {
        let [L, K] = [lock[i][j], key[i][j]];
        if ((L == 0 && K != 1) || (L == 1 && K == 1)) {
          return false;
        }
      }
    }
    answer = true;
    return true;
  }

  function dfs(key) {
    if (
      answer ||
      isVisited(key) ||
      isOutOfBoundary(key) ||
      isCorrectKey(key, lock)
    )
      // answer가 true(맞는 자물쇠를 이미 찾은 경우) or 이미 봤던 키 상태 or 키가 자물쇠의 범위를 넘어선 상태 or 키가 자물쇠에 맞는 상태인 경우 dfs를 더 진행하지 않는다.
      return;
    visited.push(key.join()); // 한번 본 키 상태라는 걸 표시하기 위해 visited 배열에 넣는다.
    for (let currDir of ["E", "W", "S", "N"]) {
      if (currDir == "E" || currDir == "W") {
        if (EW.length == 0 || EW.includes(currDir)) EW.push(currDir);
        else continue;
      } else if (currDir == "N" || currDir == "S") {
        if (NS.length == 0 || NS.includes(currDir)) NS.push(currDir);
        else continue;
      }
      // ...
      dfs(move(currDir, key));
      if (currDir == "E" || currDir == "W") EW.pop();
      else if (currDir == "N" || currDir == "S") NS.pop();
    }
  }

  // 자물쇠가 애초에 열려있는지 체크하기
  function isOpen(lock) {
    for (let i in lock) {
      if (lock[i].includes(0)) return false;
    }
    return true;
  }

  if (isOpen(lock)) return true;
  for (let i = 0; i < 4; i++) {
    key = rotate(key);
    dfs(key);
    if (answer) break;
  }
  return answer;
}

const key = [
  [1, 0],
  [0, 0],
];
const lock = [
  [1, 1, 1],
  [1, 0, 1],
  [1, 1, 0],
];
console.log(solution(key, lock));

/* 
입출력 예
key	lock	result
[[0, 0, 0], [1, 0, 0], [0, 1, 1]]	[[1, 1, 1], [1, 1, 0], [1, 0, 1]]	true

제한사항
key는 M x M(3 ≤ M ≤ 20, M은 자연수)크기 2차원 배열입니다.
lock은 N x N(3 ≤ N ≤ 20, N은 자연수)크기 2차원 배열입니다.
M은 항상 N 이하입니다.
key와 lock의 원소는 0 또는 1로 이루어져 있습니다.
0은 홈 부분, 1은 돌기 부분을 나타냅니다.

*/
