import Foundation

var bars = 0
var answer = 0
var prev: Character? = nil

for parenthesis in Array(readLine()!) {
	
	if parenthesis == "(" {
		bars += 1
	}
	else {
		bars -= 1
		if prev != parenthesis {
			answer += bars	
		}
		else {
			answer += 1
		}
	}
	prev = parenthesis	
}

print(answer)