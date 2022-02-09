/*

5kg를 i개 드는 경우
	3kg 몇 개를 들어야 18kg가 나오는지 체크
	18kg가 딱 나온다면 
		기존의 봉지 최소 개수와 지금의 총 봉지 개수를 비교하여
			더 개수가 적은 쪽을 봉지 최소 개수로 저장한다.

봉지 최소 개수 출력

*/

let N = Int(readLine()!)!
var result = -1

for i in 0..<(N / 3 + 1) {
	let left = N - (3 * i)
	if left % 5 == 0 {
		result = (left / 5 + i)
		break
	}
}

print(result)