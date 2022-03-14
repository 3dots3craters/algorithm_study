/*

1. [[row, col]] 형태로 데이터 변형

2. 사회자가 부른 수에 해당하는 좌표값 0으로 바꾸기

3. 빙고인지 체크

4. 빙고면 해당 수가 몇 번째 수인지 출력

*/

var board: [[Int]] = Array(repeating: [], count: 5);
var pos: [[Int]] = Array(repeating: [], count: 26);
var isEnd = false;

func canDrawHorizontalLine(_ board: [[Int]]) -> Int {
	var count = 0
	for i in 0..<5 {
		if board[i].max()! == 0 {
			count += 1;
		}
	}
	return count;
}


func canDrawVerticalLine(_ board: [[Int]]) -> Int {
	var count = 0
	var newBoard: [[Int]] = Array(repeating: [0, 0, 0, 0, 0], count: 5);
	for i in 0..<5 {
		for j in 0..<5 {
			newBoard[j][i] = board[i][j]
		}
	}

	for i in 0..<5 {
		if newBoard[i].max()! == 0 {
			count += 1
		}
	}

	return count;
}


func canDrawDiagonalLine(_ board: [[Int]]) -> Int {
	
	var count = 0;
	if board[2][2] != 0 {
		return 0;
	}
	
	if board[0][0] == board[1][1] && board[1][1] == board[3][3] && board[3][3] == board[4][4] {
		count += 1
	}

	if board[0][4] == board[1][3] && board[1][3] == board[3][1] && board[3][1] == board[4][0] {
		count += 1
	}
	return count;
}

func isBingo(_ board: [[Int]]) -> Int {
	var count = 0
	count += canDrawHorizontalLine(board) 
	count += canDrawVerticalLine(board) 
	count += canDrawDiagonalLine(board) 
	return count;
}

for i in 0..<5 {
	board[i] = readLine()!.split(separator: " ").map{Int($0)!}
	for j in 0..<5 {
		pos[board[i][j]] = [i, j]
	}
}

for i in 0..<5 {
	let given = readLine()!.split(separator: " ").map{Int($0)!}
	if isEnd == true {
		break
	}
	for j in 0..<5 {

		let newPos = pos[given[j]]

		board[newPos[0]][newPos[1]] = 0
		if isBingo(board) > 2 {
			// print(board)
			isEnd = true
			print(i * 5 + j + 1)
			break
		}
	}
}

