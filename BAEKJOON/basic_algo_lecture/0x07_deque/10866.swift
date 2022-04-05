let N = Int(readLine()!)!
var answer: String = ""
var deque: [Int: Int] = [:]
var frontIdx = 0
var backIdx = -1
var size = 0

for _ in 0..<N {
	let command = readLine()!
	// print("frontIdx: \(frontIdx), backIdx: \(backIdx)")
	switch command {
	case "pop_front":
		if frontIdx > backIdx {
			answer += "-1\n"
		} else {
			answer += "\(deque[frontIdx]!)\n"
			frontIdx += 1
			size -= 1
		}
	case "pop_back":
		if frontIdx > backIdx {
			answer += "-1\n"
		} else {
			answer += "\(deque[backIdx]!)\n"
			backIdx -= 1
			size -= 1
		}
	case "size":
		answer += "\(size)\n"
	case "empty":
		answer += frontIdx > backIdx ? "1\n" : "0\n"
	case "front":
		answer += frontIdx > backIdx ? "-1\n" : "\(deque[frontIdx]!)\n"
	case "back":
		answer += frontIdx > backIdx ? "-1\n" : "\(deque[backIdx]!)\n"
	default:
		let cmd = command.split(separator: " ")
		if cmd[0] == "push_front" {
			frontIdx -= 1
			size += 1
			deque[frontIdx] = Int(cmd[1])!
		}
		else {
			backIdx += 1
			size += 1
			deque[backIdx] = Int(cmd[1])!
		}
	}
}

print(answer)