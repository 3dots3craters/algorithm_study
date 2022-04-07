var answer: String = ""
let dictionary: [String : String] = [")": "(", "]": "["]

main: while true {
	let input = Array(readLine()!).map{String($0)}
	if input.count == 1 && input[0] == "." {
		break
	}
	var parenthesis: [String] = []
	for char in input {
		switch char {
		case "(", "[": 
			parenthesis.append(char)
		case ")", "]":
			if !parenthesis.isEmpty && parenthesis.last! == dictionary[char] {
				parenthesis.removeLast()
			}
			else {
				answer += "no\n"
				continue main
			}
		default:
			continue
		}
	}
	if !parenthesis.isEmpty {
		answer += "no\n"
	} else {
		answer += "yes\n"
	}
}

print(answer)