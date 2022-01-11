function solution(dirs) {
  const move = {
    U: [0, 1],
    D: [0, -1],
    L: [-1, 0],
    R: [1, 0],
  };

  let visited = [];
  let [x, y] = [0, 0];
  for (let command of dirs) {
    let [oldX, oldY] = [x, y];
    let [newX, newY] = [oldX + move[command][0], oldY + move[command][1]];
    if (newX > 5 || newX < -5 || newY > 5 || newY < -5) continue; //범위를 넘는 경우
    let oldPos = String(oldX) + String(oldY);
    let newPos = String(newX) + String(newY);
    if (
      !visited.includes(oldPos + newPos) &&
      !visited.includes(newPos + oldPos)
    )
      //중복인지 체크
      visited.push(oldPos + newPos);
    [x, y] = [newX, newY];
  }
  return visited.length;
}

const dirs = "ULURRDLLU";
console.log(solution(dirs));

/* 

입출력 예
dirs	answer
"ULURRDLLU"	7
"LULLLLLLU"	7

제한사항
dirs는 string형으로 주어지며, 'U', 'D', 'R', 'L' 이외에 문자는 주어지지 않습니다.
dirs의 길이는 500 이하의 자연수입니다.
*/

/*
	0. 이동에 쓰일 변수 생성
		move = {
			'U': [0, 1],
			'D': [0, -1],
			'L': [-1, 0],
			'R': [1, 0]
		}
	1. 방문했던 길을 담을 변수를 생성
		visited = [시작+끝]
	2. 초기 좌표 정의
		let x = 0
		let y = 0
	3. 주어진 명령어 하나씩 순회하며 방문했던 길 담기
		for (let command of dirs) {
			let oldX = x;
			let oldY = y;
			newX = oldX + move[command][0];
			newY = oldY + move[command][1];
			if (newX > 5 || newX < -5 || newY > 5 || newY < -5) continue; //범위를 넘는 경우
			oldPos = String(oldX).padStart('+', 2) + String(oldY).padStart('+', 2);
			newPos = String(newX).padStart('+', 2) + String(newY).padStart('+', 2);
			if (!visited.includes(oldPos + newPos) && !visited.includes(newPos + oldPos))//중복인지 체크
				visited.push(oldPos + newPos);
			x = newX;
			y = newY;
		}
	4. 방문했던 길이 반환
		return visited.length;
	*/
