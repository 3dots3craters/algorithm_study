let numbers = readLine()!.split(separator: " ").map{Int($0)!}

print(numbers[0]+numbers[1])
print(numbers[0]-numbers[1])
print(numbers[0]*numbers[1])
print(numbers[0]/numbers[1])
print(numbers[0]%numbers[1])