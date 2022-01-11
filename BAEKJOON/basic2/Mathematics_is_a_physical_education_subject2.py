n = int(input())
num = n % 8
if num == 1:
    print(1)
elif num == 0 or num == 2:
    print(2)
elif num == 3 or num == 7:
    print(3)
elif num == 4 or num == 6:
    print(4)
else:
    print(5)
