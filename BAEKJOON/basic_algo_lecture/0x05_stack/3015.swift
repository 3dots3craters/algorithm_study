let N = Int(readLine()!)!
var stack: [Int] = []
var count = 0

for _ in 0..<N {
	let number = Int(readLine()!)!
	var max = -1
	
	for i in 0..<stack.count {
		let index = stack.count - 1 - i
		if stack[index] < max || number < max {
			continue
		}
		count += 1
		max = stack[index]
	}
	stack.append(number)
}

print(count)

// 시간복잡도를 O(N)으로 줄여야 한다.