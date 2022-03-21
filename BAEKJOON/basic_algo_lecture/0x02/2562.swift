var max = 0
var maxIndex = -1

for i in 1..<10 {
	let num = Int(readLine()!)!
	if num > max {
		max = num
		maxIndex = i
	}
}
print("\(max)\n\(maxIndex)")