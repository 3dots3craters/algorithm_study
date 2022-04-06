let N = Int(readLine()!)!
var count = 0

for _ in 0..<N {
	var stack: [Character] = []
	for char in String(readLine()!) {
		if !stack.isEmpty && stack.last! == char {
			stack.removeLast()
		}
		else {
			stack.append(char)	
		}
	}
	if stack.isEmpty {
		count += 1
	}
}

print(count)