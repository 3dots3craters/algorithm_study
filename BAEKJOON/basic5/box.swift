let T = Int(readLine()!)!

for _ in 0..<T {
	let MN = readLine()!.split(separator: " ").map{Int($0)!}
	let m = MN[0], n = MN[1]
	var grid: [[Int]] = Array(repeating: Array(repeating: -1, count: m), count: n)
	for i in 0..<m {
		let input = readLine()!.split(separator: " ").map{Int($0)!}
		for j in 0..<n {
			grid[j][m - i - 1] = input[j]
		}
	}
	var count = 0
	for i in 0..<n {
		var space: [Int] = []
		for j in 0..<m {
			if grid[i][j] == 0 {
				space.append(j)
			}
			else if grid[i][j] == 1 {
				if space.count > 0 {
					let spaceIndex = space.removeFirst()
					count += (j - spaceIndex)
					space.append(j)
				}
			}
		}
	}
	print(count)
}
