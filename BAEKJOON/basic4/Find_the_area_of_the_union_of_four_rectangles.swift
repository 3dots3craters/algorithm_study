/// Blocks store the number of cells included in the area of four rectangles
var blocks = Set<Int>()

/// Get input for lines
for _ in 1...4 {

	/// rectangle: [Int] = [x1, y1, x2, y2]
	///
	/// x1 is the x-coordinate of the lower left vertex
	/// y1 is the y-coordinate of the lower left vertex 
	/// x2 is the x-coordinate of the upper right vertex
	/// y2 is the y-coordinate of the upper right vertex
	///
	let rectangle = readLine()!.split(separator: " ").map{Int($0)!}
	
	for y in rectangle[1]...(rectangle[3] - 1) {
		for x in (rectangle[0] + 1)...rectangle[2] {
			
			/// 100 * y + x is the number of cell
			///
			/// Blocks shows duplicate elements only once
			blocks.insert(100 * (y) + x)
		}
	}
}

print(blocks.count)