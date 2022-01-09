month, day = [int(input()) for _ in range(2)]
if month < 2 or (month == 2 and day < 18):
    print("Before")
elif month > 2 or (month == 2 and day > 18):
    print("After")
else:
    print("Special")
