# 규칙
# 1에서 최소 A개의 방을 지나서 갈 수 있는 N번 방
# A N
# 1 1      => 1개
# 2 2~7		 => 6개
# 3 8~19   => 12개
# 4 20~37  => 18개
# 5 38~61  => 24개
# ----------> 6의 배수(1 제외)

N = int(input())
Index = 0
Count = 1

while(1):
    Count += 6 * Index
    Index += 1
    if Count >= N:
        print(Index)
        break


# 출처: https://www.acmicpc.net/source/37949833
# N = int(input())
#
# i=0
# start = 1
# while 1:
#     start = start + i*6
#     i+=1
#     if(start >=N):
#         print(i)
#         break
