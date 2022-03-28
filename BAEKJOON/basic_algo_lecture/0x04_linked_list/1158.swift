let input = readLine()!.split(separator: " ").map{Int($0)!}
let N = input[0]
let K = input[1]

var left: [Int] = []
var answer: [Int] = []
var index = 0

for num in 1..<(N+1) {
	left.append(num)
}

while !left.isEmpty {
	if left.count >= K {
		index = K - 1
	}
	else if left.count == 1 {
		index = 0
	}
	else {
		index = (K - 1) % left.count
	}
	// print("left: \(left), index: \(index)")
	answer.append(left.remove(at: index))
	left = [Int](left[index..<left.count] + left[0..<index])
}

print("<\(answer.map{String($0)}.joined(separator: ", "))>")