let N = Int(readLine()!)!

for i in 0..<N {
	print(String(repeating: " ", count: i) + String(repeating: "*", count: 2*N - (2*i) - 1))
}