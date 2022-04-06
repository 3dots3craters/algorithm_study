let input = readLine()!.split(separator: " ").map{Int($0)!}
let N = input[0], M = input[1]
var deque: [Int] = []
for i in 1...N {
	deque.append(i)
}
var count = 0

let numbers = readLine()!.split(separator: " ").map{Int($0)!}
for i in 0..<numbers.count {
	let num = numbers[i]

	while num != deque.first! {
		let numIdx = deque.firstIndex(of: num)!
		if numIdx < deque.count - numIdx {
			deque.append(deque.removeFirst())
		}
		else {
			deque.insert(deque.removeLast(), at: 0)
		}
		count += 1
	}
	if num == deque.first! {
		deque.removeFirst()
	}
	// print("-------------------------------------------")
	// print("deque :\(deque)")
	// print("frontIdx :\(frontIdx)")
	// print("backIdx :\(backIdx)")
	// print("num :\(num)")
	// print("deque[frontIdx] :\(deque[frontIdx]!)")
}

print(count)