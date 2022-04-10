import Foundation

let N = Int(readLine()!)!
var people = Array(1...N)
var level:Double = 1

while people.count > 1 {
	if level == 1 {
		people.removeFirst()
	} else {
		let count = Int(pow(level, 3) - 1)
		let index = count % people.count
		// print("people: \(people), index + 1 : \(index + 1), people.count: \(people.count)")
		if index + 1 == people.count {
			people.removeLast()
		} else {
			people = Array(people[(index + 1)..<people.count] + people[0..<index])
		}
	}
	level += 1
}

print(people[0])