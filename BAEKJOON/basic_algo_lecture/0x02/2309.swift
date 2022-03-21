import Foundation

var dwarfs: [Int] = []

for _ in 0..<9 {
	let dwarf = Int(readLine()!)!
	dwarfs.append(dwarf)
}

var allSum = dwarfs.reduce(0, +)

outerLoop: for i in 0..<9 {
	for j in (i + 1)..<9 {
		if allSum - dwarfs[i] - dwarfs[j] == 100 {
			dwarfs.remove(at: j)
			dwarfs.remove(at: i)
			break outerLoop
		}		
	}
}

for dwarf in dwarfs.sorted() {
	print(dwarf)
}