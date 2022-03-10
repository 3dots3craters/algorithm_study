/*

서로 인접한 좌석 사이에는 컵홀더가 하나씩 있고, 양 끝 좌석에는 컵홀더가 하나씩 더 있다. 
또, 이 극장에는 커플석이 있다. 커플석 사이에는 컵홀더가 없다.

"S", "LL" 로 구성된 한 줄

*/

/*
let N = Int(readLine()!)!
let seats = readLine()!.map{$0}
var index = 0
var cupHolderCount = 1

while index < seats.count {
	if (seats[index] == "S") {
		cupHolderCount += 1
		index += 1
	}
	else {
		cupHolderCount += 1
		index += 2
	}
}

if cupHolderCount > N {
	print(N)
}
else {
	print(cupHolderCount)
}
*/

/*

S, L 개수만 가지고도 좀 더 쉽게 계산 할 수 있는 방법

*/
import Foundation

let N = Int(readLine()!)!
let seats = readLine()!
let SCount = seats.components(separatedBy: "S").count - 1
let LLCount = seats.components(separatedBy: "LL").count - 1
var cupHolderCount = SCount + LLCount + 1

if cupHolderCount > N {
	print(N)
}
else {
	print(cupHolderCount)
}