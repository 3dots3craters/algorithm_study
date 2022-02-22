import Foundation

var N = Double(readLine()!)!

for i in 1...8 {
	let j = Double(i)
	if N > pow(10, j) {
		N = round(N / pow(10, j)) * pow(10, j)
	}
	else {
		break
	}
}

print(Int(N))