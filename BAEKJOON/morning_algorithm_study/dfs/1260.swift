let numbers = readLine()!.split(separator: " ").map{Int($0)!}
let (N, M, V) = (numbers[0] + 1, numbers[1], numbers[2])
var graph: [[Int]] = Array(repeating: Array(repeating: 0, count: N), count: N)
var stack: [Int] = [], queue: [Int] = []
var answerB: [String] = []
var answerD: [String] = []
var visitedB: [Bool] = Array(repeating: false, count: N)
var visitedD: [Bool] = Array(repeating: false, count: N)

for _ in 0..<M {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    let (r, c) = (input[0], input[1])
    graph[r][c] = 1
    graph[c][r] = 1
}

func dfs(_ curr: Int) {
    visitedD[curr] = true
    answerD.append("\(curr)")
    for next in 1..<N {
        if graph[curr][next] == 1 && visitedD[next] == false {
            dfs(next)
        }
    }
}

func bfs() {
    queue.append(V)
    visitedB[V] = true
    answerB.append("\(V)")
    while !queue.isEmpty {
        let curr = queue.removeFirst()
        for next in 1..<N {
            if graph[curr][next] == 1 && visitedB[next] == false {
                queue.append(next)
                visitedB[next] = true
                answerB.append("\(next)")
            } 
        }
    }
}

dfs(V)
bfs()
print(answerD.joined(separator: " "))
print(answerB.joined(separator: " "))
