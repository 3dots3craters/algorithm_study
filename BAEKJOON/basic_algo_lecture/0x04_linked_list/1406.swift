var leftStack = Array(readLine()!)
var rightStack: [Character] = []
let M = Int(readLine()!)!

for _ in 0..<M {
	let command = readLine()!
	switch command {
	case "L":
		if !leftStack.isEmpty {
			rightStack.append(leftStack.removeLast())
		}
	case "D":
		if !rightStack.isEmpty {
			leftStack.append(rightStack.removeLast())
		}
	case "B":
		if !leftStack.isEmpty {
			leftStack.removeLast()
		}
	default:
		leftStack.append(command.last!)
	}
}

print(String(leftStack + rightStack.reversed()))