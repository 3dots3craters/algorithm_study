numbers = list(map(int, input().split()))
count = [0] * 7
money = 0

for numb in numbers:
    count[numb] += 1
if 3 in count:
    money += 10000 + numbers[0] * 1000
elif 2 in count:
    money += 1000 + count.index(2) * 100
else:
    money += max(numbers) * 100
print(money)

# 참고 자료
# https://application-s.tistory.com/42(리스트 초기화)
# https://posnopi13.tistory.com/39(리스트에서 특정 값 존재 여부 판단하기)
# https://dojang.io/mod/page/view.php?id=1321#:~:text=%EB%8D%94%20%EA%B0%84%EB%8B%A8%ED%95%9C%20%EB%B0%A9%EB%B2%95%EC%9D%B4%20%EC%9E%88%EC%8A%B5%EB%8B%88%EB%8B%A4,%ED%95%A8%EC%88%98%EB%A5%BC%20%EC%82%AC%EC%9A%A9%ED%95%98%EB%A9%B4%20%EB%90%A9%EB%8B%88%EB%8B%A4.&text=min%EC%9D%80%20%EB%A6%AC%EC%8A%A4%ED%8A%B8(%ED%8A%9C%ED%94%8C)%EC%97%90%EC%84%9C,%EA%B0%80%EC%9E%A5%20%ED%81%B0%20%EA%B0%92%EC%9D%84%20%EA%B5%AC%ED%95%A9%EB%8B%88%EB%8B%A4.(리스트에서 제일 큰 값 찾기)

# 출처: https://www.acmicpc.net/source/37136956
# temp_list = list(map(int,input().split()))
# temp_set = set(temp_list)
# temp_list.sort()
#
# if len(temp_set) ==1:
#     print(temp_list[0]*1000 + 10000)
# elif len(temp_set) == 2:
#
#     print(temp_list[1]*100 + 1000)
# else:
#     print(temp_list[2]*100)
