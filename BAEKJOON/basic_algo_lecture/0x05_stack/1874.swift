let N = Int(readLine()!)!

var count = 1
var stack: [Int] = []
var answer: [String] = []
var hasAnswer = true

for _ in 0..<N {
	let n = Int(readLine()!)!
	while count <= n {
		stack.append(count)
		answer.append("+")
		count += 1
	}
	if n == stack.last! {
		stack.removeLast()
		answer.append("-")
	}
	else {
		hasAnswer = false
	}
}

if hasAnswer {
	print(answer.joined(separator: "\n"))
}
else {
	print("NO")
}