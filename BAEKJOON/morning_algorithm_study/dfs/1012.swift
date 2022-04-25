
let directions = [[-1, 0], [0, -1], [1, 0], [0, 1]]

let T = Int(readLine()!)!
for _ in 0..<T {
    let numbers = readLine()!.split(separator: " ").map{Int($0)!}
    let (M, N, K) = (numbers[0], numbers[1], numbers[2])
    var graph: [[Int]] = Array(repeating: Array(repeating: 0, count: M), count: N)
    for _ in 0..<K {
        let input = readLine()!.split(separator: " ").map{Int($0)!}
        let (x, y) = (input[0], input[1])
        graph[y][x] = 1
    }
    var count = 0
    var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: M), count: N)

    for i in 0..<N {
        for j in 0..<M {
            if graph[i][j] == 1 && visited[i][j] == false {
                dfs((i, j))
                count += 1
            }
        }
    }
    print(count)
}

func dfs(_ curr: (Int, Int)) {
       let (x, y) = curr
        visited[x][y] = true
        for dir in directions {
            let (nx, ny) = (x + dir[0], y + dir[1])
            if (0..<N).contains(nx) && (0..<M).contains(ny) && graph[nx][ny] == 1 && visited[nx][ny] == false {
                dfs((nx, ny))
            }
        }
    }