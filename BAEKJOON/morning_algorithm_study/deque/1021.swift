let input = readLine()!.split(separator: " ").map{Int($0)!}
let N = input[0], M = input[1]
let positions = readLine()!.split(separator: " ").map{Int($0)!}

var deque = Array(-(10*N)...(10*N))
var front = 10*N + 1, back = 11*N, count = 0

for i in 0..<M {
	// print("deque[front]: \(deque[front]), deque[back]: \(deque[back]), count: \(count)")
	let originPos = positions[i]
	while originPos != deque[front] {
		let currPos = deque[front...back].firstIndex(of: originPos)!
		// print("currPos: \(currPos), front: \(front), back: \(back)")
		if currPos - front <= back - currPos { // 왼쪽으로 이동시키는 경우
				// print("Hello")
				back += 1
				deque[back] = deque[front]	
				front += 1
		} else {
				// print("Bye")
				front -= 1
				deque[front] = deque[back]
				back -= 1
		}
		count += 1
	}
	if originPos == deque[front] {
		front += 1
	}
}

print(count)

