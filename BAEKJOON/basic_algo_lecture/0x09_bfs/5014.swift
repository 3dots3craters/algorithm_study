let numbers = readLine()!.split(separator: " ").map{Int(String($0))!}
let (F, S, G, U, D) = (numbers[0], numbers[1], numbers[2], numbers[3], -numbers[4])

func bfs(_ n: Int) -> Int {
    var visited = Array(repeating: -1, count: 1000001)
    var queue:[Int] = []
    visited[n] = 0
    if n == G {
        return 0
    }
    queue.append(n)

    while !queue.isEmpty {
        let curr = queue.removeFirst()
        for move in [U, D] {
            let next = curr + move 
            if (1...F).contains(next) && visited[next] < 0 {
                visited[next] = visited[curr] + 1
                if next == G {
                    return visited[next]
                }
                queue.append(next)
            }
        }
    }
    return -1    
}

let result = bfs(S)
if result > -1 {
    print(result)
} else {
    print("use the stairs")
}
