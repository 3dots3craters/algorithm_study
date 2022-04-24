let numbers = readLine()!.split(separator: " ").map{Int($0)!}
let (n, m) = (numbers[0], numbers[1])
var board: [[Int]] = Array(repeating: [], count: m)

for i in 0..<m {
	board[i] = readLine()!.split(separator: " ").map{Int($0)!}
}

let dir: [[Int]] = [[0, 1], [1, 0], [-1, 0], [0, -1]]
var queue: [[Int]] = []
var result = -1
for i in 0..<m {
    for j in 0..<n {
        if board[i][j] == 1 {
            queue.append([i, j])
        }
    }
}

var index = 0
while index < queue.count {
    result += 1
    for i in index..<queue.count {
        let pos = queue[i]
        let (x, y) = (pos[0], pos[1])
        index += 1
        for i in 0..<dir.count {
            let (nx, ny) = (x + dir[i][0], y + dir[i][1])
            if (0..<m).contains(nx) && (0..<n).contains(ny) && board[nx][ny] == 0 {
                board[nx][ny] = 1
                queue.append([nx, ny])
            }
        }
    }
}

for line in board {
    if line.contains(0) {
        result = -1
    }
}

print(result)