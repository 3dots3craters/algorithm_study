let X = Int(readLine()!)!

var n = 0
var min = 1

while min <= X {
	n += 1
	min = n * (n + 1) / 2 + 1
}

if n % 2 == 0 {
	print("\(n + 1 - (min - X))/\(min - X)")
}
else {
	print("\(min - X)/\(n + 1 - (min - X))")
}