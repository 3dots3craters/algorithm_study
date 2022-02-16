import Foundation

let N = Int(readLine()!)!
var room: [[String]] = Array(repeating: [], count: N)
var width = 0
var length = 0

for i in 0..<N {
	room[i] = readLine()!.unicodeScalars.map(String.init)
	var prev = ""
	for j in 0..<N {
		if prev == room[i][j] && prev == "." {
			width += 1
			prev = "O"
		}
		else if room[i][j] != "." {
			prev = room[i][j]
		}
		else if room[i][j] == "." && prev != "O" {
			prev = room[i][j]
		}
	}
}


for i in 0..<N {
	var prev = ""
	for j in 0..<N {
		if prev == room[j][i] && prev == "." {
			length += 1
			prev = "O"
		}
		else if room[j][i] != "." {
			prev = room[j][i]
		}
		else if room[j][i] == "." && prev != "O" {
			prev = room[j][i]
		}
	}
}

print(width, length)