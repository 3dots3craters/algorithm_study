
let X = readLine()!.split(separator: " ").map{Int($0)!}[1]
let numbers = readLine()!.split(separator: " ").map{Int($0)!}
var answer: [String] = []

for i in 0..<numbers.count {
	if numbers[i] < X {
		answer.append(String(numbers[i]))
	}
}

print(answer.joined(separator: " "))