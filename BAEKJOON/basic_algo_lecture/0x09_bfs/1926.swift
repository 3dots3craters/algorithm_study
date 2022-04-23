let numbers = readLine()!.split(separator: " ").map{Int($0)!}
let (n, m) = (numbers[0], numbers[1])
var board: [[Int]] = Array(repeating: [], count: n)
var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: m), count: n)

for i in 0..<n {
	board[i] = readLine()!.split(separator: " ").map{Int($0)!}
}

let dir: [[Int]] = [[0, 1], [1, 0], [-1, 0], [0, -1]]
var pictureCount = 0
var maxSize = 0


func bfs(_ start: [Int]) -> Int {
	var queue: [[Int]] = []
	var count = 0
	var (x, y) = (start[0], start[1])
	queue.append([x, y])
	visited[x][y] = true
	while !queue.isEmpty {
		count += 1
		let pos = queue.removeFirst()
		(x, y) = (pos[0], pos[1])
		for i in 0..<dir.count {
			let (nx, ny) = (x + dir[i][0], y + dir[i][1])
			if (0..<n).contains(nx) && (0..<m).contains(ny) && board[nx][ny] == 1 && visited[nx][ny] == false {
				queue.append([nx, ny])
				visited[nx][ny] = true
			}
		}
	}
	return count
}


for i in 0..<n {
	for j in 0..<m {
		if board[i][j] == 1 && visited[i][j] == false {
			let size = bfs([i, j])
			maxSize = max(size, maxSize)
			pictureCount += 1
		}
	}
}

print(pictureCount, maxSize)