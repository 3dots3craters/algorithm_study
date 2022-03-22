// import Foundation


let n = Int(readLine()!)!
let numbers = readLine()!.split(separator: " ").map{Int($0)!}
let sum = Int(readLine()!)!

var tmp = Array(repeating: 0, count: 2000001)
var count = 0

numbers.sort()

for i in 0..<n {
	if numbers[i] > sum {
		break
	}
	else if tmp[sum - numbers[i]] != 0 {
		count += 1
	}
	else if tmp[numbers[i]] == 0 {
		tmp[numbers[i]] = 1;
	}
}

print(count)

/*

let n = Int(readLine()!)!
var numbers = readLine()!.split(separator: " ").map{Int($0)!}
let sum = Int(readLine()!)!

var count = 0
var start = 0
var end = n - 1

numbers.sort()

while start != end {
	if numbers[start] + numbers[end] == sum {
		count += 1
		start += 1
	}
	else if numbers[start] + numbers[end] > sum {
		end -= 1
	}
	else {
		start += 1
	}
}

print(count)
*/