let N = Int(readLine()!)!
var queue: [Int] = []
var answer: String = ""

for num in 1...N {
	queue.append(num)
}

while queue.count > 1 {
	answer += "\(queue.removeFirst()) "
	queue.append(queue.removeFirst())
}

answer += "\(queue[0])"

print(answer)