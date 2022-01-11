numbers = input()
try:
    idx = numbers.index('0')
    if idx == 1:
        print(int(numbers[0:2]) + int(numbers[1:]))
    else:
        print(int(numbers[0]) + int(numbers[1:]))
except ValueError:
    print(int(numbers[0]) + int(numbers[1]))

# 출처: https://www.acmicpc.net/source/37299237
# a=input();print(int(a[:2])+int(a[2:]) if a[1]=="0" else int(a[0])+int(a[1:]))
