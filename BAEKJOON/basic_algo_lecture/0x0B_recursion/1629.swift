let numbers = readLine()!.split(separator: " ").map{Int(String($0))!}
let (A, B, C) = (numbers[0], numbers[1], numbers[2])

func recursion(_ numb: Int) -> Int {
	if numb == 0 {
		return 1
	}
	if numb % 2 == 0 {
		let tmp = recursion(numb/2)
		return ((tmp % C) * tmp) % C
	} else {
		let tmp = recursion((numb - 1)/2)
		return ((((tmp % C) * tmp) % C) * A) % C
	}
}

print(recursion(B))
