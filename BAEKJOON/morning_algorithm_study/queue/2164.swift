let N = Int(readLine()!)!
var cards = Array(1...N)
var front = 0, back = N - 1

while front != back {
	cards.append(cards[front + 1])
	front += 2
	back += 1
}

print(cards[front])