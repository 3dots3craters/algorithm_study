let N = Int(readLine()!)!
let calls = readLine()!.split(separator: " ").map{Int($0)!}

let y = calls.map{($0/30) * 10 + 10}.reduce(0, +)
let m = calls.map{($0/60) * 15 + 15}.reduce(0, +)

if y == m {
	print("Y M \(y)")
}
else if y > m {
	print("M \(m)")
}
else {
	print("Y \(y)")
}