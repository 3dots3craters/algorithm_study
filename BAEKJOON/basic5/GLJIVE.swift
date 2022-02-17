var answer = 0
var prevSum = 0
let hundred = 100

for _ in 1...10 {
	let num = Int(readLine()!)!
	let currSum = prevSum + num
	if abs(currSum - 100) <= abs(prevSum - 100) {
		answer = currSum
	}
	else {
		break
	}
	prevSum = currSum
}

print(answer)