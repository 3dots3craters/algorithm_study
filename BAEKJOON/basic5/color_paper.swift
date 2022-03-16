let N = Int(readLine()!)!
var grid: [[Int]] = Array(repeating: Array(repeating: 0, count: 1001), count: 1001)
var countArr: [Int] = Array(repeating: 0, count: N+1)

for n in 0..<N {
	let square = readLine()!.split(separator: " ").map{Int($0)!}
	for i in square[0]..<(square[0] + square[2]) {
		for j in square[1]..<(square[1] + square[3]) {
			let oldValue = grid[j][i]
			let newValue = n + 1; 
			grid[j][i] = newValue
			countArr[oldValue] -= 1
			countArr[newValue] += 1
		}
	}
}

for n in 1..<(N+1) {
	print(countArr[n])
}