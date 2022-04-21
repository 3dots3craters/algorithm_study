let computerCount = Int(readLine()!)! + 1 // 1번부터 시작하기 때문에 1을 더해줌
let matchingCount = Int(readLine()!)!
var graph: [[Int]] = Array(repeating: Array(repeating: 0, count: computerCount), count: computerCount)

for _ in 0..<matchingCount {
	let numbers = readLine()!.split(separator: " ").map{Int($0)!}
	let (x, y) = (numbers[0], numbers[1])
	graph[x][y] = 1
	graph[y][x] = 1
}

var queue: [Int] = []
var visited: [Bool] = Array(repeating: false, count: computerCount)

func bfs(_ start: Int) -> Int{
	var count = -1
	queue.append(start)
	visited[start] = true

	while !queue.isEmpty {
		let curr = queue.removeFirst()
		count += 1
		for next in 1..<computerCount {
			if graph[curr][next] == 1 && visited[next] == false {
				queue.append(next)
				visited[next] = true
			}
		}	
	}
	return count
}

print(bfs(1))