var AB = readLine()!.split(separator: " ").map{Int($0)!}
AB.sort()
var num = AB[1] - AB[0] - 1
if num < 1 {
	num = 0
}
print(num)

if (num > 0) {
	for i in (AB[0] + 1)..<AB[1] {
		print(i, terminator: " ")
	}
}
