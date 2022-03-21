let N = Int(readLine()!)!

for i in 1..<(N+1) {
	print(String(repeating: " ", count: N - i) + String(repeating: "*", count: i))
}