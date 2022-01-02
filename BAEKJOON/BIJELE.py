answer = []
origin = [1, 1, 2, 2, 2, 8]
inputs = list(map(int, input().split()))

for i in range(6):
    answer.append(str(origin[i] - inputs[i]))

print(' '.join(answer))


# '구분자'.join(리스트) => "원소1(구분자)원소2(구분자)..."
# 참고자료: https://blockdmask.tistory.com/468

# chess = [1,1,2,2,2,8]
# a = list(map(int,input().split()))
# for i in range(6):
#     print(chess[i]-a[i],end=" ")


# 달성하고 싶은 목표:
# 일주일에 투자할 수 있는 시간: 10시간
