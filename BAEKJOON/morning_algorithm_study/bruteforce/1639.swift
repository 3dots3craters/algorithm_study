let input = Array(readLine()!).map{Int(String($0))!}
var maxLen = 0

for i in 0..<(input.count - 1) { // 시작점
    let range = (1...((input.count - i)/2))
    for subLen in range {
        let front = input[i..<(subLen + i)]
        var end: ArraySlice<Int>
        if subLen + i == 2 * subLen + i {
            end = [input[subLen + 1]]
        } else {
            end = input[(subLen + i)..<(2 * subLen + i)]
        }
        if front.reduce(0, +) == end.reduce(0, +) {
            maxLen = max(maxLen, 2 * subLen)
        }
    }
}

print(maxLen)