let N = Int(readLine()!)!
let numbers = readLine()!.split(separator: " ").map{Int($0)!}
let v = Int(readLine()!)!

let answer = numbers.filter{$0 == v}.count
print(answer)