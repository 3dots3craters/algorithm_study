var someOptional: Int?
someOptional = 3

var itsNil: Int?
itsNil = 2

var count = 0

while var constant = someOptional, let maybe = itsNil, count < 3 {
	constant = 10
	print("\(constant) is constant, \(maybe) is maybe ")
	count += 1
}

// print("\(constant) is constant")

// if someOptional! > 2 , itsNil! < 4 {
// 	print("Yes")
// } else {
// 	print("No")
// }