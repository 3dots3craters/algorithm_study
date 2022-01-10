info = [list(map(int, input().split())) for _ in range(3)]
for i in info:
    total = (i[3] - i[0]) * 3600 + (i[4] - i[1]) * 60 + i[5] - i[2]
    print(total//3600, (total % 3600)//60, (total % 3600) % 60)
