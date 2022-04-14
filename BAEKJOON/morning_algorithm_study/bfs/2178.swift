let numbers = readLine()!.split(separator: " ").map{Int($0)!}
let N = numbers[0], M = numbers[1]
let direction: [[Int]] = [[-1, 0], [0, 1], [0, -1], [1, 0]]
var board: [[Int]] = Array(repeating: [], count: N)

for i in 0..<N {
	board[i] = Array(readLine()!).map{Int(String($0))!}
}

var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: M), count: N)
var queue: [[Int]] = [[0, 0]]
var count = 0

while !queue.isEmpty {
	let pos = queue.removeFirst() 
	visited[pos[0]][pos[1]] = true
	for dir in direction {
		let newPosY = pos[0] + dir[0], newPosX = pos[1] + dir[1]
		if newPosY >= 0 && newPosY < N && newPosX >= 0 && newPosX < M && visited[newPosY][newPosX] == false {
			if board[newPosY][newPosX] == 1 {
				board[newPosY][newPosX] = board[pos[0]][pos[1]] + 1 
				queue.append([newPosY, newPosX])
			}
		}
	}
}

print(board[N - 1][M - 1])