let numbers = readLine()!.split(separator: " ").map{Int($0)!}
let (R, C) = (numbers[0], numbers[1])
var maze = [[String]]()

for _ in 0..<R {
	maze.append(Array(readLine()!).map{String($0)})
}

var queueF = [(Int, Int)](), queueJ = [(Int, Int)]()

for i in 0..<R {
	for j in 0..<C {
		if maze[i][j] == "J" {
			queueJ.append((i, j))
		} else if maze[i][j] == "F" {
			queueF.append((i, j))
		}
	}
}

let directions = [[1, 0], [-1, 0], [0, 1], [0, -1]]
var frontF = 0, frontJ = 0
var time = 0

outer: while true {
	
	let queueFLen = queueF.count - frontF
	for i in frontF..<(frontF + queueFLen) {
		let (x, y) = queueF[i]
		for dir in directions {
			let (newX, newY) = (x + dir[0], y + dir[1])
			if (0..<R).contains(newX) && (0..<C).contains(newY) && [".", "J"].contains(maze[newX][newY]) {
				queueF.append((newX, newY))
				maze[newX][newY] = "F"
			} 
		}
	}
	frontF += queueFLen

	time += 1
	
	let queueJLen = queueJ.count - frontJ
	if queueJLen == 0 {
		print("IMPOSSIBLE")
		break outer
	}
	for i in frontJ..<(frontJ + queueJLen) {
		let (x, y) = queueJ[i]
		if x == 0 || x == R - 1 || y == 0 || y == C - 1 {
			print(time)
			break outer
		}
		for dir in directions {
			let (newX, newY) = (x + dir[0], y + dir[1])
			if (0..<R).contains(newX) && (0..<C).contains(newY) && ["."].contains(maze[newX][newY]) {
				queueJ.append((newX, newY))
				maze[newX][newY] = "J"		
			} 
		}
	}
	frontJ += queueJLen
}