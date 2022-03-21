var numbers = readLine()!.split(separator: " ").map{Int($0)!}
if numbers[0] == numbers[1] && numbers[1] == numbers[2] {
	print(10000 + (numbers[0] * 1000))
}
else if numbers[0] == numbers[1] || numbers[1] == numbers[2] {
	print(1000 + (numbers[1] * 100))
}
else if numbers[0] == numbers[2] {
	print(1000 + (numbers[0] * 100))
}
else {
	numbers.sort()
	print(numbers[2] * 100)
}
