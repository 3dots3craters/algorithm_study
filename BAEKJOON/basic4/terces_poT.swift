while true {
	let input = readLine()!
	if input == "END" {
		break
	}
	var output = ""
	for char in input {
		output = String(char) + output
	}
	print(output)
}