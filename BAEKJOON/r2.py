
[r1, s] = list(map(int, input().split()))
print(2*s - r1)

# map 함수의 첫 번째 매개변수로는 함수가 오고, 두 번째 매개변수로는 반복 가능한 자료형(리스트, 튜플 등)이 온다.
# map 함수의 반환 값은 map 객체이기 때문에 해당 자료형을 list나 tuple로 형 변환시켜줘야 한다.
# 참고자료: https://blockdmask.tistory.com/531


# a,b=input().split()
# a=int(a)
# b=int(b)
# print(2*b-a)
