# 내 코드
A, B, C = map(int, input().split())

# 손익분기점이 존재하지 않는 경우
if B >= C:
    print(-1)
else:
    # A + Bx < Cx
    # A < (C - B)x
    # A/(C - B) < x
    print((A // (C - B)) + 1)

# 결과: 메모리 30860KB	시간 68ms
# 주석 지우고 냈더니 메모리랑 시간이 더 늘어나는 건 뭘까?
