/*

1. 문자열을 한 글자씩 순회하면서 찾는 방법
2. 정규식을 사용해서 찾는 방법

*/

// 1번 방법

let input = readLine()!.map{$0}
var words: [Character] = ["U", "C", "P", "C"];

for i in 0..<input.count {
	if input[i] == words[0] {
		words.remove(at: 0);
	}
	if words.count == 0 {
		break
	}
}

if words.count == 0 {
	print("I love UCPC")
}
else {
	print("I hate UCPC")
}