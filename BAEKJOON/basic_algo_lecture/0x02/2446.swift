let N = Int(readLine()!)!

for i in 0..<N-1 {
	print(String(repeating: " ", count: i) + String(repeating: "*", count: 2*N - 2*i - 1))
}

for i in 0..<N {
	print(String(repeating: " ", count: N - i - 1) + String(repeating: "*", count: 2*i + 1))
}