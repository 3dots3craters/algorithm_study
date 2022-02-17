let N = Int(readLine()!)!
var answer = 0

for num in 1..<N {
	answer += num * (N + 1)
}

print(answer)