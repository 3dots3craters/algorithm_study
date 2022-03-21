var cards: [Int] = []

for i in 0..<21 {
	cards.append(i)
}

for _ in 0..<10 {
	let range = readLine()!.split(separator: " ").map{Int($0)!}
	for i in 0..<(range[1] - range[0] + 1)/2 {
		let tmp = cards[range[0] + i]
		cards[range[0] + i] = cards[range[1] - i]
		cards[range[1] - i] = tmp
	}
}

print(cards[1...20].map{String($0)}.joined(separator: " ")) 
