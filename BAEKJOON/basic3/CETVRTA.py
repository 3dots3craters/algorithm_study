stackX = []
stackY = []

for _ in range(3):
    X, Y = input().split()
    print(stackX, stackY)
    if stackX.count(X):
        stackX.remove(X)
        print("HI")
    else:
        stackX.append(X)
    if stackY.count(Y):
        stackY.remove(Y)
    else:
        stackY.append(Y)
print(stackX, stackY)
print(stackX[0], stackY[0])
