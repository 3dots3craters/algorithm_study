let numbers = readLine()!.split(separator: " ").map{Int(String($0))!}
let (N, K) = (numbers[0], numbers[1])

func bfs(_ start: Int) -> Int {
    if start == K {
        return 0
    }
    var visited = Array(repeating: -1, count: 1000001)
    var queue: [Int] = []
    queue.append(start)
    visited[start] = 0

    while !queue.isEmpty {
        let curr = queue.removeFirst()
        for next in [curr + 1, curr - 1, 2 * curr] {
            if (0...100000).contains(next) && visited[next] < 0 {
                queue.append(next)
                visited[next] = visited[curr] + 1
                if next == K {
                    return visited[next]
                }
            }
        }
    }
    return -1
}

print(bfs(N))