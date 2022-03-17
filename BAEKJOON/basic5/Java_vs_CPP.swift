/*

Java 변수명
- 첫 단어는 소문자로
- 다음 단어부터는 첫 문자만 대문자로
- 모든 단어는 붙여쓰기

C++ 변수명
- 변수명에 소문자만 사용
- 단어와 단어를 구분하기 위해서 밑줄 사용


*/


func isJava(_ valueName: [String]) -> Bool {
	if Character(valueName[0]).isUppercase == true || valueName.contains("_") == true {
		return false
	}
	return true
}

func isCPP(_ valueName: [String]) -> Bool {
	let valueNameString : String = valueName.joined(separator: "")
	if valueNameString != valueNameString.lowercased() || valueName[0] == "_" || valueName[valueName.count - 1] == "_" {
		return false
	}
	for i in 0..<valueName.count {
		if i < valueName.count - 1 && valueName[i] == "_" && valueName[i + 1] == "_" {
			return false;
		}
	}
	return true
}


func toCPP(_ valueName: [String]) -> String {
	var valueArray: [String] = valueName.map{$0}
	for i in 0..<valueArray.count {
		if Character(valueArray[i]).isUppercase == true {
			let newElemnent = "_" + valueArray[i].lowercased()
			valueArray[i] = newElemnent;
		}
	}
	return valueArray.joined(separator: "")
}

func toJava(_ valueName: [String]) -> String {
	var valueArray: [String] = valueName.map{$0}
	for i in 0..<valueArray.count {
		if valueArray[i] == "_" {
			valueArray[i] = ""
			if i < valueArray.count - 1 {
				valueArray[i + 1] = valueArray[i + 1].uppercased()
			}
		}
	}
	return valueArray.joined(separator: "")
}

var valueName = readLine()!.unicodeScalars.map(String.init)

if isJava(valueName) {
	print(toCPP(valueName));
}
else if isCPP(valueName) {
	print(toJava(valueName));
}
else {
	print("Error!");
}
