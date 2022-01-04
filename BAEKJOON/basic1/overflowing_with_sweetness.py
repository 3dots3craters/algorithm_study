aX, aY, aZ = map(int, input().split())
cX, cY, cZ = map(int, input().split())
bX = cX - aZ
bY = cY // aY
bZ = cZ - aX
print(bX, bY, bZ)
