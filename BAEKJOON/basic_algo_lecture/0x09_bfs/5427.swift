// 사람이 빌딩을 탈출했거나, 아예 탈출하지 못하는 상황이면 while문 탈출
	// 큐 안에 담긴 만큼만 반복문 돌기
		// 불 한 번
		// 사람 한 번
			// 불이 번진 곳으로는 이동 못함.

let N = Int(readLine()!)!
let directions = [[0, 1], [0, -1], [1, 0], [-1, 0]]
var answer: String = ""

for _ in 0..<N {
	let numbers = readLine()!.split(separator: " ").map{Int($0)!}
	let (w, h) = (numbers[0], numbers[1])
	var building = [[String]]()
	var queueF = [[Int]](), queueS = [[Int]]()
	var frontF = 0, frontS = 0
	
	for _ in 0..<h {
		building.append(Array(readLine()!).map{String($0)})
	}
	
	for i in 0..<h {
		for j in 0..<w {
			if building[i][j] == "*" {
				queueF.append([i, j])
			} else if building[i][j] == "@" {
				queueS.append([i, j])
			}
		}
	}
	
	var time = 1
	outer: while true {
		let rangeF = queueF.count - frontF
		for i in frontF..<(frontF + rangeF) {
			let curr = queueF[i]
			for dir in directions {
				let (newX, newY) = (curr[0] + dir[0], curr[1] + dir[1])
				if (0..<h).contains(newX) && (0..<w).contains(newY) && [".", "@"].contains(building[newX][newY]) {
					queueF.append([newX, newY])
					building[newX][newY] = "*"
				}
			}
		}
		frontF += rangeF
		let rangeS = queueS.count - frontS 
		if rangeS == 0 {
			answer += "IMPOSSIBLE\n"
			break outer
		}
		for i in frontS..<(frontS + rangeS) {
			let curr = queueS[i]
			if curr[0] == h - 1 || curr[1] == w - 1 || curr[0] == 0 || curr[1] == 0 {
				answer += "\(time)\n"
				break outer
			}
			for dir in directions {
				let (newX, newY) = (curr[0] + dir[0], curr[1] + dir[1])
				if (0..<h).contains(newX) && (0..<w).contains(newY) && building[newX][newY] == "." {
					queueS.append([newX, newY])
					building[newX][newY] = "@"
				}
			}
		}
		time += 1
		frontS += rangeS
	} 		
}

print(answer)