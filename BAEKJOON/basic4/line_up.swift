/*

1. 학생들이 뽑은 번호를 하나씩 돌면서
	1) 배열에 학생을 하나씩 배치시킨다.
	2) 배열의 처음이나 중간에 학생을 위치시켜야 하는 경우
		 insert를 사용한다.

2. 배열을 문자열로 만들어 출력한다.

*/


let N = Int(readLine()!)!
let numbers = readLine()!.split(separator: " ").map{Int($0)!}
var array:[String] = []

for i in 0...(N - 1) {
	let index = array.count - numbers[i]
	array.insert(String(i + 1), at: index)
}


print(array.joined(separator: " "))

