notes = list(map(int, input().split()))
notesLen = len(notes)
count = 0


for i in range(notesLen):
    if i + 1 == notes[i]:
        count += 1
    elif notesLen - i == notes[i]:
        count -= 1

if count == 8:
    print("ascending")
elif count == -8:
    print("descending")
else:
    print("mixed")

# 출처: https://www.acmicpc.net/source/37946482
# import sys
#
# arr = list(map(int, sys.stdin.readline().split()))
#
# asc_list = sorted(arr)
# dsc_list = sorted(arr, reverse=True)
#
# if arr == asc_list:
#     print('ascending')
# elif arr == dsc_list:
#     print('descending')
# else:
#     print('mixed')


# 출처: https://www.acmicpc.net/source/37932034
# #ascending을 리스트에 저장
# b=[1, 2, 3, 4, 5, 6, 7, 8]
# #descending을 리스트에 저장
# c=[8, 7, 6, 5, 4, 3, 2, 1]
#
#
# #입력받을 숫자를 리스트에 저장
# a= list(map(int,input().split()))
#
#
# #if elif else문으로 구별 후에 출력
# if a ==b:
#     print("ascending")
# elif a ==c:
#     print("descending")
# else:
#     print("mixed")
