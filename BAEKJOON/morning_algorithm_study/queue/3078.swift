let input = readLine()!.split(separator: " ").map{Int($0)!}
let N = input[0], K = input[1]
var queue: [Int] = [] // 원소는 이름의 글자수
var students: [Int:Int] = [:] // 키는 이름의 글자수, 값은 사람수
var front: Int
var count = 0

for i in 0..<N {
	front = i > K ? i - K - 1 : -1;
	let nameLen = readLine()!.count

	if !queue.isEmpty {
		if front >= 0 {
			students[queue[front]]! -= 1			
		}
		if students[nameLen] != nil { 
			count += students[nameLen]!
		}
		// count += queue[first..<i].filter{$0 == nameLen}.count
	}
	queue.append(nameLen)
	if students[nameLen] != nil {
		students[nameLen]! += 1
	} else {
		students[nameLen] = 1
	}
}

print(count)