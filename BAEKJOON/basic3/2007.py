x, y = map(int, input().split())
pastDays = y - 1
for month in range(1, x, 1):
    if month == 2:
        pastDays += 28
    elif month == 4 or month == 6 or month == 9 or month == 11:
        pastDays += 30
    else:
        pastDays += 31

day = pastDays % 7
output = ""

if day == 0:
    output = "MON"
elif day == 1:
    output = "TUE"
elif day == 2:
    output = "WED"
elif day == 3:
    output = "THU"
elif day == 4:
    output = "FRI"
elif day == 5:
    output = "SAT"
else:
    output = "SUN"

print(output)
