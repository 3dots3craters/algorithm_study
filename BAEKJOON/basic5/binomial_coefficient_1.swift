let NK = readLine()!.split(separator: " ").map{Int($0)!}
var answer = 1

if NK[0] == NK[1] {
	print(1)
}
else {
for N in (NK[1]+1)...NK[0] {
	answer *= N
}

for K in 1...(NK[0]-NK[1]) {
	answer /= K
}
	print(answer)
}