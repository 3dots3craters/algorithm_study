let N = Int(readLine()!)!

var deque: [Int: Int] = [:]
var front = 0, back = -1, size = 0
var output: String = ""

for _ in 1...N {
	let command = readLine()!
	switch command {
	case "pop_front" :
		if size == 0 {
			output += "-1\n"
		} else {
			output += "\(deque[front]!)\n"
			front += 1
			size -= 1
		}
	case "pop_back" :
		if size == 0 {
			output += "-1\n"
		} else {
			output += "\(deque[back]!)\n"
			back -= 1
			size -= 1
		}
	case "size" :
		output += "\(size)\n"
	case "empty" :
		output += size == 0 ? "1\n" : "0\n"
	case "front" :
		output += size == 0 ? "-1\n" : "\(deque[front]!)\n"
	case "back" :
		output += size == 0 ? "-1\n" : "\(deque[back]!)\n"	
	default:
		let cmd = command.split(separator: " ")
		let num = Int(cmd[1])!
		if cmd[0] == "push_front" {
			front -= 1
			deque[front] = num			
			size += 1
		} else {
			back += 1
			deque[back] = num			
			size += 1
		}
	}
}

print(output)