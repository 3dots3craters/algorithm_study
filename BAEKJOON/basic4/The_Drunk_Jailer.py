T = int(input())
for _ in range(T):
    N = int(input())
    Rooms = [False] * (N + 1)  # False = 잠김
    for k in range(1, N + 1, 1):
        if k % 2:
            for n in range(k, N + 1, k):
                Rooms[n] = not Rooms[n]
        else:
            for m in range(k, N + 1, k):
                Rooms[m] = not Rooms[m]
    print(Rooms.count(True))
