// 기존 풀이

let T = Int(readLine()!)!

for _ in 0..<T {
	let input = Array(readLine()!)
	// print(type(of: input[1]))
	var stack: [Character] = []

	for i in 0..<input.count {
		// print("stack :\(stack)")
		if !stack.isEmpty && stack.last! == "(" && input[i] == ")" {
			stack.removeLast()
		}
		else {
			stack.append(input[i])
		}
	}

	if stack.isEmpty {
		print("YES")
	}
	else {
		print("NO")
	}
}

// 스택을 굳이 쓰지 않아도 되는 문제였다.
// 플러스, 마이너스 연산만으로도 충분히 해결되는 문제.

// 새 풀이

main: for _ in 0..<Int(readLine()!)! {
	var stack = 0

	for parenthesis in Array(readLine()!) {
	
		stack += parenthesis == "(" ? 1 : -1
		if stack <= -1 {
			print("NO")
			continue main
		}
	}
	print(stack == 0 ? "YES" : "NO")
}
