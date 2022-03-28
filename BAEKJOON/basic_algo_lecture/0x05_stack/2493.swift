let N = Int(readLine()!)!
var tops = readLine()!.split(separator: " ").map{Int($0)!}
var left: [Int] = []
var answer = Array(repeating: 0, count: N)

for i in stride(from: (N-1), to: -1, by: -1) {
	while !left.isEmpty && tops[left.last!] < tops[i] {
		let idx = left.removeLast()
		answer[idx] = i + 1
	}
	//left에 원소가 있는 경우, 지금 마주친 탑과 left에 있는 탑을 비교
	left.append(i)
	//left에 지금 마주친 탑을 넣음
}

print(answer.map{String($0)}.joined(separator: " "))
// print(answer.reversed(), separator: " ")