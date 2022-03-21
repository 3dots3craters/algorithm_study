var odd: [Int] = []

for _ in 0..<7 {
	let number = Int(readLine()!)!
	if number % 2 == 1 {
		odd.append(number)
	}
}

if odd.isEmpty {
	print("-1")
}
else {
	print(odd.reduce(0, +))
	odd.sort()
	print(odd[0])
}

