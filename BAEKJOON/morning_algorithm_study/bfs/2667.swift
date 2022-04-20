let dir = [[0, 1], [0, -1], [1, 0], [-1, 0]]

let N = Int(readLine()!)!
var board: [[Int]] = Array(repeating: [], count: N)
for i in 0..<N {
	board[i] = Array(readLine()!).map{Int(String($0))!}
}

var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: N), count: N)
var queue: [[Int]] = []
var houseCnt: [Int] = []

func bfs() -> Int {
	var count = 0
	while !queue.isEmpty {
		let pos = queue.removeFirst()
		let (x, y) = (pos[0], pos[1])
		count += 1
		for i in 0..<dir.count {
			let (nx, ny) = (x + dir[i][0], y + dir[i][1])
			if (0..<N).contains(nx) && (0..<N).contains(ny) && visited[nx][ny] == false && board[nx][ny] == 1 {
				queue.append([nx, ny])
				visited[nx][ny] = true
			}
		}
	}
	return count
}

for i in 0..<N {
	for j in 0..<N {
		if board[i][j] == 1 && visited[i][j] == false {
			queue.append([i, j])
			visited[i][j] = true
			houseCnt.append(bfs())
		}
	}
}

print(houseCnt.count)
houseCnt.sort()
for cnt in houseCnt {
	print(cnt)
}