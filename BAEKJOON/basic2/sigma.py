A, B = map(int, input().split())
print((abs(A - B) + 1) * (A + B) // 2)

# 참고자료: https://m.blog.naver.com/PostView.naver?isHttpsRedirect=true&blogId=junhyuk7272&logNo=221247061276
# 등차수열의 합
# 항의 개수가 n개인 등차수열의 첫째항을 a, 끝항을 l이라고 하면
# 제1항부터 제n항까지의 합은 n(a + l)/2
