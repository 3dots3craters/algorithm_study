import Foundation

let N = readLine()!.split(separator: " ").map{Int($0)!}[0]
var firstLines: [[String]] = []
var secondLines: [[String]] = []

for _ in 0..<N {
	firstLines.append(readLine()!.map{String($0)}) 
}

for _ in 0..<N {
	secondLines.append(readLine()!.map{String($0)}) 
}

var output = ""

for i in 0..<N {
	for j in 0..<firstLines[i].count {
		if firstLines[i][j] != secondLines[i][2 * j] || firstLines[i][j] != secondLines[i][2 * j + 1] {
			output = "Not Eyfa"
			break;
		}
	}
}



if output.count == 0 {
	output = "Eyfa"	
}

print(output)