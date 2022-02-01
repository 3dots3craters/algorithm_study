// import Foundation

let reversedNumbers = readLine()!.split(separator: " ").map{Int(String($0.reversed()))!}

print(Int(String(String(reversedNumbers[0] + reversedNumbers[1]).reversed()))!)



// 출처: https://www.acmicpc.net/source/27185305
// import Foundation
//
// func RevX(_ str: String) -> Int {
//     return Int(String(str.reversed()))!
// }
//
// let line = readLine()!.split(separator: " ").map { String($0) }
// print(RevX(String(RevX(line[0]) + RevX(line[1]))))