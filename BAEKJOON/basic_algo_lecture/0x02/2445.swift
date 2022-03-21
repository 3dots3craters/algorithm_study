let N = Int(readLine()!)!

for i in 1..<(N+1) {
	print(String(repeating: "*", count: i) + String(repeating: " ", count: 2*N - 2*i) + String(repeating: "*", count: i))
}

for i in 1..<N {
	print(String(repeating: "*", count: N - i) + String(repeating: " ", count: 2*i) + String(repeating: "*", count: N - i))
}