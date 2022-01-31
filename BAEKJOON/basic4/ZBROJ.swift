/*

1. 입력값을 Array에 저장한다.
	 ex) input = ["11", "25"]

2. 입력값에 5 또는 6이 포함된 경우 
	 해당 값을 6 또는 5로 바꾸었을 때 나올 수 있는 경우의 수를
	 모두 저장한다.
	 ## replacingOccurrences 메서드를 사용하기 위해서는 Foundation을 import 해야 한다.
	 ex) input = [["11"], ["25", "26"]]

3. 가능한 합 중 최솟값, 최댓값을 구한다.
 	 ex) input[0].min + input[1].min, input[0].max + input[1].max
*/



import Foundation

let input = readLine()!.split(separator: " ")
var cases:[[Int]] = []

for numberString in input {
	var array:[Int] = []
	if numberString.contains("5") {
		array.append(Int(numberString.replacingOccurrences(of: "5", with: "6"))!)
	}
	if numberString.contains("6") {
		array.append(Int(numberString.replacingOccurrences(of: "6", with: "5"))!)
	}
	array.append(Int(numberString)!)
	cases.append(array)
}

print(cases[0].min()! + cases[1].min()!, cases[0].max()! + cases[1].max()!)






