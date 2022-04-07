let input = readLine()!.split(separator: "-");
var answer = 0;

for i in 0..<input.count {
	let numbers = input[i].split(separator: "+").map{Int($0)!};
	let sum = numbers.reduce(0, +);
	if i == 0 {
		answer += sum;
	}
	else {
		answer -= sum;
	}
}

print(answer)