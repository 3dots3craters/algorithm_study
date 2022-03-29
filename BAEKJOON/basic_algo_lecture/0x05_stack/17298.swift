let N = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map{Int($0)!}

var stack: [Int] = [] 
var NGE = Array(repeating: -1, count: N)

for idx in 0..<N {
	while !stack.isEmpty && array[stack.last!] < array[idx] {
		let index = stack.popLast()!
		NGE[index] = array[idx]
	}
	stack.append(idx)
}

print(NGE.map{String($0)}.joined(separator: " "))
