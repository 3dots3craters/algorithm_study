let N = Int(readLine()!)!

for _ in 0..<N {
	let input = Array(readLine()!)
	// print(type(of: input[0])) // Character
	var left: [Character] = [], right: [Character] = []
	for letter in input {
		switch letter {
		case "<":
			if !left.isEmpty {
				right.append(left.removeLast())
			}
		case "-":
			if !left.isEmpty {
				left.removeLast()
			}
		case ">":
			if !right.isEmpty {
				left.append(right.removeLast())
			}
		default:
			left.append(letter)
		}
	}
	print(String(left + right.reversed()))
}

