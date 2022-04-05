var queue: [String] = []
var output: [String] = []

for _ in 1...Int(readLine()!)! {
	let command = readLine()!
	switch command {
	case "pop":
		if queue.isEmpty {
			output.append("-1")
		} else {
			output.append(queue.removeFirst())
		}
	case "size":
		output.append(String(queue.count))
	case "empty":
		if queue.isEmpty {
			output.append("1")
		}
		else {
			output.append("0")
		}
	case "front":
		if queue.isEmpty {
			output.append("-1")
		}
		else {
			output.append(queue.first!)
		}
	case "back":
		if queue.isEmpty {
			output.append("-1")
		}
		else {
			output.append(queue.last!)
		}
	default:
		let number = String(command.split(separator: " ")[1])
		queue.append(number)
	}
}

print(output.joined(separator: "\n"))