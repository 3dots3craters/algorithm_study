import Foundation

let M = Double(readLine()!)!
let N = Double(readLine()!)!

let start = ceil(sqrt(M))
let end = floor(sqrt(N))

if start > end {
	print(-1)
}
else {
	var min = 0
	var sum = 0

	for num in Int(start)...Int(end) {
		if sum == 0 {
			min = Int(pow(Double(num), 2))
		}
		sum += Int(pow(Double(num), 2))
	}

	print(sum)
	print(min)
}
