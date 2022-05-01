let N = Int(readLine()!)!
var board = [[Character]]()

for _ in 0..<N {
    board.append(Array(readLine()!))
}

let directions = [[1, 0], [-1, 0], [0, -1], [0, 1]]
var visited1 = Array(repeating: Array(repeating: false, count: N), count: N)
var visited2 = Array(repeating: Array(repeating: false, count: N), count: N)
var count1 = 0, count2 = 0

func bfs(_ curr: (Int, Int), _ flag: Int) {
    var queue = [(Int, Int)]()
    queue.append(curr)
    if flag == 1 {
        visited1[curr.0][curr.1] = true
    } else {
        visited2[curr.0][curr.1] = true
    }
    let color = board[curr.0][curr.1]
    while !queue.isEmpty {
        let (x, y) = queue.removeFirst()
        for dir in directions {
            let (nx, ny) = (x + dir[0], y + dir[1])
            if (0..<N).contains(nx) && (0..<N).contains(ny) {
                if flag == 1 && visited1[nx][ny] == false && board[nx][ny] == color {
                    queue.append((nx, ny))
                    visited1[nx][ny] = true
                } else if flag == 2 && visited2[nx][ny] == false && ((color == "B" && board[nx][ny] == color) || (color != "B" && board[nx][ny] != "B")) {
                    queue.append((nx, ny))
                    visited2[nx][ny] = true
                }
            }
        }
    }
}

for i in 0..<N {
    for j in 0..<N {
        if visited1[i][j] == false {
            count1 += 1
            bfs((i, j), 1)
        } 
        if visited2[i][j] == false {
            count2 += 1
            bfs((i, j), 2)
        }
    }
}

print("\(count1) \(count2)")