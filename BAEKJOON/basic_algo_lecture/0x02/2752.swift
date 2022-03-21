var numbers = readLine()!.split(separator: " ").map{Int($0)!}
numbers.sort()
print(numbers.map{String($0)}.joined(separator: " "))