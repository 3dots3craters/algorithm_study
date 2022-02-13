import Foundation

let NK = readLine()!.split(separator: " ").map{Int($0)!}
var answer = "<"

var people = Array(repeating: 0, count: NK[0]);

for (index, _) in people.enumerated() {
	people[index] = index + 1;
}

var index = NK[1] - 1
while !people.isEmpty {
	answer += String(people[index])
	if index == 0 {
		people.removeFirst()
	}
	else if index == people.count - 1 {
		people.removeLast()
	}
	else {
		people = [Int](people[(index + 1)...(people.count - 1)]) + [Int](people[0...(index - 1)])
	}

	if (people.isEmpty) {
		answer += ">"
		break
	}
	else {
		answer += ", "
	}
	if NK[1] > people.count {
		index = (NK[1] % people.count) - 1
		if index == -1 {
			index = people.count - 1
		}
	}
	else {
		index = NK[1] - 1
	}
	
}

print(answer)