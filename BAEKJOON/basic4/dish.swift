/*

1. 맨 첫번째 그릇의 방향과 높이를 각각 다른 변수에 저장한다.
	prev = "("
	height = 10

2. curr과 prev를 비교한다.
	if curr과 prev가 같다면 height += 5
	"" 다르다면 height += 10

3. height을 출력한다.

*/

// import Foundation

let line = readLine()!

var prev = line[line.startIndex]
print(line.startIndex)
var height = 10

for i in 1...(line.count - 1) {
	if line[line.index(line.startIndex, offsetBy: i)] == prev {
		height += 5
	} 
	else {
		height += 10
	}
	prev = line[line.index(line.startIndex, offsetBy: i)]
}

print(height)
