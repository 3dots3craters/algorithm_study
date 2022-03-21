for _ in 0..<3 {
	let zeroCount = readLine()!.split(separator: " ").map{Int($0)!}.filter{$0 == 0}.count
	switch zeroCount {
	case 1:
		print("A")
	case 2:
		print("B")
	case 3:
		print("C")
	case 4:
		print("D")
	default:
		print("E")
	}
}