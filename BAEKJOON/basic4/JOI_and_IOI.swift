/// JOI에 해당하는 문자열을 찾는다.
/// J를 A로 바꾼다. 
/// 위의 과정 반복

/// IOI에 해당하는 문자열을 찾는다.
/// 맨 앞의 I를 A로 바꾼다. 
/// 위의 과정 반복

import Foundation

var str = readLine()!

func count(substr: String) -> Int {
	var times = 0
	while let range = str.range(of: substr) {
		let dist = str.distance(from: str.startIndex, to: range.lowerBound)
		let index = str.index(str.startIndex, offsetBy: dist)
		str.remove(at: index)
		str.insert("A", at: index)
		times += 1
	}
	return times;
}

print(count(substr: "JOI"))
print(count(substr: "IOI"))
