// 3차원 배열

let directions = [(x: 1, y: 0, z: 0), (x: -1, y: 0, z: 0), (x: 0, y: 1, z:0), (x: 0, y: -1, z: 0), (x: 0, y: 0, z: -1), (x: 0, y: 0, z: 1)]
var answer: String = ""

while true {

	// 입력 처리
	let numbers = readLine()!.split(separator: " ").map{Int($0)!}
	let (L, R, C) = (numbers[0], numbers[1], numbers[2])
	if L + R + C == 0 {
		break
	}
	var building = [[[String]]]()
	var visited = Array(repeating: Array(repeating: Array(repeating: -1, count: C), count: R), count: L)
	var start = (x: 0, y: 0, z: 0)
	var minutes = -1 // 탈출할 수 없으면 -1, 탈출할 수 있으면 0보다 큰 숫자값
	for l in 0..<L {
		var floor = [[String]]()
		for r in 0..<R {
			floor.append(Array(readLine()!.map{String($0)}))
			if floor[r].contains("S") {
				start = (x: r, y: floor[r].firstIndex(of: "S")!, z: l) // 시작점 위치 파악 
			}
		}
		building.append(floor)
		let _ = readLine()! // 빈 줄 입력 생략
	}

	// bfs
	var queue = [(x: Int, y: Int, z: Int)]()
	queue.append(start)
	visited[start.z][start.x][start.y] = 0 
	main: while !queue.isEmpty {
		let (x, y, z) = queue.removeFirst()
		for dir in directions {
			let (newX, newY, newZ) = (x + dir.x, y + dir.y, z + dir.z)
			if (0..<L).contains(newZ) && (0..<R).contains(newX) && (0..<C).contains(newY) {
				if building[newZ][newX][newY] == "." && visited[newZ][newX][newY] < 0 {
					queue.append((x: newX, y: newY, z: newZ))
					visited[newZ][newX][newY] = visited[z][x][y] + 1
				}
				else if building[newZ][newX][newY] == "E" {
					minutes = visited[z][x][y] + 1
					break main
				}
			}
		}
	}

	if minutes > 0 {
		answer += "Escaped in \(minutes) minute(s).\n"
	} else {
		answer += "Trapped!\n"
	}
}

print(answer)
