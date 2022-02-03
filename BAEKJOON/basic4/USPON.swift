
let N = Int(readLine()!)!
var roads = readLine()!.split(separator: " ").map{Int($0)!}

var uphillRoads: [String: Int] = ["start": roads[0], "end": roads[0]]
var answer: [Int] = []

var prev = 0
for curr in 0...(N - 1) {
	if roads[curr] > uphillRoads["end"]! {
		uphillRoads["end"] = roads[curr]
		if curr == (N - 1) {
			answer.append(uphillRoads["end"]! - uphillRoads["start"]!)
		}
	}
	else {
		answer.append(uphillRoads["end"]! - uphillRoads["start"]!)
		uphillRoads["start"] = roads[curr]
		uphillRoads["end"] = roads[curr]
	}
	// print("uphilRoads: ", uphillRoads)
}

print(answer.max()!)