var numbers: [Int] = []

for _ in 0..<5 {
	let number = Int(readLine()!)!
	numbers.append(number)
}

numbers.sort()
print(numbers.reduce(0, +) / 5)
print(numbers[2])